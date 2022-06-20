package §'"-§
{
   import §6!^§.*;
   
   public class b2DynamicTreeBroadPhase implements §3Q§
   {
       
      
      private var §+!@§:b2DynamicTree;
      
      private var §2!=§:int;
      
      private var §0"@§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§+!@§ = new b2DynamicTree();
         this.§0"@§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §!!$§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§+!@§.§!!$§(param1,param2);
         ++this.§2!=§;
         this.§&"T§(_loc3_);
         return _loc3_;
      }
      
      public function §&-§(param1:*) : void
      {
         this.§1u§(param1);
         --this.§2!=§;
         this.§+!@§.§&-§(param1);
      }
      
      public function § c§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§+!@§.§ c§(param1,param2,param3))
         {
            this.§&"T§(param1);
         }
      }
      
      public function §9e§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§+!@§.§""8§(param1);
         var _loc4_:b2AABB = this.§+!@§.§""8§(param2);
         return _loc3_.§9e§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§+!@§.GetUserData(param1);
      }
      
      public function §""8§(param1:*) : b2AABB
      {
         return this.§+!@§.§""8§(param1);
      }
      
      public function §4!>§() : int
      {
         return this.§2!=§;
      }
      
      public function §=q§(param1:Function) : void
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
         for each(queryProxy in this.§0"@§)
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
               _loc2_.§>!j§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§@!a§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§+!@§.§""8§(queryProxy);
            this.§+!@§.§^"Y§(QueryCallback,fatAABB);
         }
         this.§0"@§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§+!@§.GetUserData(primaryPair.§>!j§);
            userDataB = this.§+!@§.GetUserData(primaryPair.§@!a§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§>!j§ != primaryPair.§>!j§ || pair.§@!a§ != primaryPair.§@!a§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §^"Y§(param1:Function, param2:b2AABB) : void
      {
         this.§+!@§.§^"Y§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§+!@§.RayCast(param1,param2);
      }
      
      public function §8!V§() : void
      {
      }
      
      public function § r§(param1:int) : void
      {
         this.§+!@§.§ r§(param1);
      }
      
      private function §&"T§(param1:b2DynamicTreeNode) : void
      {
         this.§0"@§[this.§0"@§.length] = param1;
      }
      
      private function §1u§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§0"@§.indexOf(param1);
         this.§0"@§.splice(_loc2_,1);
      }
      
      private function §<8§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
