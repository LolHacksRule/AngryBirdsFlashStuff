package §&!n§
{
   import §9v§.*;
   
   public class b2DynamicTreeBroadPhase implements §7W§
   {
       
      
      private var §#!3§:b2DynamicTree;
      
      private var §4!F§:int;
      
      private var §+z§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§#!3§ = new b2DynamicTree();
         this.§+z§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §[2§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§#!3§.§[2§(param1,param2);
         ++this.§4!F§;
         this.§?'§(_loc3_);
         return _loc3_;
      }
      
      public function §+!<§(param1:*) : void
      {
         this.§!!v§(param1);
         --this.§4!F§;
         this.§#!3§.§+!<§(param1);
      }
      
      public function §8;§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§#!3§.§8;§(param1,param2,param3))
         {
            this.§?'§(param1);
         }
      }
      
      public function §=!1§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§#!3§.§ try§(param1);
         var _loc4_:b2AABB = this.§#!3§.§ try§(param2);
         return _loc3_.§=!1§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§#!3§.GetUserData(param1);
      }
      
      public function § try§(param1:*) : b2AABB
      {
         return this.§#!3§.§ try§(param1);
      }
      
      public function §?!#§() : int
      {
         return this.§4!F§;
      }
      
      public function §[!p§(param1:Function) : void
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
         for each(queryProxy in this.§+z§)
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
               _loc2_.§+!k§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§"!^§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§#!3§.§ try§(queryProxy);
            this.§#!3§.§&!M§(QueryCallback,fatAABB);
         }
         this.§+z§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§#!3§.GetUserData(primaryPair.§+!k§);
            userDataB = this.§#!3§.GetUserData(primaryPair.§"!^§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§+!k§ != primaryPair.§+!k§ || pair.§"!^§ != primaryPair.§"!^§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §&!M§(param1:Function, param2:b2AABB) : void
      {
         this.§#!3§.§&!M§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§#!3§.RayCast(param1,param2);
      }
      
      public function §5R§() : void
      {
      }
      
      public function §"!6§(param1:int) : void
      {
         this.§#!3§.§"!6§(param1);
      }
      
      private function §?'§(param1:b2DynamicTreeNode) : void
      {
         this.§+z§[this.§+z§.length] = param1;
      }
      
      private function §!!v§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§+z§.indexOf(param1);
         this.§+z§.splice(_loc2_,1);
      }
      
      private function §2x§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
