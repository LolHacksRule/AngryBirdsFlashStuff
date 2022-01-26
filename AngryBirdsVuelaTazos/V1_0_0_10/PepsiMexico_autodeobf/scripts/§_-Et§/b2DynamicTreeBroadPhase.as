package §_-Et§
{
   import §_-Zl§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-ei§
   {
       
      
      private var §_-dy§:b2DynamicTree;
      
      private var §_-lm§:int;
      
      private var §if§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-dy§ = new b2DynamicTree();
         this.§if§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-A5§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-dy§.§_-A5§(param1,param2);
         ++this.§_-lm§;
         this.§_-Rt§(_loc3_);
         return _loc3_;
      }
      
      public function §_-Uu§(param1:*) : void
      {
         this.§_-VY§(param1);
         --this.§_-lm§;
         this.§_-dy§.§_-Uu§(param1);
      }
      
      public function §_-Rs§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-dy§.§_-Rs§(param1,param2,param3))
         {
            this.§_-Rt§(param1);
         }
      }
      
      public function §_-e2§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-dy§.§_-cN§(param1);
         var _loc4_:b2AABB = this.§_-dy§.§_-cN§(param2);
         return _loc3_.§_-e2§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-dy§.GetUserData(param1);
      }
      
      public function §_-cN§(param1:*) : b2AABB
      {
         return this.§_-dy§.§_-cN§(param1);
      }
      
      public function §_-Us§() : int
      {
         return this.§_-lm§;
      }
      
      public function §_-Og§(param1:Function) : void
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
         for each(queryProxy in this.§if§)
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
               _loc2_.§_-LU§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-5K§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-dy§.§_-cN§(queryProxy);
            this.§_-dy§.§_-OD§(QueryCallback,fatAABB);
         }
         this.§if§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-dy§.GetUserData(primaryPair.§_-LU§);
            userDataB = this.§_-dy§.GetUserData(primaryPair.§_-5K§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-LU§ != primaryPair.§_-LU§ || pair.§_-5K§ != primaryPair.§_-5K§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §_-OD§(param1:Function, param2:b2AABB) : void
      {
         this.§_-dy§.§_-OD§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-dy§.RayCast(param1,param2);
      }
      
      public function § else§() : void
      {
      }
      
      public function §_-M5§(param1:int) : void
      {
         this.§_-dy§.§_-M5§(param1);
      }
      
      private function §_-Rt§(param1:b2DynamicTreeNode) : void
      {
         this.§if§[this.§if§.length] = param1;
      }
      
      private function §_-VY§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§if§.indexOf(param1);
         this.§if§.splice(_loc2_,1);
      }
      
      private function §_-0g§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
