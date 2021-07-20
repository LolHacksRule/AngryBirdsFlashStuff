package § !0§
{
   import §7F§.*;
   
   public class b2DynamicTreeBroadPhase implements §[!8§
   {
       
      
      private var §5!b§:b2DynamicTree;
      
      private var § "H§:int;
      
      private var §9!3§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§5!b§ = new b2DynamicTree();
         this.§9!3§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §"!f§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§5!b§.§"!f§(param1,param2);
         ++this.§ "H§;
         this.§7H§(_loc3_);
         return _loc3_;
      }
      
      public function §="G§(param1:*) : void
      {
         this.§!"G§(param1);
         --this.§ "H§;
         this.§5!b§.§="G§(param1);
      }
      
      public function §7%§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§5!b§.§7%§(param1,param2,param3))
         {
            this.§7H§(param1);
         }
      }
      
      public function §;!r§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§5!b§.§>!S§(param1);
         var _loc4_:b2AABB = this.§5!b§.§>!S§(param2);
         return _loc3_.§;!r§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§5!b§.GetUserData(param1);
      }
      
      public function §>!S§(param1:*) : b2AABB
      {
         return this.§5!b§.§>!S§(param1);
      }
      
      public function §3!X§() : int
      {
         return this.§ "H§;
      }
      
      public function §?!e§(param1:Function) : void
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
         for each(queryProxy in this.§9!3§)
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
               _loc2_.§7!C§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§`"!§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§5!b§.§>!S§(queryProxy);
            this.§5!b§.§6t§(QueryCallback,fatAABB);
         }
         this.§9!3§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§5!b§.GetUserData(primaryPair.§7!C§);
            userDataB = this.§5!b§.GetUserData(primaryPair.§`"!§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§7!C§ != primaryPair.§7!C§ || pair.§`"!§ != primaryPair.§`"!§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §6t§(param1:Function, param2:b2AABB) : void
      {
         this.§5!b§.§6t§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§5!b§.RayCast(param1,param2);
      }
      
      public function §3"'§() : void
      {
      }
      
      public function §0w§(param1:int) : void
      {
         this.§5!b§.§0w§(param1);
      }
      
      private function §7H§(param1:b2DynamicTreeNode) : void
      {
         this.§9!3§[this.§9!3§.length] = param1;
      }
      
      private function §!"G§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§9!3§.indexOf(param1);
         this.§9!3§.splice(_loc2_,1);
      }
      
      private function § !D§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
