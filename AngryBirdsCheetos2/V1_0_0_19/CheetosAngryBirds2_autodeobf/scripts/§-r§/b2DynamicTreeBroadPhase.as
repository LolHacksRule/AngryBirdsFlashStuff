package §-r§
{
   import §6!H§.*;
   
   public class b2DynamicTreeBroadPhase implements §@C§
   {
       
      
      private var §-o§:b2DynamicTree;
      
      private var §?w§:int;
      
      private var §=u§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§-o§ = new b2DynamicTree();
         this.§=u§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §1<§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§-o§.§1<§(param1,param2);
         ++this.§?w§;
         this.§8!J§(_loc3_);
         return _loc3_;
      }
      
      public function §%!4§(param1:*) : void
      {
         this.§&,§(param1);
         --this.§?w§;
         this.§-o§.§%!4§(param1);
      }
      
      public function §-H§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§-o§.§-H§(param1,param2,param3))
         {
            this.§8!J§(param1);
         }
      }
      
      public function §"!F§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§-o§.§4!^§(param1);
         var _loc4_:b2AABB = this.§-o§.§4!^§(param2);
         return _loc3_.§"!F§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§-o§.GetUserData(param1);
      }
      
      public function §4!^§(param1:*) : b2AABB
      {
         return this.§-o§.§4!^§(param1);
      }
      
      public function §<Q§() : int
      {
         return this.§?w§;
      }
      
      public function §]@§(param1:Function) : void
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
         for each(queryProxy in this.§=u§)
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
               _loc2_.§-C§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§%!J§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§-o§.§4!^§(queryProxy);
            this.§-o§.§#c§(QueryCallback,fatAABB);
         }
         this.§=u§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§-o§.GetUserData(primaryPair.§-C§);
            userDataB = this.§-o§.GetUserData(primaryPair.§%!J§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§-C§ != primaryPair.§-C§ || pair.§%!J§ != primaryPair.§%!J§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §#c§(param1:Function, param2:b2AABB) : void
      {
         this.§-o§.§#c§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§-o§.RayCast(param1,param2);
      }
      
      public function §6!<§() : void
      {
      }
      
      public function §>!R§(param1:int) : void
      {
         this.§-o§.§>!R§(param1);
      }
      
      private function §8!J§(param1:b2DynamicTreeNode) : void
      {
         this.§=u§[this.§=u§.length] = param1;
      }
      
      private function §&,§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§=u§.indexOf(param1);
         this.§=u§.splice(_loc2_,1);
      }
      
      private function §2!U§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
