package § G§
{
   import §9"§.*;
   
   public class b2DynamicTreeBroadPhase implements §3!>§
   {
       
      
      private var §?Z§:b2DynamicTree;
      
      private var §=!O§:int;
      
      private var §9v§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§?Z§ = new b2DynamicTree();
         this.§9v§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §7=§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§?Z§.§7=§(param1,param2);
         ++this.§=!O§;
         this.§-!,§(_loc3_);
         return _loc3_;
      }
      
      public function §'!F§(param1:*) : void
      {
         this.dynamic(param1);
         --this.§=!O§;
         this.§?Z§.§'!F§(param1);
      }
      
      public function §]!T§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§?Z§.§]!T§(param1,param2,param3))
         {
            this.§-!,§(param1);
         }
      }
      
      public function §;!4§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?Z§.§^y§(param1);
         var _loc4_:b2AABB = this.§?Z§.§^y§(param2);
         return _loc3_.§;!4§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?Z§.GetUserData(param1);
      }
      
      public function §^y§(param1:*) : b2AABB
      {
         return this.§?Z§.§^y§(param1);
      }
      
      public function §1[§() : int
      {
         return this.§=!O§;
      }
      
      public function §,!<§(param1:Function) : void
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
         for each(queryProxy in this.§9v§)
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
               _loc2_.§;!?§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§&z§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§?Z§.§^y§(queryProxy);
            this.§?Z§.§;!@§(QueryCallback,fatAABB);
         }
         this.§9v§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§?Z§.GetUserData(primaryPair.§;!?§);
            userDataB = this.§?Z§.GetUserData(primaryPair.§&z§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§;!?§ != primaryPair.§;!?§ || pair.§&z§ != primaryPair.§&z§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §;!@§(param1:Function, param2:b2AABB) : void
      {
         this.§?Z§.§;!@§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§?Z§.RayCast(param1,param2);
      }
      
      public function §;g§() : void
      {
      }
      
      public function §`!8§(param1:int) : void
      {
         this.§?Z§.§`!8§(param1);
      }
      
      private function §-!,§(param1:b2DynamicTreeNode) : void
      {
         this.§9v§[this.§9v§.length] = param1;
      }
      
      private function dynamic(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§9v§.indexOf(param1);
         this.§9v§.splice(_loc2_,1);
      }
      
      private function §6e§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
