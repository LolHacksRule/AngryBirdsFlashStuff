package §8w§
{
   import §;%§.*;
   
   public class b2DynamicTreeBroadPhase implements §2U§
   {
       
      
      private var §=!4§:b2DynamicTree;
      
      private var §2y§:int;
      
      private var §%! §:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§=!4§ = new b2DynamicTree();
         this.§%! § = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §1!@§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§=!4§.§1!@§(param1,param2);
         ++this.§2y§;
         this.§4!M§(_loc3_);
         return _loc3_;
      }
      
      public function §for §(param1:*) : void
      {
         this.§1l§(param1);
         --this.§2y§;
         this.§=!4§.§for §(param1);
      }
      
      public function §&!N§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§=!4§.§&!N§(param1,param2,param3))
         {
            this.§4!M§(param1);
         }
      }
      
      public function §3!V§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§=!4§.§8!W§(param1);
         var _loc4_:b2AABB = this.§=!4§.§8!W§(param2);
         return _loc3_.§3!V§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§=!4§.GetUserData(param1);
      }
      
      public function §8!W§(param1:*) : b2AABB
      {
         return this.§=!4§.§8!W§(param1);
      }
      
      public function §92§() : int
      {
         return this.§2y§;
      }
      
      public function §"-§(param1:Function) : void
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
         for each(queryProxy in this.§%! §)
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
               _loc2_.§9!;§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§ !%§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§=!4§.§8!W§(queryProxy);
            this.§=!4§.§4!3§(QueryCallback,fatAABB);
         }
         this.§%! §.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§=!4§.GetUserData(primaryPair.§9!;§);
            userDataB = this.§=!4§.GetUserData(primaryPair.§ !%§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§9!;§ != primaryPair.§9!;§ || pair.§ !%§ != primaryPair.§ !%§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §4!3§(param1:Function, param2:b2AABB) : void
      {
         this.§=!4§.§4!3§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§=!4§.RayCast(param1,param2);
      }
      
      public function §]!b§() : void
      {
      }
      
      public function §6e§(param1:int) : void
      {
         this.§=!4§.§6e§(param1);
      }
      
      private function §4!M§(param1:b2DynamicTreeNode) : void
      {
         this.§%! §[this.§%! §.length] = param1;
      }
      
      private function §1l§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§%! §.indexOf(param1);
         this.§%! §.splice(_loc2_,1);
      }
      
      private function §[!R§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
