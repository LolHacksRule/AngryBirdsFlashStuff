package §[!Z§
{
   import §-!G§.*;
   
   public class b2DynamicTreeBroadPhase implements §8!1§
   {
       
      
      private var §#"7§:b2DynamicTree;
      
      private var §%a§:int;
      
      private var §8,§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§#"7§ = new b2DynamicTree();
         this.§8,§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function § !#§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§#"7§.§ !#§(param1,param2);
         ++this.§%a§;
         this.§-b§(_loc3_);
         return _loc3_;
      }
      
      public function §7y§(param1:*) : void
      {
         this.§!!E§(param1);
         --this.§%a§;
         this.§#"7§.§7y§(param1);
      }
      
      public function §;!e§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§#"7§.§;!e§(param1,param2,param3))
         {
            this.§-b§(param1);
         }
      }
      
      public function §<!O§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§#"7§.§@!G§(param1);
         var _loc4_:b2AABB = this.§#"7§.§@!G§(param2);
         return _loc3_.§<!O§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§#"7§.GetUserData(param1);
      }
      
      public function §@!G§(param1:*) : b2AABB
      {
         return this.§#"7§.§@!G§(param1);
      }
      
      public function §?!I§() : int
      {
         return this.§%a§;
      }
      
      public function §+p§(param1:Function) : void
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
         for each(queryProxy in this.§8,§)
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
               _loc2_.§=!#§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§ 3§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§#"7§.§@!G§(queryProxy);
            this.§#"7§.§1!h§(QueryCallback,fatAABB);
         }
         this.§8,§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§#"7§.GetUserData(primaryPair.§=!#§);
            userDataB = this.§#"7§.GetUserData(primaryPair.§ 3§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§=!#§ != primaryPair.§=!#§ || pair.§ 3§ != primaryPair.§ 3§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §1!h§(param1:Function, param2:b2AABB) : void
      {
         this.§#"7§.§1!h§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§#"7§.RayCast(param1,param2);
      }
      
      public function §""&§() : void
      {
      }
      
      public function §6"'§(param1:int) : void
      {
         this.§#"7§.§6"'§(param1);
      }
      
      private function §-b§(param1:b2DynamicTreeNode) : void
      {
         this.§8,§[this.§8,§.length] = param1;
      }
      
      private function §!!E§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§8,§.indexOf(param1);
         this.§8,§.splice(_loc2_,1);
      }
      
      private function §+!J§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
