package §3"5§
{
   import §[R§.*;
   
   public class b2DynamicTreeBroadPhase implements §8t§
   {
       
      
      private var §%"C§:b2DynamicTree;
      
      private var §<t§:int;
      
      private var §<#`§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§%"C§ = new b2DynamicTree();
         this.§<#`§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function § #Q§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§%"C§.§ #Q§(param1,param2);
         ++this.§<t§;
         this.§,#M§(_loc3_);
         return _loc3_;
      }
      
      public function §,X§(param1:*) : void
      {
         this.§?#,§(param1);
         --this.§<t§;
         this.§%"C§.§,X§(param1);
      }
      
      public function §=!`§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§%"C§.§=!`§(param1,param2,param3))
         {
            this.§,#M§(param1);
         }
      }
      
      public function §?#S§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§%"C§.§1"§(param1);
         var _loc4_:b2AABB = this.§%"C§.§1"§(param2);
         return _loc3_.§?#S§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§%"C§.GetUserData(param1);
      }
      
      public function §1"§(param1:*) : b2AABB
      {
         return this.§%"C§.§1"§(param1);
      }
      
      public function §<§() : int
      {
         return this.§<t§;
      }
      
      public function §;"#§(param1:Function) : void
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
         for each(queryProxy in this.§<#`§)
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
               _loc2_.§<!b§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§#!]§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§%"C§.§1"§(queryProxy);
            this.§%"C§.§in§(QueryCallback,fatAABB);
         }
         this.§<#`§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§%"C§.GetUserData(primaryPair.§<!b§);
            userDataB = this.§%"C§.GetUserData(primaryPair.§#!]§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§<!b§ != primaryPair.§<!b§ || pair.§#!]§ != primaryPair.§#!]§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §in§(param1:Function, param2:b2AABB) : void
      {
         this.§%"C§.§in§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§%"C§.RayCast(param1,param2);
      }
      
      public function §%!&§() : void
      {
      }
      
      public function §"4§(param1:int) : void
      {
         this.§%"C§.§"4§(param1);
      }
      
      private function §,#M§(param1:b2DynamicTreeNode) : void
      {
         this.§<#`§[this.§<#`§.length] = param1;
      }
      
      private function §?#,§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§<#`§.indexOf(param1);
         this.§<#`§.splice(_loc2_,1);
      }
      
      private function §1#<§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
