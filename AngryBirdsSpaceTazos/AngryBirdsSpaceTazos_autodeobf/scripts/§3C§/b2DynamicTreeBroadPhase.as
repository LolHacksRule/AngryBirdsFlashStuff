package §3c§
{
   import §9t§.*;
   
   public class b2DynamicTreeBroadPhase implements §>!e§
   {
       
      
      private var §+!6§:b2DynamicTree;
      
      private var §=!x§:int;
      
      private var §;h§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§+!6§ = new b2DynamicTree();
         this.§;h§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'!C§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§+!6§.§'!C§(param1,param2);
         ++this.§=!x§;
         this.§^!<§(_loc3_);
         return _loc3_;
      }
      
      public function §&1§(param1:*) : void
      {
         this.§=l§(param1);
         --this.§=!x§;
         this.§+!6§.§&1§(param1);
      }
      
      public function §1i§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§+!6§.§1i§(param1,param2,param3))
         {
            this.§^!<§(param1);
         }
      }
      
      public function §5"0§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§+!6§.§%!g§(param1);
         var _loc4_:b2AABB = this.§+!6§.§%!g§(param2);
         return _loc3_.§5"0§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§+!6§.GetUserData(param1);
      }
      
      public function §%!g§(param1:*) : b2AABB
      {
         return this.§+!6§.§%!g§(param1);
      }
      
      public function §0!y§() : int
      {
         return this.§=!x§;
      }
      
      public function § J§(param1:Function) : void
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
         for each(queryProxy in this.§;h§)
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
               _loc2_.§3">§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§&!"§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§+!6§.§%!g§(queryProxy);
            this.§+!6§.§6!?§(QueryCallback,fatAABB);
         }
         this.§;h§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§+!6§.GetUserData(primaryPair.§3">§);
            userDataB = this.§+!6§.GetUserData(primaryPair.§&!"§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§3">§ != primaryPair.§3">§ || pair.§&!"§ != primaryPair.§&!"§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §6!?§(param1:Function, param2:b2AABB) : void
      {
         this.§+!6§.§6!?§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§+!6§.RayCast(param1,param2);
      }
      
      public function §,E§() : void
      {
      }
      
      public function §+!P§(param1:int) : void
      {
         this.§+!6§.§+!P§(param1);
      }
      
      private function §^!<§(param1:b2DynamicTreeNode) : void
      {
         this.§;h§[this.§;h§.length] = param1;
      }
      
      private function §=l§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§;h§.indexOf(param1);
         this.§;h§.splice(_loc2_,1);
      }
      
      private function §["=§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
