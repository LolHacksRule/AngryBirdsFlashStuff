package §?§
{
   import §+,§.*;
   
   public class b2DynamicTreeBroadPhase implements §"!2§
   {
       
      
      private var §0q§:b2DynamicTree;
      
      private var §!x§:int;
      
      private var §"!$§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§0q§ = new b2DynamicTree();
         this.§"!$§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §6B§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§0q§.§6B§(param1,param2);
         ++this.§!x§;
         this.§6r§(_loc3_);
         return _loc3_;
      }
      
      public function §%d§(param1:*) : void
      {
         this.§+!8§(param1);
         --this.§!x§;
         this.§0q§.§%d§(param1);
      }
      
      public function §!!0§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§0q§.§!!0§(param1,param2,param3))
         {
            this.§6r§(param1);
         }
      }
      
      public function §@!Z§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§0q§.§%+§(param1);
         var _loc4_:b2AABB = this.§0q§.§%+§(param2);
         return _loc3_.§@!Z§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§0q§.GetUserData(param1);
      }
      
      public function §%+§(param1:*) : b2AABB
      {
         return this.§0q§.§%+§(param1);
      }
      
      public function §-!+§() : int
      {
         return this.§!x§;
      }
      
      public function §4`§(param1:Function) : void
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
         for each(queryProxy in this.§"!$§)
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
               _loc2_.§,]§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§ !&§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§0q§.§%+§(queryProxy);
            this.§0q§.§8!]§(QueryCallback,fatAABB);
         }
         this.§"!$§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§0q§.GetUserData(primaryPair.§,]§);
            userDataB = this.§0q§.GetUserData(primaryPair.§ !&§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§,]§ != primaryPair.§,]§ || pair.§ !&§ != primaryPair.§ !&§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §8!]§(param1:Function, param2:b2AABB) : void
      {
         this.§0q§.§8!]§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§0q§.RayCast(param1,param2);
      }
      
      public function §4+§() : void
      {
      }
      
      public function §!p§(param1:int) : void
      {
         this.§0q§.§!p§(param1);
      }
      
      private function §6r§(param1:b2DynamicTreeNode) : void
      {
         this.§"!$§[this.§"!$§.length] = param1;
      }
      
      private function §+!8§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§"!$§.indexOf(param1);
         this.§"!$§.splice(_loc2_,1);
      }
      
      private function §"<§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
