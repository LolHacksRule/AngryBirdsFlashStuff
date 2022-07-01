package § 6§
{
   import §+L§.*;
   
   public class b2DynamicTreeBroadPhase implements §7!&§
   {
       
      
      private var §9s§:b2DynamicTree;
      
      private var §-!J§:int;
      
      private var § !d§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§9s§ = new b2DynamicTree();
         this.§ !d§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §8!9§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§9s§.§8!9§(param1,param2);
         ++this.§-!J§;
         this.§3!R§(_loc3_);
         return _loc3_;
      }
      
      public function §#!]§(param1:*) : void
      {
         this.§1!$§(param1);
         --this.§-!J§;
         this.§9s§.§#!]§(param1);
      }
      
      public function §%"7§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§9s§.§%"7§(param1,param2,param3))
         {
            this.§3!R§(param1);
         }
      }
      
      public function §&!P§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9s§.§4"&§(param1);
         var _loc4_:b2AABB = this.§9s§.§4"&§(param2);
         return _loc3_.§&!P§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9s§.GetUserData(param1);
      }
      
      public function §4"&§(param1:*) : b2AABB
      {
         return this.§9s§.§4"&§(param1);
      }
      
      public function §<!X§() : int
      {
         return this.§-!J§;
      }
      
      public function §?!J§(param1:Function) : void
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
         for each(queryProxy in this.§ !d§)
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
               _loc2_.§#!=§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§;P§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§9s§.§4"&§(queryProxy);
            this.§9s§.§^M§(QueryCallback,fatAABB);
         }
         this.§ !d§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§9s§.GetUserData(primaryPair.§#!=§);
            userDataB = this.§9s§.GetUserData(primaryPair.§;P§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§#!=§ != primaryPair.§#!=§ || pair.§;P§ != primaryPair.§;P§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §^M§(param1:Function, param2:b2AABB) : void
      {
         this.§9s§.§^M§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§9s§.RayCast(param1,param2);
      }
      
      public function §1=§() : void
      {
      }
      
      public function §>!Q§(param1:int) : void
      {
         this.§9s§.§>!Q§(param1);
      }
      
      private function §3!R§(param1:b2DynamicTreeNode) : void
      {
         this.§ !d§[this.§ !d§.length] = param1;
      }
      
      private function §1!$§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§ !d§.indexOf(param1);
         this.§ !d§.splice(_loc2_,1);
      }
      
      private function §3+§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
