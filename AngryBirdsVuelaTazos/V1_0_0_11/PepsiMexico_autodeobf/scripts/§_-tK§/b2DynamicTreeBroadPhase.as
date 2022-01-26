package §_-tK§
{
   import §_-dx§.*;
   
   public class b2DynamicTreeBroadPhase implements §_-S8§
   {
       
      
      private var §_-nN§:b2DynamicTree;
      
      private var §_-Cv§:int;
      
      private var §_-7k§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§_-nN§ = new b2DynamicTree();
         this.§_-7k§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §_-BX§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§_-nN§.§_-BX§(param1,param2);
         ++this.§_-Cv§;
         this.§_-dW§(_loc3_);
         return _loc3_;
      }
      
      public function §_-o1§(param1:*) : void
      {
         this.§in§(param1);
         --this.§_-Cv§;
         this.§_-nN§.§_-o1§(param1);
      }
      
      public function §_-wh§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§_-nN§.§_-wh§(param1,param2,param3))
         {
            this.§_-dW§(param1);
         }
      }
      
      public function §_-9u§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§_-nN§.§_-Oz§(param1);
         var _loc4_:b2AABB = this.§_-nN§.§_-Oz§(param2);
         return _loc3_.§_-9u§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§_-nN§.GetUserData(param1);
      }
      
      public function §_-Oz§(param1:*) : b2AABB
      {
         return this.§_-nN§.§_-Oz§(param1);
      }
      
      public function §_-sP§() : int
      {
         return this.§_-Cv§;
      }
      
      public function §_-V8§(param1:Function) : void
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
         for each(queryProxy in this.§_-7k§)
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
               _loc2_.§_-sM§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§_-cZ§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§_-nN§.§_-Oz§(queryProxy);
            this.§_-nN§.§_-gi§(QueryCallback,fatAABB);
         }
         this.§_-7k§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§_-nN§.GetUserData(primaryPair.§_-sM§);
            userDataB = this.§_-nN§.GetUserData(primaryPair.§_-cZ§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§_-sM§ != primaryPair.§_-sM§ || pair.§_-cZ§ != primaryPair.§_-cZ§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §_-gi§(param1:Function, param2:b2AABB) : void
      {
         this.§_-nN§.§_-gi§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§_-nN§.RayCast(param1,param2);
      }
      
      public function §_-Iz§() : void
      {
      }
      
      public function §_-o6§(param1:int) : void
      {
         this.§_-nN§.§_-o6§(param1);
      }
      
      private function §_-dW§(param1:b2DynamicTreeNode) : void
      {
         this.§_-7k§[this.§_-7k§.length] = param1;
      }
      
      private function §in§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§_-7k§.indexOf(param1);
         this.§_-7k§.splice(_loc2_,1);
      }
      
      private function §_-Ib§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
