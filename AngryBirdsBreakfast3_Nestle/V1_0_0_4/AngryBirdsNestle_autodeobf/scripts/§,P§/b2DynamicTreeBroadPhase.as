package §,P§
{
   import §-%§.*;
   
   public class b2DynamicTreeBroadPhase implements §7!G§
   {
       
      
      private var §1!+§:b2DynamicTree;
      
      private var §9"!§:int;
      
      private var §>""§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§1!+§ = new b2DynamicTree();
         this.§>""§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §[!o§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§1!+§.§[!o§(param1,param2);
         ++this.§9"!§;
         this.§ !!§(_loc3_);
         return _loc3_;
      }
      
      public function §<h§(param1:*) : void
      {
         this.§"!K§(param1);
         --this.§9"!§;
         this.§1!+§.§<h§(param1);
      }
      
      public function §%!X§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§1!+§.§%!X§(param1,param2,param3))
         {
            this.§ !!§(param1);
         }
      }
      
      public function §1`§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§1!+§.§[!7§(param1);
         var _loc4_:b2AABB = this.§1!+§.§[!7§(param2);
         return _loc3_.§1`§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§1!+§.GetUserData(param1);
      }
      
      public function §[!7§(param1:*) : b2AABB
      {
         return this.§1!+§.§[!7§(param1);
      }
      
      public function §7h§() : int
      {
         return this.§9"!§;
      }
      
      public function §<p§(param1:Function) : void
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
         for each(queryProxy in this.§>""§)
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
               _loc2_.§,"4§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§0S§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§1!+§.§[!7§(queryProxy);
            this.§1!+§.§=<§(QueryCallback,fatAABB);
         }
         this.§>""§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§1!+§.GetUserData(primaryPair.§,"4§);
            userDataB = this.§1!+§.GetUserData(primaryPair.§0S§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§,"4§ != primaryPair.§,"4§ || pair.§0S§ != primaryPair.§0S§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §=<§(param1:Function, param2:b2AABB) : void
      {
         this.§1!+§.§=<§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§1!+§.RayCast(param1,param2);
      }
      
      public function §2!3§() : void
      {
      }
      
      public function §@H§(param1:int) : void
      {
         this.§1!+§.§@H§(param1);
      }
      
      private function § !!§(param1:b2DynamicTreeNode) : void
      {
         this.§>""§[this.§>""§.length] = param1;
      }
      
      private function §"!K§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§>""§.indexOf(param1);
         this.§>""§.splice(_loc2_,1);
      }
      
      private function §"!F§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
