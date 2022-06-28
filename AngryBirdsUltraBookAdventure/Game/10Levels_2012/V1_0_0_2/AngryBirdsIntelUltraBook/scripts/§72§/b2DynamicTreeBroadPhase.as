package §72§
{
   import §>H§.*;
   
   public class b2DynamicTreeBroadPhase implements §<X§
   {
       
      
      private var §9h§:b2DynamicTree;
      
      private var §!!w§:int;
      
      private var §3!6§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§9h§ = new b2DynamicTree();
         this.§3!6§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §0!S§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§9h§.§0!S§(param1,param2);
         ++this.§!!w§;
         this.§,!=§(_loc3_);
         return _loc3_;
      }
      
      public function §!O§(param1:*) : void
      {
         this.§#!u§(param1);
         --this.§!!w§;
         this.§9h§.§!O§(param1);
      }
      
      public function §`=§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§9h§.§`=§(param1,param2,param3))
         {
            this.§,!=§(param1);
         }
      }
      
      public function §7l§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9h§.§^!Q§(param1);
         var _loc4_:b2AABB = this.§9h§.§^!Q§(param2);
         return _loc3_.§7l§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9h§.GetUserData(param1);
      }
      
      public function §^!Q§(param1:*) : b2AABB
      {
         return this.§9h§.§^!Q§(param1);
      }
      
      public function §]y§() : int
      {
         return this.§!!w§;
      }
      
      public function §`!j§(param1:Function) : void
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
         for each(queryProxy in this.§3!6§)
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
               _loc2_.§]!O§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§&d§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§9h§.§^!Q§(queryProxy);
            this.§9h§.§@!1§(QueryCallback,fatAABB);
         }
         this.§3!6§.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§9h§.GetUserData(primaryPair.§]!O§);
            userDataB = this.§9h§.GetUserData(primaryPair.§&d§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§]!O§ != primaryPair.§]!O§ || pair.§&d§ != primaryPair.§&d§)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function §@!1§(param1:Function, param2:b2AABB) : void
      {
         this.§9h§.§@!1§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§9h§.RayCast(param1,param2);
      }
      
      public function §##§() : void
      {
      }
      
      public function §]!t§(param1:int) : void
      {
         this.§9h§.§]!t§(param1);
      }
      
      private function §,!=§(param1:b2DynamicTreeNode) : void
      {
         this.§3!6§[this.§3!6§.length] = param1;
      }
      
      private function §#!u§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§3!6§.indexOf(param1);
         this.§3!6§.splice(_loc2_,1);
      }
      
      private function §5!W§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
