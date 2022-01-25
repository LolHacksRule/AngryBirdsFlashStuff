package §!u§
{
   import §;h§.*;
   
   public class b2DynamicTreeBroadPhase implements §5c§
   {
       
      
      private var §'!$§:b2DynamicTree;
      
      private var §@!O§:int;
      
      private var §?N§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§'!$§ = new b2DynamicTree();
         this.§?N§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §7!@§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§'!$§.§7!@§(param1,param2);
         ++this.§@!O§;
         this.§4t§(_loc3_);
         return _loc3_;
      }
      
      public function §@q§(param1:*) : void
      {
         this.§@!T§(param1);
         --this.§@!O§;
         this.§'!$§.§@q§(param1);
      }
      
      public function §9!c§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§'!$§.§9!c§(param1,param2,param3))
         {
            this.§4t§(param1);
         }
      }
      
      public function §"!a§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§'!$§.§"![§(param1);
         var _loc4_:b2AABB = this.§'!$§.§"![§(param2);
         return _loc3_.§"!a§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§'!$§.GetUserData(param1);
      }
      
      public function §"![§(param1:*) : b2AABB
      {
         return this.§'!$§.§"![§(param1);
      }
      
      public function §!!]§() : int
      {
         return this.§@!O§;
      }
      
      public function §["§(param1:Function) : void
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
         for each(queryProxy in this.§?N§)
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
               _loc2_.§8G§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§@e§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§'!$§.§"![§(queryProxy);
            this.§'!$§.§`Z§(QueryCallback,fatAABB);
         }
         this.§?N§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§'!$§.GetUserData(primaryPair.§8G§);
            userDataB = this.§'!$§.GetUserData(primaryPair.§@e§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§8G§ != primaryPair.§8G§ || pair.§@e§ != primaryPair.§@e§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §`Z§(param1:Function, param2:b2AABB) : void
      {
         this.§'!$§.§`Z§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§'!$§.RayCast(param1,param2);
      }
      
      public function §^h§() : void
      {
      }
      
      public function §9!N§(param1:int) : void
      {
         this.§'!$§.§9!N§(param1);
      }
      
      private function §4t§(param1:b2DynamicTreeNode) : void
      {
         this.§?N§[this.§?N§.length] = param1;
      }
      
      private function §@!T§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§?N§.indexOf(param1);
         this.§?N§.splice(_loc2_,1);
      }
      
      private function §super§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
