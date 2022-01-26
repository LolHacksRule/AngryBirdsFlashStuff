package §7S§
{
   import §;U§.*;
   
   public class b2DynamicTreeBroadPhase implements §"!P§
   {
       
      
      private var §7X§:b2DynamicTree;
      
      private var §]s§:int;
      
      private var §5_§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§7X§ = new b2DynamicTree();
         this.§5_§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §0!3§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§7X§.§0!3§(param1,param2);
         ++this.§]s§;
         this.§"H§(_loc3_);
         return _loc3_;
      }
      
      public function §3N§(param1:*) : void
      {
         this.§2O§(param1);
         --this.§]s§;
         this.§7X§.§3N§(param1);
      }
      
      public function §-![§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§7X§.§-![§(param1,param2,param3))
         {
            this.§"H§(param1);
         }
      }
      
      public function §=o§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§7X§.§5!]§(param1);
         var _loc4_:b2AABB = this.§7X§.§5!]§(param2);
         return _loc3_.§=o§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§7X§.GetUserData(param1);
      }
      
      public function §5!]§(param1:*) : b2AABB
      {
         return this.§7X§.§5!]§(param1);
      }
      
      public function §+L§() : int
      {
         return this.§]s§;
      }
      
      public function §&A§(param1:Function) : void
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
         for each(queryProxy in this.§5_§)
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
               _loc2_.§,!]§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§#!;§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§7X§.§5!]§(queryProxy);
            this.§7X§.§=x§(QueryCallback,fatAABB);
         }
         this.§5_§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§7X§.GetUserData(primaryPair.§,!]§);
            userDataB = this.§7X§.GetUserData(primaryPair.§#!;§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§,!]§ != primaryPair.§,!]§ || pair.§#!;§ != primaryPair.§#!;§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §=x§(param1:Function, param2:b2AABB) : void
      {
         this.§7X§.§=x§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§7X§.RayCast(param1,param2);
      }
      
      public function §`!Q§() : void
      {
      }
      
      public function §<!C§(param1:int) : void
      {
         this.§7X§.§<!C§(param1);
      }
      
      private function §"H§(param1:b2DynamicTreeNode) : void
      {
         this.§5_§[this.§5_§.length] = param1;
      }
      
      private function §2O§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§5_§.indexOf(param1);
         this.§5_§.splice(_loc2_,1);
      }
      
      private function §,e§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
