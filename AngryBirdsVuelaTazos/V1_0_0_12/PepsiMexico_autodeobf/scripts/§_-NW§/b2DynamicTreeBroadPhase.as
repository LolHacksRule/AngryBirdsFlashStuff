package §_-Nw§
{
   import §_-9z§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-vU§
   {
       
      
      private var §_-cX§:b2DynamicTree;
      
      private var §_-Za§:int;
      
      private var §_-Bm§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-cX§ = new b2DynamicTree();
         this.§_-Bm§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-S3§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-cX§.§_-S3§(param1,param2);
         ++this.§_-Za§;
         this.§_-rj§(_loc3_);
         return _loc3_;
      }
      
      public function §_-r5§(param1:*) : void
      {
         this.§_-nT§(param1);
         --this.§_-Za§;
         this.§_-cX§.§_-r5§(param1);
      }
      
      public function §_-4G§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-cX§.§_-4G§(param1,param2,param3))
         {
            this.§_-rj§(param1);
         }
      }
      
      public function §_-4S§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-cX§.§_-nm§(param1);
         var _loc4_:b2AABB = this.§_-cX§.§_-nm§(param2);
         return _loc3_.§_-4S§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-cX§.GetUserData(param1);
      }
      
      public function §_-nm§(param1:*) : b2AABB
      {
         return this.§_-cX§.§_-nm§(param1);
      }
      
      public function §_-iu§() : int
      {
         return this.§_-Za§;
      }
      
      public function §_-xA§(param1:Function) : void
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
         for each(queryProxy in this.§_-Bm§)
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
               _loc2_.§_-gv§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-KQ§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-cX§.§_-nm§(queryProxy);
            this.§_-cX§.§_-sP§(QueryCallback,fatAABB);
         }
         this.§_-Bm§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-cX§.GetUserData(primaryPair.§_-gv§);
            userDataB = this.§_-cX§.GetUserData(primaryPair.§_-KQ§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-gv§ != primaryPair.§_-gv§ || pair.§_-KQ§ != primaryPair.§_-KQ§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-sP§(param1:Function, param2:b2AABB) : void
      {
         this.§_-cX§.§_-sP§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-cX§.RayCast(param1,param2);
      }
      
      public function §_-5t§() : void
      {
      }
      
      public function §_-L0§(param1:int) : void
      {
         this.§_-cX§.§_-L0§(param1);
      }
      
      private function §_-rj§(param1:b2DynamicTreeNode) : void
      {
         this.§_-Bm§[this.§_-Bm§.length] = param1;
      }
      
      private function §_-nT§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-Bm§.indexOf(param1);
         this.§_-Bm§.splice(_loc2_,1);
      }
      
      private function §_-rh§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
