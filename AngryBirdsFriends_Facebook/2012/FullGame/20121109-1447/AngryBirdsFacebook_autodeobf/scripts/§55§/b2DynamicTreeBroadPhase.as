package §55§
{
   import §#]§.*;
   
   public class b2DynamicTreeBroadPhase implements §0!K§
   {
       
      
      private var §^!Y§:b2DynamicTree;
      
      private var §#r§:int;
      
      private var §6"'§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§^!Y§ = new b2DynamicTree();
         this.§6"'§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §'X§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§^!Y§.§'X§(param1,param2);
         ++this.§#r§;
         this.§&i§(_loc3_);
         return _loc3_;
      }
      
      public function §,K§(param1:*) : void
      {
         this.§!!T§(param1);
         --this.§#r§;
         this.§^!Y§.§,K§(param1);
      }
      
      public function §"!,§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§^!Y§.§"!,§(param1,param2,param3))
         {
            this.§&i§(param1);
         }
      }
      
      public function §3§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§^!Y§.§-Z§(param1);
         var _loc4_:b2AABB = this.§^!Y§.§-Z§(param2);
         return _loc3_.§3§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§^!Y§.GetUserData(param1);
      }
      
      public function §-Z§(param1:*) : b2AABB
      {
         return this.§^!Y§.§-Z§(param1);
      }
      
      public function §9g§() : int
      {
         return this.§#r§;
      }
      
      public function §+_§(param1:Function) : void
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
         for each(queryProxy in this.§6"'§)
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
               _loc2_.§7!p§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§["@§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§^!Y§.§-Z§(queryProxy);
            this.§^!Y§.§const§(QueryCallback,fatAABB);
         }
         this.§6"'§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§^!Y§.GetUserData(primaryPair.§7!p§);
            userDataB = this.§^!Y§.GetUserData(primaryPair.§["@§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§7!p§ != primaryPair.§7!p§ || pair.§["@§ != primaryPair.§["@§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §const§(param1:Function, param2:b2AABB) : void
      {
         this.§^!Y§.§const§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§^!Y§.RayCast(param1,param2);
      }
      
      public function §5G§() : void
      {
      }
      
      public function §]!N§(param1:int) : void
      {
         this.§^!Y§.§]!N§(param1);
      }
      
      private function §&i§(param1:b2DynamicTreeNode) : void
      {
         this.§6"'§[this.§6"'§.length] = param1;
      }
      
      private function §!!T§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§6"'§.indexOf(param1);
         this.§6"'§.splice(_loc2_,1);
      }
      
      private function §6!^§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
