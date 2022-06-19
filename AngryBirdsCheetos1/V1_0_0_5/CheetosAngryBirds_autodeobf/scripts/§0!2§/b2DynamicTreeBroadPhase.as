package §0!2§
{
   import §=E§.*;
   
   public class b2DynamicTreeBroadPhase implements § G§
   {
       
      
      private var §6e§:b2DynamicTree;
      
      private var §?Z§:int;
      
      private var §=!O§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§6e§ = new b2DynamicTree();
         this.§=!O§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §+P§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§6e§.§+P§(param1,param2);
         ++this.§?Z§;
         this.§32§(_loc3_);
         return _loc3_;
      }
      
      public function §7=§(param1:*) : void
      {
         this.§-!,§(param1);
         --this.§?Z§;
         this.§6e§.§7=§(param1);
      }
      
      public function §3!>§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§6e§.§3!>§(param1,param2,param3))
         {
            this.§32§(param1);
         }
      }
      
      public function §=!W§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§6e§.§]!T§(param1);
         var _loc4_:b2AABB = this.§6e§.§]!T§(param2);
         return _loc3_.§=!W§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§6e§.GetUserData(param1);
      }
      
      public function §]!T§(param1:*) : b2AABB
      {
         return this.§6e§.§]!T§(param1);
      }
      
      public function §1X§() : int
      {
         return this.§?Z§;
      }
      
      public function §^y§(param1:Function) : void
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
         for each(queryProxy in this.§=!O§)
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
               _loc2_.§5j§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§;!?§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§6e§.§]!T§(queryProxy);
            this.§6e§.§,!<§(QueryCallback,fatAABB);
         }
         this.§=!O§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§6e§.GetUserData(primaryPair.§5j§);
            userDataB = this.§6e§.GetUserData(primaryPair.§;!?§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§5j§ != primaryPair.§5j§ || pair.§;!?§ != primaryPair.§;!?§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §,!<§(param1:Function, param2:b2AABB) : void
      {
         this.§6e§.§,!<§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§6e§.RayCast(param1,param2);
      }
      
      public function §0-§() : void
      {
      }
      
      public function §;!@§(param1:int) : void
      {
         this.§6e§.§;!@§(param1);
      }
      
      private function §32§(param1:b2DynamicTreeNode) : void
      {
         this.§=!O§[this.§=!O§.length] = param1;
      }
      
      private function §-!,§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§=!O§.indexOf(param1);
         this.§=!O§.splice(_loc2_,1);
      }
      
      private function dynamic(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
