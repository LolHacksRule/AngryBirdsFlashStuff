package §6f§
{
   import §,!k§.*;
   
   public class b2DynamicTreeBroadPhase implements §?"§
   {
       
      
      private var §0!H§:b2DynamicTree;
      
      private var §!g§:int;
      
      private var § !;§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§0!H§ = new b2DynamicTree();
         this.§ !;§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §?!R§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§0!H§.§?!R§(param1,param2);
         ++this.§!g§;
         this.§=!2§(_loc3_);
         return _loc3_;
      }
      
      public function §;!b§(param1:*) : void
      {
         this.§#^§(param1);
         --this.§!g§;
         this.§0!H§.§;!b§(param1);
      }
      
      public function §7!§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§0!H§.§7!§(param1,param2,param3))
         {
            this.§=!2§(param1);
         }
      }
      
      public function §;!s§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§0!H§.§+x§(param1);
         var _loc4_:b2AABB = this.§0!H§.§+x§(param2);
         return _loc3_.§;!s§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§0!H§.GetUserData(param1);
      }
      
      public function §+x§(param1:*) : b2AABB
      {
         return this.§0!H§.§+x§(param1);
      }
      
      public function §throw§() : int
      {
         return this.§!g§;
      }
      
      public function §;+§(param1:Function) : void
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
         for each(queryProxy in this.§ !;§)
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
               _loc2_.§1!J§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§-!?§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§0!H§.§+x§(queryProxy);
            this.§0!H§.§'v§(QueryCallback,fatAABB);
         }
         this.§ !;§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§0!H§.GetUserData(primaryPair.§1!J§);
            userDataB = this.§0!H§.GetUserData(primaryPair.§-!?§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§1!J§ != primaryPair.§1!J§ || pair.§-!?§ != primaryPair.§-!?§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §'v§(param1:Function, param2:b2AABB) : void
      {
         this.§0!H§.§'v§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§0!H§.RayCast(param1,param2);
      }
      
      public function §1k§() : void
      {
      }
      
      public function §1!s§(param1:int) : void
      {
         this.§0!H§.§1!s§(param1);
      }
      
      private function §=!2§(param1:b2DynamicTreeNode) : void
      {
         this.§ !;§[this.§ !;§.length] = param1;
      }
      
      private function §#^§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§ !;§.indexOf(param1);
         this.§ !;§.splice(_loc2_,1);
      }
      
      private function §'!>§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
