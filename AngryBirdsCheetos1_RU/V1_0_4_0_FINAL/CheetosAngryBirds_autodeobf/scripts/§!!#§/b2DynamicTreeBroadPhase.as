package §!!#§
{
   import §^q§.*;
   
   public class b2DynamicTreeBroadPhase implements §4!b§
   {
       
      
      private var §8g§:b2DynamicTree;
      
      private var §>A§:int;
      
      private var §#!b§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§8g§ = new b2DynamicTree();
         this.§#!b§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §+2§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§8g§.§+2§(param1,param2);
         ++this.§>A§;
         this.§0!-§(_loc3_);
         return _loc3_;
      }
      
      public function §52§(param1:*) : void
      {
         this.§!1§(param1);
         --this.§>A§;
         this.§8g§.§52§(param1);
      }
      
      public function §<!+§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§8g§.§<!+§(param1,param2,param3))
         {
            this.§0!-§(param1);
         }
      }
      
      public function §?`§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§8g§.§"z§(param1);
         var _loc4_:b2AABB = this.§8g§.§"z§(param2);
         return _loc3_.§?`§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§8g§.GetUserData(param1);
      }
      
      public function §"z§(param1:*) : b2AABB
      {
         return this.§8g§.§"z§(param1);
      }
      
      public function §[A§() : int
      {
         return this.§>A§;
      }
      
      public function §]q§(param1:Function) : void
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
         for each(queryProxy in this.§#!b§)
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
               _loc2_.§'!@§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§5!4§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§8g§.§"z§(queryProxy);
            this.§8g§.§!!,§(QueryCallback,fatAABB);
         }
         this.§#!b§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§8g§.GetUserData(primaryPair.§'!@§);
            userDataB = this.§8g§.GetUserData(primaryPair.§5!4§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§'!@§ != primaryPair.§'!@§ || pair.§5!4§ != primaryPair.§5!4§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §!!,§(param1:Function, param2:b2AABB) : void
      {
         this.§8g§.§!!,§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§8g§.RayCast(param1,param2);
      }
      
      public function §``§() : void
      {
      }
      
      public function §]+§(param1:int) : void
      {
         this.§8g§.§]+§(param1);
      }
      
      private function §0!-§(param1:b2DynamicTreeNode) : void
      {
         this.§#!b§[this.§#!b§.length] = param1;
      }
      
      private function §!1§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§#!b§.indexOf(param1);
         this.§#!b§.splice(_loc2_,1);
      }
      
      private function §8N§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
