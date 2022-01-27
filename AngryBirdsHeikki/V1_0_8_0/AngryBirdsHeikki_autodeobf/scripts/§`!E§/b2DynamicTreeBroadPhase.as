package §`!E§
{
   import §0!=§.*;
   
   public class b2DynamicTreeBroadPhase implements §'e§
   {
       
      
      private var §<2§:b2DynamicTree;
      
      private var §2Q§:int;
      
      private var §!u§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§<2§ = new b2DynamicTree();
         this.§!u§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §<R§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§<2§.§<R§(param1,param2);
         ++this.§2Q§;
         this.§;]§(_loc3_);
         return _loc3_;
      }
      
      public function §'!F§(param1:*) : void
      {
         this.§1U§(param1);
         --this.§2Q§;
         this.§<2§.§'!F§(param1);
      }
      
      public function §>!8§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§<2§.§>!8§(param1,param2,param3))
         {
            this.§;]§(param1);
         }
      }
      
      public function §&!?§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§<2§.§?]§(param1);
         var _loc4_:b2AABB = this.§<2§.§?]§(param2);
         return _loc3_.§&!?§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§<2§.GetUserData(param1);
      }
      
      public function §?]§(param1:*) : b2AABB
      {
         return this.§<2§.§?]§(param1);
      }
      
      public function §9!0§() : int
      {
         return this.§2Q§;
      }
      
      public function §"L§(param1:Function) : void
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
         for each(queryProxy in this.§!u§)
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
               _loc2_.§0!f§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§<!I§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§<2§.§?]§(queryProxy);
            this.§<2§.§@!I§(QueryCallback,fatAABB);
         }
         this.§!u§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§<2§.GetUserData(primaryPair.§0!f§);
            userDataB = this.§<2§.GetUserData(primaryPair.§<!I§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§0!f§ != primaryPair.§0!f§ || pair.§<!I§ != primaryPair.§<!I§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §@!I§(param1:Function, param2:b2AABB) : void
      {
         this.§<2§.§@!I§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§<2§.RayCast(param1,param2);
      }
      
      public function §,V§() : void
      {
      }
      
      public function §7O§(param1:int) : void
      {
         this.§<2§.§7O§(param1);
      }
      
      private function §;]§(param1:b2DynamicTreeNode) : void
      {
         this.§!u§[this.§!u§.length] = param1;
      }
      
      private function §1U§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§!u§.indexOf(param1);
         this.§!u§.splice(_loc2_,1);
      }
      
      private function §;!R§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
