package §?F§
{
   import §6V§.*;
   
   public class b2DynamicTreeBroadPhase implements §"l§
   {
       
      
      private var §0$§:b2DynamicTree;
      
      private var §<%§:int;
      
      private var §[!b§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§0$§ = new b2DynamicTree();
         this.§[!b§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §0A§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§0$§.§0A§(param1,param2);
         ++this.§<%§;
         this.§!O§(_loc3_);
         return _loc3_;
      }
      
      public function §7T§(param1:*) : void
      {
         this.§`Q§(param1);
         --this.§<%§;
         this.§0$§.§7T§(param1);
      }
      
      public function §=g§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§0$§.§=g§(param1,param2,param3))
         {
            this.§!O§(param1);
         }
      }
      
      public function §13§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§0$§.§"s§(param1);
         var _loc4_:b2AABB = this.§0$§.§"s§(param2);
         return _loc3_.§13§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§0$§.GetUserData(param1);
      }
      
      public function §"s§(param1:*) : b2AABB
      {
         return this.§0$§.§"s§(param1);
      }
      
      public function §98§() : int
      {
         return this.§<%§;
      }
      
      public function §``§(param1:Function) : void
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
         for each(queryProxy in this.§[!b§)
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
               _loc2_.§^!F§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§`!S§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§0$§.§"s§(queryProxy);
            this.§0$§.§]2§(QueryCallback,fatAABB);
         }
         this.§[!b§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§0$§.GetUserData(primaryPair.§^!F§);
            userDataB = this.§0$§.GetUserData(primaryPair.§`!S§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§^!F§ != primaryPair.§^!F§ || pair.§`!S§ != primaryPair.§`!S§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §]2§(param1:Function, param2:b2AABB) : void
      {
         this.§0$§.§]2§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§0$§.RayCast(param1,param2);
      }
      
      public function §;#§() : void
      {
      }
      
      public function §6!&§(param1:int) : void
      {
         this.§0$§.§6!&§(param1);
      }
      
      private function §!O§(param1:b2DynamicTreeNode) : void
      {
         this.§[!b§[this.§[!b§.length] = param1;
      }
      
      private function §`Q§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§[!b§.indexOf(param1);
         this.§[!b§.splice(_loc2_,1);
      }
      
      private function §#!P§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
