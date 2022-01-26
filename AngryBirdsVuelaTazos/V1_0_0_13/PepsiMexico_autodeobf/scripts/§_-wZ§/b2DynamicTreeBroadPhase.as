package §_-wZ§
{
   import §var§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-Of§
   {
       
      
      private var §_-ti§:b2DynamicTree;
      
      private var §_-Kf§:int;
      
      private var §_-mr§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-ti§ = new b2DynamicTree();
         this.§_-mr§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-c6§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-ti§.§_-c6§(param1,param2);
         ++this.§_-Kf§;
         this.§_-EH§(_loc3_);
         return _loc3_;
      }
      
      public function §_-La§(param1:*) : void
      {
         this.§_-PC§(param1);
         --this.§_-Kf§;
         this.§_-ti§.§_-La§(param1);
      }
      
      public function §_-sJ§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-ti§.§_-sJ§(param1,param2,param3))
         {
            this.§_-EH§(param1);
         }
      }
      
      public function §_-db§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-ti§.§_-hC§(param1);
         var _loc4_:b2AABB = this.§_-ti§.§_-hC§(param2);
         return _loc3_.§_-db§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-ti§.GetUserData(param1);
      }
      
      public function §_-hC§(param1:*) : b2AABB
      {
         return this.§_-ti§.§_-hC§(param1);
      }
      
      public function §_-Fb§() : int
      {
         return this.§_-Kf§;
      }
      
      public function §_-XH§(param1:Function) : void
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
         for each(queryProxy in this.§_-mr§)
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
               _loc2_.§_-RO§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-5J§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-ti§.§_-hC§(queryProxy);
            this.§_-ti§.§_-7F§(QueryCallback,fatAABB);
         }
         this.§_-mr§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-ti§.GetUserData(primaryPair.§_-RO§);
            userDataB = this.§_-ti§.GetUserData(primaryPair.§_-5J§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-RO§ != primaryPair.§_-RO§ || pair.§_-5J§ != primaryPair.§_-5J§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-7F§(param1:Function, param2:b2AABB) : void
      {
         this.§_-ti§.§_-7F§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-ti§.RayCast(param1,param2);
      }
      
      public function §_-aL§() : void
      {
      }
      
      public function §_-gf§(param1:int) : void
      {
         this.§_-ti§.§_-gf§(param1);
      }
      
      private function §_-EH§(param1:b2DynamicTreeNode) : void
      {
         this.§_-mr§[this.§_-mr§.length] = param1;
      }
      
      private function §_-PC§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-mr§.indexOf(param1);
         this.§_-mr§.splice(_loc2_,1);
      }
      
      private function §_-hk§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
