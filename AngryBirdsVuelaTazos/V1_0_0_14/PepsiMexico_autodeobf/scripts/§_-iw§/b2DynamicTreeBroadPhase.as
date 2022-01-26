package §_-iw§
{
   import §_-4n§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-T5§
   {
       
      
      private var §throw§:b2DynamicTree;
      
      private var §_-gc§:int;
      
      private var §_-A3§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§throw§ = new b2DynamicTree();
         this.§_-A3§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-U5§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§throw§.§_-U5§(param1,param2);
         ++this.§_-gc§;
         this.§_-7j§(_loc3_);
         return _loc3_;
      }
      
      public function §_-IN§(param1:*) : void
      {
         this.§_-pI§(param1);
         --this.§_-gc§;
         this.§throw§.§_-IN§(param1);
      }
      
      public function §_-AX§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§throw§.§_-AX§(param1,param2,param3))
         {
            this.§_-7j§(param1);
         }
      }
      
      public function §_-va§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§throw§.§_-bv§(param1);
         var _loc4_:b2AABB = this.§throw§.§_-bv§(param2);
         return _loc3_.§_-va§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§throw§.GetUserData(param1);
      }
      
      public function §_-bv§(param1:*) : b2AABB
      {
         return this.§throw§.§_-bv§(param1);
      }
      
      public function §_-4l§() : int
      {
         return this.§_-gc§;
      }
      
      public function §_-gh§(param1:Function) : void
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
         for each(queryProxy in this.§_-A3§)
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
               _loc2_.§_-uI§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-Hj§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§throw§.§_-bv§(queryProxy);
            this.§throw§.§_-Me§(QueryCallback,fatAABB);
         }
         this.§_-A3§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§throw§.GetUserData(primaryPair.§_-uI§);
            userDataB = this.§throw§.GetUserData(primaryPair.§_-Hj§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-uI§ != primaryPair.§_-uI§ || pair.§_-Hj§ != primaryPair.§_-Hj§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-Me§(param1:Function, param2:b2AABB) : void
      {
         this.§throw§.§_-Me§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§throw§.RayCast(param1,param2);
      }
      
      public function §_-a2§() : void
      {
      }
      
      public function §_-N2§(param1:int) : void
      {
         this.§throw§.§_-N2§(param1);
      }
      
      private function §_-7j§(param1:b2DynamicTreeNode) : void
      {
         this.§_-A3§[this.§_-A3§.length] = param1;
      }
      
      private function §_-pI§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-A3§.indexOf(param1);
         this.§_-A3§.splice(_loc2_,1);
      }
      
      private function §_-vk§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
