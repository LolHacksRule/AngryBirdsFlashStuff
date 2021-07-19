package §%4§
{
   import §<!a§.*;
   
   public class b2DynamicTreeBroadPhase implements §0w§
   {
       
      
      private var § !o§:b2DynamicTree;
      
      private var §3!#§:int;
      
      private var §@!-§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§ !o§ = new b2DynamicTree();
         this.§@!-§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §1S§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§ !o§.§1S§(param1,param2);
         ++this.§3!#§;
         this.§<!`§(_loc3_);
         return _loc3_;
      }
      
      public function §`q§(param1:*) : void
      {
         this.§[B§(param1);
         --this.§3!#§;
         this.§ !o§.§`q§(param1);
      }
      
      public function §4#§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§ !o§.§4#§(param1,param2,param3))
         {
            this.§<!`§(param1);
         }
      }
      
      public function §6m§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§ !o§.§=!p§(param1);
         var _loc4_:b2AABB = this.§ !o§.§=!p§(param2);
         return _loc3_.§6m§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§ !o§.GetUserData(param1);
      }
      
      public function §=!p§(param1:*) : b2AABB
      {
         return this.§ !o§.§=!p§(param1);
      }
      
      public function §?!a§() : int
      {
         return this.§3!#§;
      }
      
      public function §=!o§(param1:Function) : void
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
         for each(queryProxy in this.§@!-§)
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
               _loc2_.§]!0§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§&!`§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§ !o§.§=!p§(queryProxy);
            this.§ !o§.§5%§(QueryCallback,fatAABB);
         }
         this.§@!-§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§ !o§.GetUserData(primaryPair.§]!0§);
            userDataB = this.§ !o§.GetUserData(primaryPair.§&!`§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§]!0§ != primaryPair.§]!0§ || pair.§&!`§ != primaryPair.§&!`§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §5%§(param1:Function, param2:b2AABB) : void
      {
         this.§ !o§.§5%§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§ !o§.RayCast(param1,param2);
      }
      
      public function §]3§() : void
      {
      }
      
      public function §=f§(param1:int) : void
      {
         this.§ !o§.§=f§(param1);
      }
      
      private function §<!`§(param1:b2DynamicTreeNode) : void
      {
         this.§@!-§[this.§@!-§.length] = param1;
      }
      
      private function §[B§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§@!-§.indexOf(param1);
         this.§@!-§.splice(_loc2_,1);
      }
      
      private function §>"!§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
