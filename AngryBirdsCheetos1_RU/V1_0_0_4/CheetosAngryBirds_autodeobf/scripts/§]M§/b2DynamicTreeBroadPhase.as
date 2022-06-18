package §]M§
{
   import §5!K§.*;
   
   public class b2DynamicTreeBroadPhase implements §?!&§
   {
       
      
      private var §0!A§:b2DynamicTree;
      
      private var §@!G§:int;
      
      private var §75§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§0!A§ = new b2DynamicTree();
         this.§75§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §9!^§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§0!A§.§9!^§(param1,param2);
         ++this.§@!G§;
         this.§@![§(_loc3_);
         return _loc3_;
      }
      
      public function §%!C§(param1:*) : void
      {
         this.§6!<§(param1);
         --this.§@!G§;
         this.§0!A§.§%!C§(param1);
      }
      
      public function §;M§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§0!A§.§;M§(param1,param2,param3))
         {
            this.§@![§(param1);
         }
      }
      
      public function §>!4§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§0!A§.§ !B§(param1);
         var _loc4_:b2AABB = this.§0!A§.§ !B§(param2);
         return _loc3_.§>!4§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§0!A§.GetUserData(param1);
      }
      
      public function § !B§(param1:*) : b2AABB
      {
         return this.§0!A§.§ !B§(param1);
      }
      
      public function §=!#§() : int
      {
         return this.§@!G§;
      }
      
      public function §"!W§(param1:Function) : void
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
         for each(queryProxy in this.§75§)
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
               _loc2_.§&!!§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§!!L§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§0!A§.§ !B§(queryProxy);
            this.§0!A§.§=!_§(QueryCallback,fatAABB);
         }
         this.§75§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§0!A§.GetUserData(primaryPair.§&!!§);
            userDataB = this.§0!A§.GetUserData(primaryPair.§!!L§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§&!!§ != primaryPair.§&!!§ || pair.§!!L§ != primaryPair.§!!L§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §=!_§(param1:Function, param2:b2AABB) : void
      {
         this.§0!A§.§=!_§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§0!A§.RayCast(param1,param2);
      }
      
      public function §#!]§() : void
      {
      }
      
      public function §%!1§(param1:int) : void
      {
         this.§0!A§.§%!1§(param1);
      }
      
      private function §@![§(param1:b2DynamicTreeNode) : void
      {
         this.§75§[this.§75§.length] = param1;
      }
      
      private function §6!<§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§75§.indexOf(param1);
         this.§75§.splice(_loc2_,1);
      }
      
      private function §`z§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
