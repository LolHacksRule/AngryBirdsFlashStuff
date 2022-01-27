package §>!Z§
{
   import §&H§.*;
   
   public class b2DynamicTreeBroadPhase implements §<P§
   {
       
      
      private var §?!P§:b2DynamicTree;
      
      private var §"!E§:int;
      
      private var §1B§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§?!P§ = new b2DynamicTree();
         this.§1B§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §[E§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§?!P§.§[E§(param1,param2);
         ++this.§"!E§;
         this.§4!e§(_loc3_);
         return _loc3_;
      }
      
      public function §#i§(param1:*) : void
      {
         this.§]!I§(param1);
         --this.§"!E§;
         this.§?!P§.§#i§(param1);
      }
      
      public function §"d§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§?!P§.§"d§(param1,param2,param3))
         {
            this.§4!e§(param1);
         }
      }
      
      public function §]I§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?!P§.§8"§(param1);
         var _loc4_:b2AABB = this.§?!P§.§8"§(param2);
         return _loc3_.§]I§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?!P§.GetUserData(param1);
      }
      
      public function §8"§(param1:*) : b2AABB
      {
         return this.§?!P§.§8"§(param1);
      }
      
      public function §^!A§() : int
      {
         return this.§"!E§;
      }
      
      public function §9N§(param1:Function) : void
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
         for each(queryProxy in this.§1B§)
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
               _loc2_.§,N§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§#y§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§?!P§.§8"§(queryProxy);
            this.§?!P§.§ [§(QueryCallback,fatAABB);
         }
         this.§1B§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§?!P§.GetUserData(primaryPair.§,N§);
            userDataB = this.§?!P§.GetUserData(primaryPair.§#y§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§,N§ != primaryPair.§,N§ || pair.§#y§ != primaryPair.§#y§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function § [§(param1:Function, param2:b2AABB) : void
      {
         this.§?!P§.§ [§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§?!P§.RayCast(param1,param2);
      }
      
      public function §4!B§() : void
      {
      }
      
      public function §8"$§(param1:int) : void
      {
         this.§?!P§.§8"$§(param1);
      }
      
      private function §4!e§(param1:b2DynamicTreeNode) : void
      {
         this.§1B§[this.§1B§.length] = param1;
      }
      
      private function §]!I§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§1B§.indexOf(param1);
         this.§1B§.splice(_loc2_,1);
      }
      
      private function §"!w§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
