package §=!!§
{
   import §&!L§.*;
   
   public class b2DynamicTreeBroadPhase implements §?!S§
   {
       
      
      private var §>J§:b2DynamicTree;
      
      private var §9f§:int;
      
      private var §'!L§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§>J§ = new b2DynamicTree();
         this.§'!L§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §0L§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§>J§.§0L§(param1,param2);
         ++this.§9f§;
         this.§<;§(_loc3_);
         return _loc3_;
      }
      
      public function §2s§(param1:*) : void
      {
         this.§!"§(param1);
         --this.§9f§;
         this.§>J§.§2s§(param1);
      }
      
      public function §#!$§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§>J§.§#!$§(param1,param2,param3))
         {
            this.§<;§(param1);
         }
      }
      
      public function §-2§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§>J§.§9!,§(param1);
         var _loc4_:b2AABB = this.§>J§.§9!,§(param2);
         return _loc3_.§-2§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§>J§.GetUserData(param1);
      }
      
      public function §9!,§(param1:*) : b2AABB
      {
         return this.§>J§.§9!,§(param1);
      }
      
      public function §-!]§() : int
      {
         return this.§9f§;
      }
      
      public function §6J§(param1:Function) : void
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
         for each(queryProxy in this.§'!L§)
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
               _loc2_.§%!-§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§ !D§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§>J§.§9!,§(queryProxy);
            this.§>J§.§=O§(QueryCallback,fatAABB);
         }
         this.§'!L§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§>J§.GetUserData(primaryPair.§%!-§);
            userDataB = this.§>J§.GetUserData(primaryPair.§ !D§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§%!-§ != primaryPair.§%!-§ || pair.§ !D§ != primaryPair.§ !D§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §=O§(param1:Function, param2:b2AABB) : void
      {
         this.§>J§.§=O§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§>J§.RayCast(param1,param2);
      }
      
      public function §7!%§() : void
      {
      }
      
      public function §3!T§(param1:int) : void
      {
         this.§>J§.§3!T§(param1);
      }
      
      private function §<;§(param1:b2DynamicTreeNode) : void
      {
         this.§'!L§[this.§'!L§.length] = param1;
      }
      
      private function §!"§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§'!L§.indexOf(param1);
         this.§'!L§.splice(_loc2_,1);
      }
      
      private function §]!?§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
