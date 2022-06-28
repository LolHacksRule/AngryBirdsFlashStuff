package §&!-§
{
   import §8>§.*;
   
   public class b2DynamicTreeBroadPhase implements §>D§
   {
       
      
      private var §9h§:b2DynamicTree;
      
      private var §!!0§:int;
      
      private var §1,§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§9h§ = new b2DynamicTree();
         this.§1,§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §2!9§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§9h§.§2!9§(param1,param2);
         ++this.§!!0§;
         this.§!<§(_loc3_);
         return _loc3_;
      }
      
      public function §"!=§(param1:*) : void
      {
         this.§6u§(param1);
         --this.§!!0§;
         this.§9h§.§"!=§(param1);
      }
      
      public function §5!O§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§9h§.§5!O§(param1,param2,param3))
         {
            this.§!<§(param1);
         }
      }
      
      public function §'V§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9h§.§<!q§(param1);
         var _loc4_:b2AABB = this.§9h§.§<!q§(param2);
         return _loc3_.§'V§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9h§.GetUserData(param1);
      }
      
      public function §<!q§(param1:*) : b2AABB
      {
         return this.§9h§.§<!q§(param1);
      }
      
      public function §"!F§() : int
      {
         return this.§!!0§;
      }
      
      public function §`h§(param1:Function) : void
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
         for each(queryProxy in this.§1,§)
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
               _loc2_.§5R§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§0D§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§9h§.§<!q§(queryProxy);
            this.§9h§.§&!]§(QueryCallback,fatAABB);
         }
         this.§1,§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§9h§.GetUserData(primaryPair.§5R§);
            userDataB = this.§9h§.GetUserData(primaryPair.§0D§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§5R§ != primaryPair.§5R§ || pair.§0D§ != primaryPair.§0D§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §&!]§(param1:Function, param2:b2AABB) : void
      {
         this.§9h§.§&!]§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§9h§.RayCast(param1,param2);
      }
      
      public function §<!3§() : void
      {
      }
      
      public function §]!§(param1:int) : void
      {
         this.§9h§.§]!§(param1);
      }
      
      private function §!<§(param1:b2DynamicTreeNode) : void
      {
         this.§1,§[this.§1,§.length] = param1;
      }
      
      private function §6u§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§1,§.indexOf(param1);
         this.§1,§.splice(_loc2_,1);
      }
      
      private function §>!?§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
