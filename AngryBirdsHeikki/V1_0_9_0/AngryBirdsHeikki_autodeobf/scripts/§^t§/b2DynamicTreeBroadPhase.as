package §^t§
{
   import § !_§.*;
   
   public class b2DynamicTreeBroadPhase implements §8]§
   {
       
      
      private var §1!d§:b2DynamicTree;
      
      private var § true§:int;
      
      private var §!!-§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§1!d§ = new b2DynamicTree();
         this.§!!-§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'W§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§1!d§.§'W§(param1,param2);
         ++this.§ true§;
         this.§;e§(_loc3_);
         return _loc3_;
      }
      
      public function §+!%§(param1:*) : void
      {
         this.§'D§(param1);
         --this.§ true§;
         this.§1!d§.§+!%§(param1);
      }
      
      public function §%E§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§1!d§.§%E§(param1,param2,param3))
         {
            this.§;e§(param1);
         }
      }
      
      public function §"!=§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§1!d§.§[Q§(param1);
         var _loc4_:b2AABB = this.§1!d§.§[Q§(param2);
         return _loc3_.§"!=§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§1!d§.GetUserData(param1);
      }
      
      public function §[Q§(param1:*) : b2AABB
      {
         return this.§1!d§.§[Q§(param1);
      }
      
      public function §+#§() : int
      {
         return this.§ true§;
      }
      
      public function §"B§(param1:Function) : void
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
         for each(queryProxy in this.§!!-§)
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
               _loc2_.§[3§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§3p§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§1!d§.§[Q§(queryProxy);
            this.§1!d§.§;k§(QueryCallback,fatAABB);
         }
         this.§!!-§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§1!d§.GetUserData(primaryPair.§[3§);
            userDataB = this.§1!d§.GetUserData(primaryPair.§3p§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§[3§ != primaryPair.§[3§ || pair.§3p§ != primaryPair.§3p§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §;k§(param1:Function, param2:b2AABB) : void
      {
         this.§1!d§.§;k§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§1!d§.RayCast(param1,param2);
      }
      
      public function §0![§() : void
      {
      }
      
      public function §&H§(param1:int) : void
      {
         this.§1!d§.§&H§(param1);
      }
      
      private function §;e§(param1:b2DynamicTreeNode) : void
      {
         this.§!!-§[this.§!!-§.length] = param1;
      }
      
      private function §'D§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§!!-§.indexOf(param1);
         this.§!!-§.splice(_loc2_,1);
      }
      
      private function §6B§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
