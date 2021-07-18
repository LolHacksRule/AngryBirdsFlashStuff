package §^9§
{
   import §6Z§.*;
   
   public class b2DynamicTreeBroadPhase implements §`c§
   {
       
      
      private var §?4§:b2DynamicTree;
      
      private var §6!B§:int;
      
      private var §0!d§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§?4§ = new b2DynamicTree();
         this.§0!d§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §]!J§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§?4§.§]!J§(param1,param2);
         ++this.§6!B§;
         this.§9^§(_loc3_);
         return _loc3_;
      }
      
      public function §5!k§(param1:*) : void
      {
         this.§'r§(param1);
         --this.§6!B§;
         this.§?4§.§5!k§(param1);
      }
      
      public function §2n§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§?4§.§2n§(param1,param2,param3))
         {
            this.§9^§(param1);
         }
      }
      
      public function §]",§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?4§.§25§(param1);
         var _loc4_:b2AABB = this.§?4§.§25§(param2);
         return _loc3_.§]",§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?4§.GetUserData(param1);
      }
      
      public function §25§(param1:*) : b2AABB
      {
         return this.§?4§.§25§(param1);
      }
      
      public function §<!v§() : int
      {
         return this.§6!B§;
      }
      
      public function §,b§(param1:Function) : void
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
         for each(queryProxy in this.§0!d§)
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
               _loc2_.§2J§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§4"$§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§?4§.§25§(queryProxy);
            this.§?4§.§ var§(QueryCallback,fatAABB);
         }
         this.§0!d§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§?4§.GetUserData(primaryPair.§2J§);
            userDataB = this.§?4§.GetUserData(primaryPair.§4"$§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§2J§ != primaryPair.§2J§ || pair.§4"$§ != primaryPair.§4"$§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function § var§(param1:Function, param2:b2AABB) : void
      {
         this.§?4§.§ var§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§?4§.RayCast(param1,param2);
      }
      
      public function §`!n§() : void
      {
      }
      
      public function §;3§(param1:int) : void
      {
         this.§?4§.§;3§(param1);
      }
      
      private function §9^§(param1:b2DynamicTreeNode) : void
      {
         this.§0!d§[this.§0!d§.length] = param1;
      }
      
      private function §'r§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§0!d§.indexOf(param1);
         this.§0!d§.splice(_loc2_,1);
      }
      
      private function §-!j§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
