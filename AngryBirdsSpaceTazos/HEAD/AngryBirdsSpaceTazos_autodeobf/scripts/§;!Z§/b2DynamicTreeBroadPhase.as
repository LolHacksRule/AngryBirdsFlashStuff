package §;!Z§
{
   import §6!n§.*;
   
   public class b2DynamicTreeBroadPhase implements §#"D§
   {
       
      
      private var §>!K§:b2DynamicTree;
      
      private var §3e§:int;
      
      private var §=!W§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§>!K§ = new b2DynamicTree();
         this.§=!W§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §0!E§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§>!K§.§0!E§(param1,param2);
         ++this.§3e§;
         this.§4"$§(_loc3_);
         return _loc3_;
      }
      
      public function §>!u§(param1:*) : void
      {
         this.§"!u§(param1);
         --this.§3e§;
         this.§>!K§.§>!u§(param1);
      }
      
      public function §8-§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§>!K§.§8-§(param1,param2,param3))
         {
            this.§4"$§(param1);
         }
      }
      
      public function §1'§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§>!K§.§1?§(param1);
         var _loc4_:b2AABB = this.§>!K§.§1?§(param2);
         return _loc3_.§1'§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§>!K§.GetUserData(param1);
      }
      
      public function §1?§(param1:*) : b2AABB
      {
         return this.§>!K§.§1?§(param1);
      }
      
      public function § p§() : int
      {
         return this.§3e§;
      }
      
      public function § !d§(param1:Function) : void
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
         for each(queryProxy in this.§=!W§)
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
               _loc2_.§+z§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§5!$§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§>!K§.§1?§(queryProxy);
            this.§>!K§.§`!$§(QueryCallback,fatAABB);
         }
         this.§=!W§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§>!K§.GetUserData(primaryPair.§+z§);
            userDataB = this.§>!K§.GetUserData(primaryPair.§5!$§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§+z§ != primaryPair.§+z§ || pair.§5!$§ != primaryPair.§5!$§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §`!$§(param1:Function, param2:b2AABB) : void
      {
         this.§>!K§.§`!$§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§>!K§.RayCast(param1,param2);
      }
      
      public function §1H§() : void
      {
      }
      
      public function §7]§(param1:int) : void
      {
         this.§>!K§.§7]§(param1);
      }
      
      private function §4"$§(param1:b2DynamicTreeNode) : void
      {
         this.§=!W§[this.§=!W§.length] = param1;
      }
      
      private function §"!u§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§=!W§.indexOf(param1);
         this.§=!W§.splice(_loc2_,1);
      }
      
      private function §#h§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
