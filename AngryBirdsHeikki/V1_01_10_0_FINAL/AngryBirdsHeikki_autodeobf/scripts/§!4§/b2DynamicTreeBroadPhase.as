package §!4§
{
   import §6A§.*;
   
   public class b2DynamicTreeBroadPhase implements §!s§
   {
       
      
      private var §4!G§:b2DynamicTree;
      
      private var §#T§:int;
      
      private var §&Q§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§4!G§ = new b2DynamicTree();
         this.§&Q§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §+!#§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§4!G§.§+!#§(param1,param2);
         ++this.§#T§;
         this.§>D§(_loc3_);
         return _loc3_;
      }
      
      public function §&R§(param1:*) : void
      {
         this.§3!J§(param1);
         --this.§#T§;
         this.§4!G§.§&R§(param1);
      }
      
      public function §&W§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§4!G§.§&W§(param1,param2,param3))
         {
            this.§>D§(param1);
         }
      }
      
      public function §+!;§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§4!G§.§,,§(param1);
         var _loc4_:b2AABB = this.§4!G§.§,,§(param2);
         return _loc3_.§+!;§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§4!G§.GetUserData(param1);
      }
      
      public function §,,§(param1:*) : b2AABB
      {
         return this.§4!G§.§,,§(param1);
      }
      
      public function §-s§() : int
      {
         return this.§#T§;
      }
      
      public function §"!R§(param1:Function) : void
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
         for each(queryProxy in this.§&Q§)
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
               _loc2_.§package§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§@!?§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§4!G§.§,,§(queryProxy);
            this.§4!G§.§&!K§(QueryCallback,fatAABB);
         }
         this.§&Q§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§4!G§.GetUserData(primaryPair.§package§);
            userDataB = this.§4!G§.GetUserData(primaryPair.§@!?§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§package§ != primaryPair.§package§ || pair.§@!?§ != primaryPair.§@!?§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §&!K§(param1:Function, param2:b2AABB) : void
      {
         this.§4!G§.§&!K§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§4!G§.RayCast(param1,param2);
      }
      
      public function §6k§() : void
      {
      }
      
      public function §]Q§(param1:int) : void
      {
         this.§4!G§.§]Q§(param1);
      }
      
      private function §>D§(param1:b2DynamicTreeNode) : void
      {
         this.§&Q§[this.§&Q§.length] = param1;
      }
      
      private function §3!J§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§&Q§.indexOf(param1);
         this.§&Q§.splice(_loc2_,1);
      }
      
      private function §+b§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
