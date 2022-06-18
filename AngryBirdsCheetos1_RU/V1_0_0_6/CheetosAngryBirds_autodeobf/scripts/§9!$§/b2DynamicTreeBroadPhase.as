package §9!$§
{
   import §3q§.*;
   
   public class b2DynamicTreeBroadPhase implements §&!8§
   {
       
      
      private var §,K§:b2DynamicTree;
      
      private var §+!>§:int;
      
      private var §1P§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§,K§ = new b2DynamicTree();
         this.§1P§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §&w§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§,K§.§&w§(param1,param2);
         ++this.§+!>§;
         this.§[!,§(_loc3_);
         return _loc3_;
      }
      
      public function §-k§(param1:*) : void
      {
         this.§1u§(param1);
         --this.§+!>§;
         this.§,K§.§-k§(param1);
      }
      
      public function §<!D§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§,K§.§<!D§(param1,param2,param3))
         {
            this.§[!,§(param1);
         }
      }
      
      public function §1?§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§,K§.§"!?§(param1);
         var _loc4_:b2AABB = this.§,K§.§"!?§(param2);
         return _loc3_.§1?§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§,K§.GetUserData(param1);
      }
      
      public function §"!?§(param1:*) : b2AABB
      {
         return this.§,K§.§"!?§(param1);
      }
      
      public function §>L§() : int
      {
         return this.§+!>§;
      }
      
      public function §%T§(param1:Function) : void
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
         for each(queryProxy in this.§1P§)
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
               _loc2_.§;`§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§?!5§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§,K§.§"!?§(queryProxy);
            this.§,K§.§<!G§(QueryCallback,fatAABB);
         }
         this.§1P§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§,K§.GetUserData(primaryPair.§;`§);
            userDataB = this.§,K§.GetUserData(primaryPair.§?!5§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§;`§ != primaryPair.§;`§ || pair.§?!5§ != primaryPair.§?!5§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §<!G§(param1:Function, param2:b2AABB) : void
      {
         this.§,K§.§<!G§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§,K§.RayCast(param1,param2);
      }
      
      public function §<X§() : void
      {
      }
      
      public function §>v§(param1:int) : void
      {
         this.§,K§.§>v§(param1);
      }
      
      private function §[!,§(param1:b2DynamicTreeNode) : void
      {
         this.§1P§[this.§1P§.length] = param1;
      }
      
      private function §1u§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§1P§.indexOf(param1);
         this.§1P§.splice(_loc2_,1);
      }
      
      private function §;x§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
