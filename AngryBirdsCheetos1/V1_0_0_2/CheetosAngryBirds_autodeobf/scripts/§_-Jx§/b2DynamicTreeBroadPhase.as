package §_-Jx§
{
   import §_-F2§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-e1§
   {
       
      
      private var §_-UQ§:b2DynamicTree;
      
      private var §_-Yz§:int;
      
      private var §_-Qh§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-UQ§ = new b2DynamicTree();
         this.§_-Qh§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-Pw§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-UQ§.§_-Pw§(param1,param2);
         ++this.§_-Yz§;
         this.§_-BQ§(_loc3_);
         return _loc3_;
      }
      
      public function §_-fe§(param1:*) : void
      {
         this.§_-QC§(param1);
         --this.§_-Yz§;
         this.§_-UQ§.§_-fe§(param1);
      }
      
      public function §_-E2§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-UQ§.§_-E2§(param1,param2,param3))
         {
            this.§_-BQ§(param1);
         }
      }
      
      public function §_-LO§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-UQ§.§_-uL§(param1);
         var _loc4_:b2AABB = this.§_-UQ§.§_-uL§(param2);
         return _loc3_.§_-LO§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-UQ§.GetUserData(param1);
      }
      
      public function §_-uL§(param1:*) : b2AABB
      {
         return this.§_-UQ§.§_-uL§(param1);
      }
      
      public function §_-Iw§() : int
      {
         return this.§_-Yz§;
      }
      
      public function §_-gi§(param1:Function) : void
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
         for each(queryProxy in this.§_-Qh§)
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
               _loc2_.§_-WA§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-tr§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-UQ§.§_-uL§(queryProxy);
            this.§_-UQ§.§_-pU§(QueryCallback,fatAABB);
         }
         this.§_-Qh§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-UQ§.GetUserData(primaryPair.§_-WA§);
            userDataB = this.§_-UQ§.GetUserData(primaryPair.§_-tr§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-WA§ != primaryPair.§_-WA§ || pair.§_-tr§ != primaryPair.§_-tr§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-pU§(param1:Function, param2:b2AABB) : void
      {
         this.§_-UQ§.§_-pU§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-UQ§.RayCast(param1,param2);
      }
      
      public function §_-xo§() : void
      {
      }
      
      public function §_-js§(param1:int) : void
      {
         this.§_-UQ§.§_-js§(param1);
      }
      
      private function §_-BQ§(param1:b2DynamicTreeNode) : void
      {
         this.§_-Qh§[this.§_-Qh§.length] = param1;
      }
      
      private function §_-QC§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-Qh§.indexOf(param1);
         this.§_-Qh§.splice(_loc2_,1);
      }
      
      private function §_-VC§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
