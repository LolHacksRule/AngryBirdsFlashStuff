package § Y§
{
   import §<!8§.*;
   
   public class b2DynamicTreeBroadPhase implements §=!!§
   {
       
      
      private var §]!?§:b2DynamicTree;
      
      private var §>J§:int;
      
      private var §9f§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§]!?§ = new b2DynamicTree();
         this.§9f§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §7N§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§]!?§.§7N§(param1,param2);
         ++this.§>J§;
         this.§1!Z§(_loc3_);
         return _loc3_;
      }
      
      public function §9!"§(param1:*) : void
      {
         this.§<;§(param1);
         --this.§>J§;
         this.§]!?§.§9!"§(param1);
      }
      
      public function §?!S§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§]!?§.§?!S§(param1,param2,param3))
         {
            this.§1!Z§(param1);
         }
      }
      
      public function §#!J§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§]!?§.§#!$§(param1);
         var _loc4_:b2AABB = this.§]!?§.§#!$§(param2);
         return _loc3_.§#!J§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§]!?§.GetUserData(param1);
      }
      
      public function §#!$§(param1:*) : b2AABB
      {
         return this.§]!?§.§#!$§(param1);
      }
      
      public function §<e§() : int
      {
         return this.§>J§;
      }
      
      public function §9!,§(param1:Function) : void
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
         for each(queryProxy in this.§9f§)
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
               _loc2_.§+!L§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§%!-§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§]!?§.§#!$§(queryProxy);
            this.§]!?§.§6J§(QueryCallback,fatAABB);
         }
         this.§9f§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§]!?§.GetUserData(primaryPair.§+!L§);
            userDataB = this.§]!?§.GetUserData(primaryPair.§%!-§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§+!L§ != primaryPair.§+!L§ || pair.§%!-§ != primaryPair.§%!-§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §6J§(param1:Function, param2:b2AABB) : void
      {
         this.§]!?§.§6J§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§]!?§.RayCast(param1,param2);
      }
      
      public function §!!-§() : void
      {
      }
      
      public function §=O§(param1:int) : void
      {
         this.§]!?§.§=O§(param1);
      }
      
      private function §1!Z§(param1:b2DynamicTreeNode) : void
      {
         this.§9f§[this.§9f§.length] = param1;
      }
      
      private function §<;§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§9f§.indexOf(param1);
         this.§9f§.splice(_loc2_,1);
      }
      
      private function §!"§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
