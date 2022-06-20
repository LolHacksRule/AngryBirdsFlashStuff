package §6!d§
{
   import §!"8§.*;
   
   public class b2DynamicTreeBroadPhase implements §`O§
   {
       
      
      private var §1"?§:b2DynamicTree;
      
      private var §2e§:int;
      
      private var §#>§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§1"?§ = new b2DynamicTree();
         this.§#>§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §`!;§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§1"?§.§`!;§(param1,param2);
         ++this.§2e§;
         this.§ !K§(_loc3_);
         return _loc3_;
      }
      
      public function §]o§(param1:*) : void
      {
         this.§>A§(param1);
         --this.§2e§;
         this.§1"?§.§]o§(param1);
      }
      
      public function §""$§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§1"?§.§""$§(param1,param2,param3))
         {
            this.§ !K§(param1);
         }
      }
      
      public function §6!v§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§1"?§.§]!1§(param1);
         var _loc4_:b2AABB = this.§1"?§.§]!1§(param2);
         return _loc3_.§6!v§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§1"?§.GetUserData(param1);
      }
      
      public function §]!1§(param1:*) : b2AABB
      {
         return this.§1"?§.§]!1§(param1);
      }
      
      public function §1!R§() : int
      {
         return this.§2e§;
      }
      
      public function §]"-§(param1:Function) : void
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
         for each(queryProxy in this.§#>§)
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
               _loc2_.§`+§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§%!i§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§1"?§.§]!1§(queryProxy);
            this.§1"?§.§+!M§(QueryCallback,fatAABB);
         }
         this.§#>§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§1"?§.GetUserData(primaryPair.§`+§);
            userDataB = this.§1"?§.GetUserData(primaryPair.§%!i§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§`+§ != primaryPair.§`+§ || pair.§%!i§ != primaryPair.§%!i§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §+!M§(param1:Function, param2:b2AABB) : void
      {
         this.§1"?§.§+!M§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§1"?§.RayCast(param1,param2);
      }
      
      public function §<!Y§() : void
      {
      }
      
      public function §3!T§(param1:int) : void
      {
         this.§1"?§.§3!T§(param1);
      }
      
      private function § !K§(param1:b2DynamicTreeNode) : void
      {
         this.§#>§[this.§#>§.length] = param1;
      }
      
      private function §>A§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§#>§.indexOf(param1);
         this.§#>§.splice(_loc2_,1);
      }
      
      private function §0"A§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
