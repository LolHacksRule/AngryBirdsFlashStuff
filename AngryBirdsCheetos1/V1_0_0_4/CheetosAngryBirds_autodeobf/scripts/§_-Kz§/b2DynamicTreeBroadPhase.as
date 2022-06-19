package §_-Kz§
{
   import §_-Vn§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-n0§
   {
       
      
      private var §_-Sy§:b2DynamicTree;
      
      private var §_-rw§:int;
      
      private var §_-Wu§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-Sy§ = new b2DynamicTree();
         this.§_-Wu§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-00b§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-Sy§.§_-00b§(param1,param2);
         ++this.§_-rw§;
         this.§_-0b§(_loc3_);
         return _loc3_;
      }
      
      public function §_-XN§(param1:*) : void
      {
         this.§_-sI§(param1);
         --this.§_-rw§;
         this.§_-Sy§.§_-XN§(param1);
      }
      
      public function §_-7g§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-Sy§.§_-7g§(param1,param2,param3))
         {
            this.§_-0b§(param1);
         }
      }
      
      public function §_-wl§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-Sy§.§_-x2§(param1);
         var _loc4_:b2AABB = this.§_-Sy§.§_-x2§(param2);
         return _loc3_.§_-wl§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-Sy§.GetUserData(param1);
      }
      
      public function §_-x2§(param1:*) : b2AABB
      {
         return this.§_-Sy§.§_-x2§(param1);
      }
      
      public function §_-jL§() : int
      {
         return this.§_-rw§;
      }
      
      public function §_-Nm§(param1:Function) : void
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
         for each(queryProxy in this.§_-Wu§)
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
               _loc2_.§_-t6§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-iZ§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-Sy§.§_-x2§(queryProxy);
            this.§_-Sy§.§_-H0§(QueryCallback,fatAABB);
         }
         this.§_-Wu§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-Sy§.GetUserData(primaryPair.§_-t6§);
            userDataB = this.§_-Sy§.GetUserData(primaryPair.§_-iZ§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-t6§ != primaryPair.§_-t6§ || pair.§_-iZ§ != primaryPair.§_-iZ§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §_-H0§(param1:Function, param2:b2AABB) : void
      {
         this.§_-Sy§.§_-H0§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-Sy§.RayCast(param1,param2);
      }
      
      public function §_-BF§() : void
      {
      }
      
      public function §_-TH§(param1:int) : void
      {
         this.§_-Sy§.§_-TH§(param1);
      }
      
      private function §_-0b§(param1:b2DynamicTreeNode) : void
      {
         this.§_-Wu§[this.§_-Wu§.length] = param1;
      }
      
      private function §_-sI§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-Wu§.indexOf(param1);
         this.§_-Wu§.splice(_loc2_,1);
      }
      
      private function §_-xP§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
