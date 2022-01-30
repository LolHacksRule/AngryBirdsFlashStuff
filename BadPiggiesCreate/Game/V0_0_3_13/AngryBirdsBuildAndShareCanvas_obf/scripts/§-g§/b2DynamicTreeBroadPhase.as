package §-g§
{
   import §1!z§.*;
   
   public class b2DynamicTreeBroadPhase implements §<!D§
   {
       
      
      private var §],§:b2DynamicTree;
      
      private var §[!8§:int;
      
      private var §7!I§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§],§ = new b2DynamicTree();
         this.§7!I§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §3p§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§],§.§3p§(param1,param2);
         ++this.§[!8§;
         this.§?Y§(_loc3_);
         return _loc3_;
      }
      
      public function §1k§(param1:*) : void
      {
         this.§>5§(param1);
         --this.§[!8§;
         this.§],§.§1k§(param1);
      }
      
      public function §]!G§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§],§.§]!G§(param1,param2,param3))
         {
            this.§?Y§(param1);
         }
      }
      
      public function §,d§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§],§.§8!r§(param1);
         var _loc4_:b2AABB = this.§],§.§8!r§(param2);
         return _loc3_.§,d§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§],§.GetUserData(param1);
      }
      
      public function §8!r§(param1:*) : b2AABB
      {
         return this.§],§.§8!r§(param1);
      }
      
      public function §9!-§() : int
      {
         return this.§[!8§;
      }
      
      public function §2I§(param1:Function) : void
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
         for each(queryProxy in this.§7!I§)
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
               _loc2_.§7!Z§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§[;§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§],§.§8!r§(queryProxy);
            this.§],§.§6t§(QueryCallback,fatAABB);
         }
         this.§7!I§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§],§.GetUserData(primaryPair.§7!Z§);
            userDataB = this.§],§.GetUserData(primaryPair.§[;§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§7!Z§ != primaryPair.§7!Z§ || pair.§[;§ != primaryPair.§[;§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §6t§(param1:Function, param2:b2AABB) : void
      {
         this.§],§.§6t§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§],§.RayCast(param1,param2);
      }
      
      public function §%X§() : void
      {
      }
      
      public function §1" §(param1:int) : void
      {
         this.§],§.§1" §(param1);
      }
      
      private function §?Y§(param1:b2DynamicTreeNode) : void
      {
         this.§7!I§[this.§7!I§.length] = param1;
      }
      
      private function §>5§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§7!I§.indexOf(param1);
         this.§7!I§.splice(_loc2_,1);
      }
      
      private function §?!A§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
