package §_-qg§
{
   import §_-Ja§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-nW§
   {
       
      
      private var §_-1K§:b2DynamicTree;
      
      private var §_-Fj§:int;
      
      private var §_-lv§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-1K§ = new b2DynamicTree();
         this.§_-lv§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-mf§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-1K§.§_-mf§(param1,param2);
         ++this.§_-Fj§;
         this.§_-hv§(_loc3_);
         return _loc3_;
      }
      
      public function §_-aV§(param1:*) : void
      {
         this.§_-nR§(param1);
         --this.§_-Fj§;
         this.§_-1K§.§_-aV§(param1);
      }
      
      public function §_-Se§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-1K§.§_-Se§(param1,param2,param3))
         {
            this.§_-hv§(param1);
         }
      }
      
      public function §_-pb§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-1K§.§_-zV§(param1);
         var _loc4_:b2AABB = this.§_-1K§.§_-zV§(param2);
         return _loc3_.§_-pb§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-1K§.GetUserData(param1);
      }
      
      public function §_-zV§(param1:*) : b2AABB
      {
         return this.§_-1K§.§_-zV§(param1);
      }
      
      public function §_-G3§() : int
      {
         return this.§_-Fj§;
      }
      
      public function §_-PJ§(param1:Function) : void
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
         for each(queryProxy in this.§_-lv§)
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
               _loc2_.§ do§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-q9§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-1K§.§_-zV§(queryProxy);
            this.§_-1K§.§_-7a§(QueryCallback,fatAABB);
         }
         this.§_-lv§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-1K§.GetUserData(primaryPair.§ do§);
            userDataB = this.§_-1K§.GetUserData(primaryPair.§_-q9§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§ do§ != primaryPair.§ do§ || pair.§_-q9§ != primaryPair.§_-q9§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §_-7a§(param1:Function, param2:b2AABB) : void
      {
         this.§_-1K§.§_-7a§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-1K§.RayCast(param1,param2);
      }
      
      public function §_-Xa§() : void
      {
      }
      
      public function §_-pP§(param1:int) : void
      {
         this.§_-1K§.§_-pP§(param1);
      }
      
      private function §_-hv§(param1:b2DynamicTreeNode) : void
      {
         this.§_-lv§[this.§_-lv§.length] = param1;
      }
      
      private function §_-nR§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-lv§.indexOf(param1);
         this.§_-lv§.splice(_loc2_,1);
      }
      
      private function §_-aF§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
