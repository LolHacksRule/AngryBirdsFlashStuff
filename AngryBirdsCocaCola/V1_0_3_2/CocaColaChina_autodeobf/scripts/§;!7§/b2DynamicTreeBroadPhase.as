package §;!7§
{
   import §implements§.*;
   
   public class b2DynamicTreeBroadPhase implements §>c§
   {
       
      
      private var §]!X§:b2DynamicTree;
      
      private var §1!$§:int;
      
      private var §#U§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§]!X§ = new b2DynamicTree();
         this.§#U§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §]!0§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§]!X§.§]!0§(param1,param2);
         ++this.§1!$§;
         this.§?'§(_loc3_);
         return _loc3_;
      }
      
      public function §8!V§(param1:*) : void
      {
         this.§9!$§(param1);
         --this.§1!$§;
         this.§]!X§.§8!V§(param1);
      }
      
      public function §1$§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§]!X§.§1$§(param1,param2,param3))
         {
            this.§?'§(param1);
         }
      }
      
      public function §2<§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§]!X§.§3;§(param1);
         var _loc4_:b2AABB = this.§]!X§.§3;§(param2);
         return _loc3_.§2<§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§]!X§.GetUserData(param1);
      }
      
      public function §3;§(param1:*) : b2AABB
      {
         return this.§]!X§.§3;§(param1);
      }
      
      public function §%!N§() : int
      {
         return this.§1!$§;
      }
      
      public function §]5§(param1:Function) : void
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
         for each(queryProxy in this.§#U§)
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
               _loc2_.§9b§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§'o§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§]!X§.§3;§(queryProxy);
            this.§]!X§.§"!§(QueryCallback,fatAABB);
         }
         this.§#U§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§]!X§.GetUserData(primaryPair.§9b§);
            userDataB = this.§]!X§.GetUserData(primaryPair.§'o§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§9b§ != primaryPair.§9b§ || pair.§'o§ != primaryPair.§'o§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §"!§(param1:Function, param2:b2AABB) : void
      {
         this.§]!X§.§"!§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§]!X§.RayCast(param1,param2);
      }
      
      public function §^!5§() : void
      {
      }
      
      public function §+?§(param1:int) : void
      {
         this.§]!X§.§+?§(param1);
      }
      
      private function §?'§(param1:b2DynamicTreeNode) : void
      {
         this.§#U§[this.§#U§.length] = param1;
      }
      
      private function §9!$§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§#U§.indexOf(param1);
         this.§#U§.splice(_loc2_,1);
      }
      
      private function §;N§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
