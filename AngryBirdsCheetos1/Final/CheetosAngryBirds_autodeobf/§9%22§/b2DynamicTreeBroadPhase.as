package §9"§
{
   import §0!G§.*;
   
   public class b2DynamicTreeBroadPhase implements §>![§
   {
       
      
      private var §[5§:b2DynamicTree;
      
      private var §2`§:int;
      
      private var §4![§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§[5§ = new b2DynamicTree();
         this.§4![§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §case§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§[5§.§case§(param1,param2);
         ++this.§2`§;
         this.§<!,§(_loc3_);
         return _loc3_;
      }
      
      public function §^<§(param1:*) : void
      {
         this.§<q§(param1);
         --this.§2`§;
         this.§[5§.§^<§(param1);
      }
      
      public function §5! §(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§[5§.§5! §(param1,param2,param3))
         {
            this.§<!,§(param1);
         }
      }
      
      public function §[!K§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§[5§.§8!R§(param1);
         var _loc4_:b2AABB = this.§[5§.§8!R§(param2);
         return _loc3_.§[!K§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§[5§.GetUserData(param1);
      }
      
      public function §8!R§(param1:*) : b2AABB
      {
         return this.§[5§.§8!R§(param1);
      }
      
      public function §^n§() : int
      {
         return this.§2`§;
      }
      
      public function §=h§(param1:Function) : void
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
         for each(queryProxy in this.§4![§)
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
               _loc2_.§+X§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§4q§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§[5§.§8!R§(queryProxy);
            this.§[5§.§<§(QueryCallback,fatAABB);
         }
         this.§4![§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§[5§.GetUserData(primaryPair.§+X§);
            userDataB = this.§[5§.GetUserData(primaryPair.§4q§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§+X§ != primaryPair.§+X§ || pair.§4q§ != primaryPair.§4q§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §<§(param1:Function, param2:b2AABB) : void
      {
         this.§[5§.§<§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§[5§.RayCast(param1,param2);
      }
      
      public function §!W§() : void
      {
      }
      
      public function §%!>§(param1:int) : void
      {
         this.§[5§.§%!>§(param1);
      }
      
      private function §<!,§(param1:b2DynamicTreeNode) : void
      {
         this.§4![§[this.§4![§.length] = param1;
      }
      
      private function §<q§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§4![§.indexOf(param1);
         this.§4![§.splice(_loc2_,1);
      }
      
      private function §[!5§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
