package §3m§
{
   import §&!S§.*;
   
   public class b2DynamicTreeBroadPhase implements §+!q§
   {
       
      
      private var §"!s§:b2DynamicTree;
      
      private var §[!G§:int;
      
      private var §9!e§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§"!s§ = new b2DynamicTree();
         this.§9!e§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §`!D§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§"!s§.§`!D§(param1,param2);
         ++this.§[!G§;
         this.§1!9§(_loc3_);
         return _loc3_;
      }
      
      public function §'!d§(param1:*) : void
      {
         this.§>!i§(param1);
         --this.§[!G§;
         this.§"!s§.§'!d§(param1);
      }
      
      public function §`">§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§"!s§.§`">§(param1,param2,param3))
         {
            this.§1!9§(param1);
         }
      }
      
      public function §7"3§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§"!s§.§#!S§(param1);
         var _loc4_:b2AABB = this.§"!s§.§#!S§(param2);
         return _loc3_.§7"3§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§"!s§.GetUserData(param1);
      }
      
      public function §#!S§(param1:*) : b2AABB
      {
         return this.§"!s§.§#!S§(param1);
      }
      
      public function §9A§() : int
      {
         return this.§[!G§;
      }
      
      public function §[j§(param1:Function) : void
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
         for each(queryProxy in this.§9!e§)
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
               _loc2_.§@!§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§'%§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§"!s§.§#!S§(queryProxy);
            this.§"!s§.§ !<§(QueryCallback,fatAABB);
         }
         this.§9!e§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§"!s§.GetUserData(primaryPair.§@!§);
            userDataB = this.§"!s§.GetUserData(primaryPair.§'%§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§@!§ != primaryPair.§@!§ || pair.§'%§ != primaryPair.§'%§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function § !<§(param1:Function, param2:b2AABB) : void
      {
         this.§"!s§.§ !<§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§"!s§.RayCast(param1,param2);
      }
      
      public function §<!v§() : void
      {
      }
      
      public function §3"+§(param1:int) : void
      {
         this.§"!s§.§3"+§(param1);
      }
      
      private function §1!9§(param1:b2DynamicTreeNode) : void
      {
         this.§9!e§[this.§9!e§.length] = param1;
      }
      
      private function §>!i§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§9!e§.indexOf(param1);
         this.§9!e§.splice(_loc2_,1);
      }
      
      private function §;!2§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
