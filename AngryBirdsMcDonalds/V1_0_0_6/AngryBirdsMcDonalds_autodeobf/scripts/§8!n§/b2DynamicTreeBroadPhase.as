package §8!n§
{
   import §@![§.*;
   
   public class b2DynamicTreeBroadPhase implements §>=§
   {
       
      
      private var §^+§:b2DynamicTree;
      
      private var §9!7§:int;
      
      private var §,!9§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§^+§ = new b2DynamicTree();
         this.§,!9§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function § set§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§^+§.§ set§(param1,param2);
         ++this.§9!7§;
         this.§%N§(_loc3_);
         return _loc3_;
      }
      
      public function §#j§(param1:*) : void
      {
         this.§%!>§(param1);
         --this.§9!7§;
         this.§^+§.§#j§(param1);
      }
      
      public function §+!L§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§^+§.§+!L§(param1,param2,param3))
         {
            this.§%N§(param1);
         }
      }
      
      public function §!![§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§^+§.§3!H§(param1);
         var _loc4_:b2AABB = this.§^+§.§3!H§(param2);
         return _loc3_.§!![§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§^+§.GetUserData(param1);
      }
      
      public function §3!H§(param1:*) : b2AABB
      {
         return this.§^+§.§3!H§(param1);
      }
      
      public function §6!j§() : int
      {
         return this.§9!7§;
      }
      
      public function §%!c§(param1:Function) : void
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
         for each(queryProxy in this.§,!9§)
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
               _loc2_.§1!'§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§<!j§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§^+§.§3!H§(queryProxy);
            this.§^+§.§9!m§(QueryCallback,fatAABB);
         }
         this.§,!9§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§^+§.GetUserData(primaryPair.§1!'§);
            userDataB = this.§^+§.GetUserData(primaryPair.§<!j§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§1!'§ != primaryPair.§1!'§ || pair.§<!j§ != primaryPair.§<!j§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §9!m§(param1:Function, param2:b2AABB) : void
      {
         this.§^+§.§9!m§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§^+§.RayCast(param1,param2);
      }
      
      public function §>H§() : void
      {
      }
      
      public function §"!A§(param1:int) : void
      {
         this.§^+§.§"!A§(param1);
      }
      
      private function §%N§(param1:b2DynamicTreeNode) : void
      {
         this.§,!9§[this.§,!9§.length] = param1;
      }
      
      private function §%!>§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§,!9§.indexOf(param1);
         this.§,!9§.splice(_loc2_,1);
      }
      
      private function §4!<§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
