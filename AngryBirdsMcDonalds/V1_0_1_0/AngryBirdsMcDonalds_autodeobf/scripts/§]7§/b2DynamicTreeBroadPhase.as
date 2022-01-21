package §]7§
{
   import §!R§.*;
   
   public class b2DynamicTreeBroadPhase implements §#!0§
   {
       
      
      private var §?4§:b2DynamicTree;
      
      private var §]M§:int;
      
      private var §4!E§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§?4§ = new b2DynamicTree();
         this.§4!E§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §9u§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§?4§.§9u§(param1,param2);
         ++this.§]M§;
         this.§6d§(_loc3_);
         return _loc3_;
      }
      
      public function §"!"§(param1:*) : void
      {
         this.§"a§(param1);
         --this.§]M§;
         this.§?4§.§"!"§(param1);
      }
      
      public function §7!>§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§?4§.§7!>§(param1,param2,param3))
         {
            this.§6d§(param1);
         }
      }
      
      public function §6!_§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§?4§.§"t§(param1);
         var _loc4_:b2AABB = this.§?4§.§"t§(param2);
         return _loc3_.§6!_§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§?4§.GetUserData(param1);
      }
      
      public function §"t§(param1:*) : b2AABB
      {
         return this.§?4§.§"t§(param1);
      }
      
      public function §<!3§() : int
      {
         return this.§]M§;
      }
      
      public function §#!M§(param1:Function) : void
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
         for each(queryProxy in this.§4!E§)
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
               _loc2_.§9s§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§4!S§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§?4§.§"t§(queryProxy);
            this.§?4§.§4!%§(QueryCallback,fatAABB);
         }
         this.§4!E§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§?4§.GetUserData(primaryPair.§9s§);
            userDataB = this.§?4§.GetUserData(primaryPair.§4!S§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§9s§ != primaryPair.§9s§ || pair.§4!S§ != primaryPair.§4!S§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §4!%§(param1:Function, param2:b2AABB) : void
      {
         this.§?4§.§4!%§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§?4§.RayCast(param1,param2);
      }
      
      public function §[!3§() : void
      {
      }
      
      public function §@!^§(param1:int) : void
      {
         this.§?4§.§@!^§(param1);
      }
      
      private function §6d§(param1:b2DynamicTreeNode) : void
      {
         this.§4!E§[this.§4!E§.length] = param1;
      }
      
      private function §"a§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§4!E§.indexOf(param1);
         this.§4!E§.splice(_loc2_,1);
      }
      
      private function §`!I§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
