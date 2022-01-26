package §%!B§
{
   import §&!B§.*;
   
   public class b2DynamicTreeBroadPhase implements §-!9§
   {
       
      
      private var §8W§:b2DynamicTree;
      
      private var §]!L§:int;
      
      private var §3!$§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§8W§ = new b2DynamicTree();
         this.§3!$§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §0!^§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§8W§.§0!^§(param1,param2);
         ++this.§]!L§;
         this.§]N§(_loc3_);
         return _loc3_;
      }
      
      public function §@!@§(param1:*) : void
      {
         this.§9y§(param1);
         --this.§]!L§;
         this.§8W§.§@!@§(param1);
      }
      
      public function §]!=§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§8W§.§]!=§(param1,param2,param3))
         {
            this.§]N§(param1);
         }
      }
      
      public function §8!X§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§8W§.§<!T§(param1);
         var _loc4_:b2AABB = this.§8W§.§<!T§(param2);
         return _loc3_.§8!X§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§8W§.GetUserData(param1);
      }
      
      public function §<!T§(param1:*) : b2AABB
      {
         return this.§8W§.§<!T§(param1);
      }
      
      public function §7!^§() : int
      {
         return this.§]!L§;
      }
      
      public function §[!$§(param1:Function) : void
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
         for each(queryProxy in this.§3!$§)
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
               _loc2_.§8!=§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§0A§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§8W§.§<!T§(queryProxy);
            this.§8W§.§6e§(QueryCallback,fatAABB);
         }
         this.§3!$§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§8W§.GetUserData(primaryPair.§8!=§);
            userDataB = this.§8W§.GetUserData(primaryPair.§0A§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§8!=§ != primaryPair.§8!=§ || pair.§0A§ != primaryPair.§0A§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §6e§(param1:Function, param2:b2AABB) : void
      {
         this.§8W§.§6e§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§8W§.RayCast(param1,param2);
      }
      
      public function §9u§() : void
      {
      }
      
      public function §true §(param1:int) : void
      {
         this.§8W§.§true §(param1);
      }
      
      private function §]N§(param1:b2DynamicTreeNode) : void
      {
         this.§3!$§[this.§3!$§.length] = param1;
      }
      
      private function §9y§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§3!$§.indexOf(param1);
         this.§3!$§.splice(_loc2_,1);
      }
      
      private function §1#§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
