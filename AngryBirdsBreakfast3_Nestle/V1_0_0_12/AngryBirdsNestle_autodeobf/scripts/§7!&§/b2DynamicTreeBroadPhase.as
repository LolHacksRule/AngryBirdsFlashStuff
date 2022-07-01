package §7!&§
{
   import §?"'§.*;
   
   public class b2DynamicTreeBroadPhase implements §;!p§
   {
       
      
      private var §0'§:b2DynamicTree;
      
      private var §>"3§:int;
      
      private var §#m§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§0'§ = new b2DynamicTree();
         this.§#m§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §-$§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§0'§.§-$§(param1,param2);
         ++this.§>"3§;
         this.§,"!§(_loc3_);
         return _loc3_;
      }
      
      public function §=§(param1:*) : void
      {
         this.§"t§(param1);
         --this.§>"3§;
         this.§0'§.§=§(param1);
      }
      
      public function §2v§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§0'§.§2v§(param1,param2,param3))
         {
            this.§,"!§(param1);
         }
      }
      
      public function § "0§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§0'§.§4"0§(param1);
         var _loc4_:b2AABB = this.§0'§.§4"0§(param2);
         return _loc3_.§ "0§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§0'§.GetUserData(param1);
      }
      
      public function §4"0§(param1:*) : b2AABB
      {
         return this.§0'§.§4"0§(param1);
      }
      
      public function §@!8§() : int
      {
         return this.§>"3§;
      }
      
      public function §[Y§(param1:Function) : void
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
         for each(queryProxy in this.§#m§)
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
               _loc2_.§@!n§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§[!D§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§0'§.§4"0§(queryProxy);
            this.§0'§.§;!m§(QueryCallback,fatAABB);
         }
         this.§#m§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§0'§.GetUserData(primaryPair.§@!n§);
            userDataB = this.§0'§.GetUserData(primaryPair.§[!D§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§@!n§ != primaryPair.§@!n§ || pair.§[!D§ != primaryPair.§[!D§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §;!m§(param1:Function, param2:b2AABB) : void
      {
         this.§0'§.§;!m§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§0'§.RayCast(param1,param2);
      }
      
      public function §!" §() : void
      {
      }
      
      public function §'c§(param1:int) : void
      {
         this.§0'§.§'c§(param1);
      }
      
      private function §,"!§(param1:b2DynamicTreeNode) : void
      {
         this.§#m§[this.§#m§.length] = param1;
      }
      
      private function §"t§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§#m§.indexOf(param1);
         this.§#m§.splice(_loc2_,1);
      }
      
      private function § 1§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
