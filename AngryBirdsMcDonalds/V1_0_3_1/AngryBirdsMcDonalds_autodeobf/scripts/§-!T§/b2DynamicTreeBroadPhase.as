package §-!T§
{
   import §0,§.*;
   
   public class b2DynamicTreeBroadPhase implements §2!W§
   {
       
      
      private var §1!W§:b2DynamicTree;
      
      private var §,!j§:int;
      
      private var §-W§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§1!W§ = new b2DynamicTree();
         this.§-W§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §&t§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§1!W§.§&t§(param1,param2);
         ++this.§,!j§;
         this.§8!f§(_loc3_);
         return _loc3_;
      }
      
      public function §!!E§(param1:*) : void
      {
         this.§1n§(param1);
         --this.§,!j§;
         this.§1!W§.§!!E§(param1);
      }
      
      public function §7!k§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§1!W§.§7!k§(param1,param2,param3))
         {
            this.§8!f§(param1);
         }
      }
      
      public function §7q§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§1!W§.§6!6§(param1);
         var _loc4_:b2AABB = this.§1!W§.§6!6§(param2);
         return _loc3_.§7q§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§1!W§.GetUserData(param1);
      }
      
      public function §6!6§(param1:*) : b2AABB
      {
         return this.§1!W§.§6!6§(param1);
      }
      
      public function §74§() : int
      {
         return this.§,!j§;
      }
      
      public function §]Q§(param1:Function) : void
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
         for each(queryProxy in this.§-W§)
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
               _loc2_.§'w§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§+!S§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§1!W§.§6!6§(queryProxy);
            this.§1!W§.§^q§(QueryCallback,fatAABB);
         }
         this.§-W§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§1!W§.GetUserData(primaryPair.§'w§);
            userDataB = this.§1!W§.GetUserData(primaryPair.§+!S§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§'w§ != primaryPair.§'w§ || pair.§+!S§ != primaryPair.§+!S§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §^q§(param1:Function, param2:b2AABB) : void
      {
         this.§1!W§.§^q§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§1!W§.RayCast(param1,param2);
      }
      
      public function §<!T§() : void
      {
      }
      
      public function §,I§(param1:int) : void
      {
         this.§1!W§.§,I§(param1);
      }
      
      private function §8!f§(param1:b2DynamicTreeNode) : void
      {
         this.§-W§[this.§-W§.length] = param1;
      }
      
      private function §1n§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§-W§.indexOf(param1);
         this.§-W§.splice(_loc2_,1);
      }
      
      private function §?!c§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
