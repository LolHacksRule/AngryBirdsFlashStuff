package §_-yI§
{
   import §_-cP§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-2G§
   {
       
      
      private var §_-en§:b2DynamicTree;
      
      private var §_-EN§:int;
      
      private var §_-M5§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-en§ = new b2DynamicTree();
         this.§_-M5§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-Kb§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-en§.§_-Kb§(param1,param2);
         ++this.§_-EN§;
         this.§_-ft§(_loc3_);
         return _loc3_;
      }
      
      public function §_-ht§(param1:*) : void
      {
         this.§_-fp§(param1);
         --this.§_-EN§;
         this.§_-en§.§_-ht§(param1);
      }
      
      public function §_-Aj§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-en§.§_-Aj§(param1,param2,param3))
         {
            this.§_-ft§(param1);
         }
      }
      
      public function §_-wT§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-en§.§_-Ux§(param1);
         var _loc4_:b2AABB = this.§_-en§.§_-Ux§(param2);
         return _loc3_.§_-wT§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-en§.GetUserData(param1);
      }
      
      public function §_-Ux§(param1:*) : b2AABB
      {
         return this.§_-en§.§_-Ux§(param1);
      }
      
      public function §_-MQ§() : int
      {
         return this.§_-EN§;
      }
      
      public function §_-Ue§(param1:Function) : void
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
         for each(queryProxy in this.§_-M5§)
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
               _loc2_.§_-s1§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-vt§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-en§.§_-Ux§(queryProxy);
            this.§_-en§.§_-uZ§(QueryCallback,fatAABB);
         }
         this.§_-M5§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-en§.GetUserData(primaryPair.§_-s1§);
            userDataB = this.§_-en§.GetUserData(primaryPair.§_-vt§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-s1§ != primaryPair.§_-s1§ || pair.§_-vt§ != primaryPair.§_-vt§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-uZ§(param1:Function, param2:b2AABB) : void
      {
         this.§_-en§.§_-uZ§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-en§.RayCast(param1,param2);
      }
      
      public function §_-2C§() : void
      {
      }
      
      public function §_-VM§(param1:int) : void
      {
         this.§_-en§.§_-VM§(param1);
      }
      
      private function §_-ft§(param1:b2DynamicTreeNode) : void
      {
         this.§_-M5§[this.§_-M5§.length] = param1;
      }
      
      private function §_-fp§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-M5§.indexOf(param1);
         this.§_-M5§.splice(_loc2_,1);
      }
      
      private function §_-JF§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
