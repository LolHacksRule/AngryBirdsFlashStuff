package §>!m§
{
   import §[!f§.*;
   
   public class b2DynamicTreeBroadPhase implements §,t§
   {
       
      
      private var §"6§:b2DynamicTree;
      
      private var §4>§:int;
      
      private var §;^§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§"6§ = new b2DynamicTree();
         this.§;^§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §=!o§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§"6§.§=!o§(param1,param2);
         ++this.§4>§;
         this.§!!K§(_loc3_);
         return _loc3_;
      }
      
      public function §4x§(param1:*) : void
      {
         this.§`C§(param1);
         --this.§4>§;
         this.§"6§.§4x§(param1);
      }
      
      public function §import§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§"6§.§import§(param1,param2,param3))
         {
            this.§!!K§(param1);
         }
      }
      
      public function § "B§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§"6§.§9h§(param1);
         var _loc4_:b2AABB = this.§"6§.§9h§(param2);
         return _loc3_.§ "B§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§"6§.GetUserData(param1);
      }
      
      public function §9h§(param1:*) : b2AABB
      {
         return this.§"6§.§9h§(param1);
      }
      
      public function §@!@§() : int
      {
         return this.§4>§;
      }
      
      public function §'"1§(param1:Function) : void
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
         for each(queryProxy in this.§;^§)
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
               _loc2_.§@!G§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§%!S§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§"6§.§9h§(queryProxy);
            this.§"6§.§0O§(QueryCallback,fatAABB);
         }
         this.§;^§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§"6§.GetUserData(primaryPair.§@!G§);
            userDataB = this.§"6§.GetUserData(primaryPair.§%!S§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§@!G§ != primaryPair.§@!G§ || pair.§%!S§ != primaryPair.§%!S§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §0O§(param1:Function, param2:b2AABB) : void
      {
         this.§"6§.§0O§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§"6§.RayCast(param1,param2);
      }
      
      public function §&!_§() : void
      {
      }
      
      public function §7!Y§(param1:int) : void
      {
         this.§"6§.§7!Y§(param1);
      }
      
      private function §!!K§(param1:b2DynamicTreeNode) : void
      {
         this.§;^§[this.§;^§.length] = param1;
      }
      
      private function §`C§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§;^§.indexOf(param1);
         this.§;^§.splice(_loc2_,1);
      }
      
      private function §5!n§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
