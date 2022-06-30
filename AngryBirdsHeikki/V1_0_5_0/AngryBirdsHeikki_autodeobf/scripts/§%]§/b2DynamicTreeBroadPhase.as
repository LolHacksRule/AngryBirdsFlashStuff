package §%]§
{
   import §,!3§.*;
   
   public class b2DynamicTreeBroadPhase implements §4!6§
   {
       
      
      private var §&I§:b2DynamicTree;
      
      private var §3w§:int;
      
      private var § X§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§&I§ = new b2DynamicTree();
         this.§ X§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §]!G§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§&I§.§]!G§(param1,param2);
         ++this.§3w§;
         this.§2!R§(_loc3_);
         return _loc3_;
      }
      
      public function §&=§(param1:*) : void
      {
         this.§7!O§(param1);
         --this.§3w§;
         this.§&I§.§&=§(param1);
      }
      
      public function §6!&§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§&I§.§6!&§(param1,param2,param3))
         {
            this.§2!R§(param1);
         }
      }
      
      public function §#8§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§&I§.§@&§(param1);
         var _loc4_:b2AABB = this.§&I§.§@&§(param2);
         return _loc3_.§#8§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§&I§.GetUserData(param1);
      }
      
      public function §@&§(param1:*) : b2AABB
      {
         return this.§&I§.§@&§(param1);
      }
      
      public function §'!P§() : int
      {
         return this.§3w§;
      }
      
      public function §!3§(param1:Function) : void
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
         for each(queryProxy in this.§ X§)
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
               _loc2_.§`!0§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§?!2§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§&I§.§@&§(queryProxy);
            this.§&I§.§<!1§(QueryCallback,fatAABB);
         }
         this.§ X§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§&I§.GetUserData(primaryPair.§`!0§);
            userDataB = this.§&I§.GetUserData(primaryPair.§?!2§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§`!0§ != primaryPair.§`!0§ || pair.§?!2§ != primaryPair.§?!2§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §<!1§(param1:Function, param2:b2AABB) : void
      {
         this.§&I§.§<!1§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§&I§.RayCast(param1,param2);
      }
      
      public function §%!S§() : void
      {
      }
      
      public function §%j§(param1:int) : void
      {
         this.§&I§.§%j§(param1);
      }
      
      private function §2!R§(param1:b2DynamicTreeNode) : void
      {
         this.§ X§[this.§ X§.length] = param1;
      }
      
      private function §7!O§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§ X§.indexOf(param1);
         this.§ X§.splice(_loc2_,1);
      }
      
      private function §@S§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
