package §>r§
{
   import §7"A§.*;
   
   public class b2DynamicTreeBroadPhase implements §2";§
   {
       
      
      private var §-"3§:b2DynamicTree;
      
      private var §5C§:int;
      
      private var §="2§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§-"3§ = new b2DynamicTree();
         this.§="2§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §4"6§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§-"3§.§4"6§(param1,param2);
         ++this.§5C§;
         this.§2!§(_loc3_);
         return _loc3_;
      }
      
      public function §<!i§(param1:*) : void
      {
         this.§+X§(param1);
         --this.§5C§;
         this.§-"3§.§<!i§(param1);
      }
      
      public function §9#7§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§-"3§.§9#7§(param1,param2,param3))
         {
            this.§2!§(param1);
         }
      }
      
      public function §+">§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§-"3§.§7!T§(param1);
         var _loc4_:b2AABB = this.§-"3§.§7!T§(param2);
         return _loc3_.§+">§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§-"3§.GetUserData(param1);
      }
      
      public function §7!T§(param1:*) : b2AABB
      {
         return this.§-"3§.§7!T§(param1);
      }
      
      public function §9%§() : int
      {
         return this.§5C§;
      }
      
      public function § #§(param1:Function) : void
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
         for each(queryProxy in this.§="2§)
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
               _loc2_.§'"d§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§ "l§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§-"3§.§7!T§(queryProxy);
            this.§-"3§.§7#-§(QueryCallback,fatAABB);
         }
         this.§="2§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§-"3§.GetUserData(primaryPair.§'"d§);
            userDataB = this.§-"3§.GetUserData(primaryPair.§ "l§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§'"d§ != primaryPair.§'"d§ || pair.§ "l§ != primaryPair.§ "l§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §7#-§(param1:Function, param2:b2AABB) : void
      {
         this.§-"3§.§7#-§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§-"3§.RayCast(param1,param2);
      }
      
      public function §%!M§() : void
      {
      }
      
      public function §;";§(param1:int) : void
      {
         this.§-"3§.§;";§(param1);
      }
      
      private function §2!§(param1:b2DynamicTreeNode) : void
      {
         this.§="2§[this.§="2§.length] = param1;
      }
      
      private function §+X§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§="2§.indexOf(param1);
         this.§="2§.splice(_loc2_,1);
      }
      
      private function §,!L§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
