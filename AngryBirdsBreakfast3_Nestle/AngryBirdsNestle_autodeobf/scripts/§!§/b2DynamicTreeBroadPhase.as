package §!§
{
   import §@!E§.*;
   
   public class b2DynamicTreeBroadPhase implements §5!u§
   {
       
      
      private var §#!x§:b2DynamicTree;
      
      private var §var §:int;
      
      private var §[!?§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§#!x§ = new b2DynamicTree();
         this.§[!?§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §=!b§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§#!x§.§=!b§(param1,param2);
         ++this.§var §;
         this.§<!p§(_loc3_);
         return _loc3_;
      }
      
      public function §4d§(param1:*) : void
      {
         this.§0f§(param1);
         --this.§var §;
         this.§#!x§.§4d§(param1);
      }
      
      public function §;!n§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§#!x§.§;!n§(param1,param2,param3))
         {
            this.§<!p§(param1);
         }
      }
      
      public function §4I§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§#!x§.dynamic(param1);
         var _loc4_:b2AABB = this.§#!x§.dynamic(param2);
         return _loc3_.§4I§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§#!x§.GetUserData(param1);
      }
      
      public function dynamic(param1:*) : b2AABB
      {
         return this.§#!x§.dynamic(param1);
      }
      
      public function §7!W§() : int
      {
         return this.§var §;
      }
      
      public function §0!Y§(param1:Function) : void
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
         for each(queryProxy in this.§[!?§)
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
               _loc2_.§+!l§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§!!5§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§#!x§.dynamic(queryProxy);
            this.§#!x§.§^C§(QueryCallback,fatAABB);
         }
         this.§[!?§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§#!x§.GetUserData(primaryPair.§+!l§);
            userDataB = this.§#!x§.GetUserData(primaryPair.§!!5§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§+!l§ != primaryPair.§+!l§ || pair.§!!5§ != primaryPair.§!!5§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §^C§(param1:Function, param2:b2AABB) : void
      {
         this.§#!x§.§^C§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§#!x§.RayCast(param1,param2);
      }
      
      public function §@2§() : void
      {
      }
      
      public function §%"%§(param1:int) : void
      {
         this.§#!x§.§%"%§(param1);
      }
      
      private function §<!p§(param1:b2DynamicTreeNode) : void
      {
         this.§[!?§[this.§[!?§.length] = param1;
      }
      
      private function §0f§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§[!?§.indexOf(param1);
         this.§[!?§.splice(_loc2_,1);
      }
      
      private function §#!§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
