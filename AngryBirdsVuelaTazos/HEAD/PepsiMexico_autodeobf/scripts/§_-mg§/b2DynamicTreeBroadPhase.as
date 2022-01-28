package §_-mg§
{
   import §_-bA§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-Y0§
   {
       
      
      private var §_-BH§:b2DynamicTree;
      
      private var §_-y9§:int;
      
      private var §_-Uq§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-BH§ = new b2DynamicTree();
         this.§_-Uq§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-Nl§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-BH§.§_-Nl§(param1,param2);
         ++this.§_-y9§;
         this.§_-X2§(_loc3_);
         return _loc3_;
      }
      
      public function §_-Xm§(param1:*) : void
      {
         this.§_-Gy§(param1);
         --this.§_-y9§;
         this.§_-BH§.§_-Xm§(param1);
      }
      
      public function §_-Mf§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-BH§.§_-Mf§(param1,param2,param3))
         {
            this.§_-X2§(param1);
         }
      }
      
      public function §_-lP§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-BH§.§_-8q§(param1);
         var _loc4_:b2AABB = this.§_-BH§.§_-8q§(param2);
         return _loc3_.§_-lP§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-BH§.GetUserData(param1);
      }
      
      public function §_-8q§(param1:*) : b2AABB
      {
         return this.§_-BH§.§_-8q§(param1);
      }
      
      public function §_-fF§() : int
      {
         return this.§_-y9§;
      }
      
      public function §_-TV§(param1:Function) : void
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
         for each(queryProxy in this.§_-Uq§)
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
               _loc2_.§_-tt§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-co§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-BH§.§_-8q§(queryProxy);
            this.§_-BH§.§_-xd§(QueryCallback,fatAABB);
         }
         this.§_-Uq§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-BH§.GetUserData(primaryPair.§_-tt§);
            userDataB = this.§_-BH§.GetUserData(primaryPair.§_-co§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-tt§ != primaryPair.§_-tt§ || pair.§_-co§ != primaryPair.§_-co§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-xd§(param1:Function, param2:b2AABB) : void
      {
         this.§_-BH§.§_-xd§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-BH§.RayCast(param1,param2);
      }
      
      public function §_-wo§() : void
      {
      }
      
      public function §_-y0§(param1:int) : void
      {
         this.§_-BH§.§_-y0§(param1);
      }
      
      private function §_-X2§(param1:b2DynamicTreeNode) : void
      {
         this.§_-Uq§[this.§_-Uq§.length] = param1;
      }
      
      private function §_-Gy§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-Uq§.indexOf(param1);
         this.§_-Uq§.splice(_loc2_,1);
      }
      
      private function §_-pQ§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
