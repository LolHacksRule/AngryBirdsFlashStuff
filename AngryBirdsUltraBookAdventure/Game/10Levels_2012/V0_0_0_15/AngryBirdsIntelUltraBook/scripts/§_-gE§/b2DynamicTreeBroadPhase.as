package §_-gE§
{
   import §_-Yp§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-We§
   {
       
      
      private var §_-yn§:b2DynamicTree;
      
      private var §_-nR§:int;
      
      private var §_-JU§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-yn§ = new b2DynamicTree();
         this.§_-JU§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-7Y§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-yn§.§_-7Y§(param1,param2);
         ++this.§_-nR§;
         this.§_-iR§(_loc3_);
         return _loc3_;
      }
      
      public function §_-yw§(param1:*) : void
      {
         this.§_-16§(param1);
         --this.§_-nR§;
         this.§_-yn§.§_-yw§(param1);
      }
      
      public function §_-BG§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-yn§.§_-BG§(param1,param2,param3))
         {
            this.§_-iR§(param1);
         }
      }
      
      public function §_-Rd§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-yn§.§_-082§(param1);
         var _loc4_:b2AABB = this.§_-yn§.§_-082§(param2);
         return _loc3_.§_-Rd§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-yn§.GetUserData(param1);
      }
      
      public function §_-082§(param1:*) : b2AABB
      {
         return this.§_-yn§.§_-082§(param1);
      }
      
      public function §_-ps§() : int
      {
         return this.§_-nR§;
      }
      
      public function §_-Mm§(param1:Function) : void
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
         for each(queryProxy in this.§_-JU§)
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
               _loc2_.§_-05Z§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-l4§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-yn§.§_-082§(queryProxy);
            this.§_-yn§.§_-CP§(QueryCallback,fatAABB);
         }
         this.§_-JU§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-yn§.GetUserData(primaryPair.§_-05Z§);
            userDataB = this.§_-yn§.GetUserData(primaryPair.§_-l4§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-05Z§ != primaryPair.§_-05Z§ || pair.§_-l4§ != primaryPair.§_-l4§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §_-CP§(param1:Function, param2:b2AABB) : void
      {
         this.§_-yn§.§_-CP§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-yn§.RayCast(param1,param2);
      }
      
      public function §_-0DA§() : void
      {
      }
      
      public function §_-DT§(param1:int) : void
      {
         this.§_-yn§.§_-DT§(param1);
      }
      
      private function §_-iR§(param1:b2DynamicTreeNode) : void
      {
         this.§_-JU§[this.§_-JU§.length] = param1;
      }
      
      private function §_-16§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-JU§.indexOf(param1);
         this.§_-JU§.splice(_loc2_,1);
      }
      
      private function §_-97§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
