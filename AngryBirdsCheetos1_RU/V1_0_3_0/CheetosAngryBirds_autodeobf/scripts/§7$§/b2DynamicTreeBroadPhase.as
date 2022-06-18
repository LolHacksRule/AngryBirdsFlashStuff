package §7$§
{
   import §[R§.*;
   
   public class b2DynamicTreeBroadPhase implements §%!"§
   {
       
      
      private var §-U§:b2DynamicTree;
      
      private var §&1§:int;
      
      private var §30§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§-U§ = new b2DynamicTree();
         this.§30§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §>!&§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§-U§.§>!&§(param1,param2);
         ++this.§&1§;
         this.§[!0§(_loc3_);
         return _loc3_;
      }
      
      public function §>;§(param1:*) : void
      {
         this.§!>§(param1);
         --this.§&1§;
         this.§-U§.§>;§(param1);
      }
      
      public function §<>§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§-U§.§<>§(param1,param2,param3))
         {
            this.§[!0§(param1);
         }
      }
      
      public function §?U§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§-U§.§%!E§(param1);
         var _loc4_:b2AABB = this.§-U§.§%!E§(param2);
         return _loc3_.§?U§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§-U§.GetUserData(param1);
      }
      
      public function §%!E§(param1:*) : b2AABB
      {
         return this.§-U§.§%!E§(param1);
      }
      
      public function §=d§() : int
      {
         return this.§&1§;
      }
      
      public function §',§(param1:Function) : void
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
         for each(queryProxy in this.§30§)
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
               _loc2_.§@W§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§?!_§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§-U§.§%!E§(queryProxy);
            this.§-U§.§8!$§(QueryCallback,fatAABB);
         }
         this.§30§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§-U§.GetUserData(primaryPair.§@W§);
            userDataB = this.§-U§.GetUserData(primaryPair.§?!_§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§@W§ != primaryPair.§@W§ || pair.§?!_§ != primaryPair.§?!_§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §8!$§(param1:Function, param2:b2AABB) : void
      {
         this.§-U§.§8!$§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§-U§.RayCast(param1,param2);
      }
      
      public function §?!]§() : void
      {
      }
      
      public function §4!4§(param1:int) : void
      {
         this.§-U§.§4!4§(param1);
      }
      
      private function §[!0§(param1:b2DynamicTreeNode) : void
      {
         this.§30§[this.§30§.length] = param1;
      }
      
      private function §!>§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§30§.indexOf(param1);
         this.§30§.splice(_loc2_,1);
      }
      
      private function §^S§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
