package §<!^§
{
   import §&!+§.*;
   
   public class b2DynamicTreeBroadPhase implements § !$§
   {
       
      
      private var §@!J§:b2DynamicTree;
      
      private var §<!6§:int;
      
      private var §4g§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§@!J§ = new b2DynamicTree();
         this.§4g§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §-!>§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§@!J§.§-!>§(param1,param2);
         ++this.§<!6§;
         this.§5!>§(_loc3_);
         return _loc3_;
      }
      
      public function §2x§(param1:*) : void
      {
         this.§#!O§(param1);
         --this.§<!6§;
         this.§@!J§.§2x§(param1);
      }
      
      public function §4[§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§@!J§.§4[§(param1,param2,param3))
         {
            this.§5!>§(param1);
         }
      }
      
      public function §]g§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§@!J§.§9!F§(param1);
         var _loc4_:b2AABB = this.§@!J§.§9!F§(param2);
         return _loc3_.§]g§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§@!J§.GetUserData(param1);
      }
      
      public function §9!F§(param1:*) : b2AABB
      {
         return this.§@!J§.§9!F§(param1);
      }
      
      public function §8V§() : int
      {
         return this.§<!6§;
      }
      
      public function §!f§(param1:Function) : void
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
         for each(queryProxy in this.§4g§)
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
               _loc2_.§9!`§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§;?§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§@!J§.§9!F§(queryProxy);
            this.§@!J§.§=G§(QueryCallback,fatAABB);
         }
         this.§4g§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§@!J§.GetUserData(primaryPair.§9!`§);
            userDataB = this.§@!J§.GetUserData(primaryPair.§;?§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§9!`§ != primaryPair.§9!`§ || pair.§;?§ != primaryPair.§;?§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §=G§(param1:Function, param2:b2AABB) : void
      {
         this.§@!J§.§=G§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§@!J§.RayCast(param1,param2);
      }
      
      public function §8!§() : void
      {
      }
      
      public function §"!8§(param1:int) : void
      {
         this.§@!J§.§"!8§(param1);
      }
      
      private function §5!>§(param1:b2DynamicTreeNode) : void
      {
         this.§4g§[this.§4g§.length] = param1;
      }
      
      private function §#!O§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§4g§.indexOf(param1);
         this.§4g§.splice(_loc2_,1);
      }
      
      private function §#!5§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
