package §'!;§
{
   import §<!B§.*;
   
   public class b2DynamicTreeBroadPhase implements §1!p§
   {
       
      
      private var §3O§:b2DynamicTree;
      
      private var §&!2§:int;
      
      private var §%W§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§3O§ = new b2DynamicTree();
         this.§%W§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §<!U§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§3O§.§<!U§(param1,param2);
         ++this.§&!2§;
         this.§'!@§(_loc3_);
         return _loc3_;
      }
      
      public function §`!A§(param1:*) : void
      {
         this.§-!^§(param1);
         --this.§&!2§;
         this.§3O§.§`!A§(param1);
      }
      
      public function §?"§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§3O§.§?"§(param1,param2,param3))
         {
            this.§'!@§(param1);
         }
      }
      
      public function §,!r§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§3O§.§+,§(param1);
         var _loc4_:b2AABB = this.§3O§.§+,§(param2);
         return _loc3_.§,!r§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§3O§.GetUserData(param1);
      }
      
      public function §+,§(param1:*) : b2AABB
      {
         return this.§3O§.§+,§(param1);
      }
      
      public function §8!d§() : int
      {
         return this.§&!2§;
      }
      
      public function §-!g§(param1:Function) : void
      {
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         var callback:Function = param1;
         this.m_pairCount = 0;
         for each(queryProxy in this.§%W§)
         {
            var QueryCallback:Function = function(param1:b2DynamicTreeNode):Boolean
            {
               if(param1 == queryProxy)
               {
                  return true;
               }
               if(m_pairCount == m_pairBuffer.length)
               {
                  m_pairBuffer[m_pairCount] = new b2DynamicTreePair();
               }
               var _loc2_:b2DynamicTreePair = m_pairBuffer[m_pairCount];
               _loc2_.§4M§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§1!]§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§3O§.§+,§(queryProxy);
            this.§3O§.§>x§(QueryCallback,fatAABB);
         }
         this.§%W§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§3O§.GetUserData(primaryPair.§4M§);
            userDataB = this.§3O§.GetUserData(primaryPair.§1!]§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§4M§ != primaryPair.§4M§ || pair.§1!]§ != primaryPair.§1!]§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §>x§(param1:Function, param2:b2AABB) : void
      {
         this.§3O§.§>x§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§3O§.RayCast(param1,param2);
      }
      
      public function §1K§() : void
      {
      }
      
      public function §set §(param1:int) : void
      {
         this.§3O§.§set §(param1);
      }
      
      private function §'!@§(param1:b2DynamicTreeNode) : void
      {
         this.§%W§[this.§%W§.length] = param1;
      }
      
      private function §-!^§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§%W§.indexOf(param1);
         this.§%W§.splice(_loc2_,1);
      }
      
      private function §^!f§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
