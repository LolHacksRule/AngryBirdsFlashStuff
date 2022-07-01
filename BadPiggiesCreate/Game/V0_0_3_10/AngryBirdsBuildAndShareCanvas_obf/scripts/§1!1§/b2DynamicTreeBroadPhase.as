package §1!1§
{
   import §?!h§.*;
   
   public class b2DynamicTreeBroadPhase implements §0!6§
   {
       
      
      private var §<!+§:b2DynamicTree;
      
      private var §^"&§:int;
      
      private var §4!&§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§<!+§ = new b2DynamicTree();
         this.§4!&§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §6!2§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§<!+§.§6!2§(param1,param2);
         ++this.§^"&§;
         this.§#![§(_loc3_);
         return _loc3_;
      }
      
      public function §"!T§(param1:*) : void
      {
         this.§1!+§(param1);
         --this.§^"&§;
         this.§<!+§.§"!T§(param1);
      }
      
      public function §!1§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§<!+§.§!1§(param1,param2,param3))
         {
            this.§#![§(param1);
         }
      }
      
      public function §;!p§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§<!+§.§,&§(param1);
         var _loc4_:b2AABB = this.§<!+§.§,&§(param2);
         return _loc3_.§;!p§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§<!+§.GetUserData(param1);
      }
      
      public function §,&§(param1:*) : b2AABB
      {
         return this.§<!+§.§,&§(param1);
      }
      
      public function §=!w§() : int
      {
         return this.§^"&§;
      }
      
      public function §#!+§(param1:Function) : void
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
         for each(queryProxy in this.§4!&§)
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
               _loc2_.§"!s§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§ !W§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§<!+§.§,&§(queryProxy);
            this.§<!+§.§0!c§(QueryCallback,fatAABB);
         }
         this.§4!&§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§<!+§.GetUserData(primaryPair.§"!s§);
            userDataB = this.§<!+§.GetUserData(primaryPair.§ !W§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§"!s§ != primaryPair.§"!s§ || pair.§ !W§ != primaryPair.§ !W§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §0!c§(param1:Function, param2:b2AABB) : void
      {
         this.§<!+§.§0!c§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§<!+§.RayCast(param1,param2);
      }
      
      public function §-c§() : void
      {
      }
      
      public function §!!x§(param1:int) : void
      {
         this.§<!+§.§!!x§(param1);
      }
      
      private function §#![§(param1:b2DynamicTreeNode) : void
      {
         this.§4!&§[this.§4!&§.length] = param1;
      }
      
      private function §1!+§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§4!&§.indexOf(param1);
         this.§4!&§.splice(_loc2_,1);
      }
      
      private function §4!g§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
