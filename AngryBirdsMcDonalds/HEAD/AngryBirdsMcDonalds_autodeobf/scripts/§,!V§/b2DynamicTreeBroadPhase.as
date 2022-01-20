package §,!V§
{
   import §+S§.*;
   
   public class b2DynamicTreeBroadPhase implements §"!>§
   {
       
      
      private var §,!r§:b2DynamicTree;
      
      private var §+!G§:int;
      
      private var §]<§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§,!r§ = new b2DynamicTree();
         this.§]<§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §,!F§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§,!r§.§,!F§(param1,param2);
         ++this.§+!G§;
         this.§@e§(_loc3_);
         return _loc3_;
      }
      
      public function §9!8§(param1:*) : void
      {
         this.§;w§(param1);
         --this.§+!G§;
         this.§,!r§.§9!8§(param1);
      }
      
      public function §^!3§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§,!r§.§^!3§(param1,param2,param3))
         {
            this.§@e§(param1);
         }
      }
      
      public function §?3§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§,!r§.§'!G§(param1);
         var _loc4_:b2AABB = this.§,!r§.§'!G§(param2);
         return _loc3_.§?3§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§,!r§.GetUserData(param1);
      }
      
      public function §'!G§(param1:*) : b2AABB
      {
         return this.§,!r§.§'!G§(param1);
      }
      
      public function §9!l§() : int
      {
         return this.§+!G§;
      }
      
      public function §@d§(param1:Function) : void
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
         for each(queryProxy in this.§]<§)
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
               _loc2_.§1e§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§8!"§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§,!r§.§'!G§(queryProxy);
            this.§,!r§.§,;§(QueryCallback,fatAABB);
         }
         this.§]<§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§,!r§.GetUserData(primaryPair.§1e§);
            userDataB = this.§,!r§.GetUserData(primaryPair.§8!"§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§1e§ != primaryPair.§1e§ || pair.§8!"§ != primaryPair.§8!"§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §,;§(param1:Function, param2:b2AABB) : void
      {
         this.§,!r§.§,;§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§,!r§.RayCast(param1,param2);
      }
      
      public function §2!3§() : void
      {
      }
      
      public function §9;§(param1:int) : void
      {
         this.§,!r§.§9;§(param1);
      }
      
      private function §@e§(param1:b2DynamicTreeNode) : void
      {
         this.§]<§[this.§]<§.length] = param1;
      }
      
      private function §;w§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§]<§.indexOf(param1);
         this.§]<§.splice(_loc2_,1);
      }
      
      private function §+!3§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
