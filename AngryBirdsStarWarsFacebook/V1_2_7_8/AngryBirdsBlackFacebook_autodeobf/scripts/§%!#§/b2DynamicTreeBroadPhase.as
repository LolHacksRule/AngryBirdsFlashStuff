package §%!#§
{
   import §^>§.*;
   
   public class b2DynamicTreeBroadPhase implements §,"Q§
   {
       
      
      private var §'"k§:b2DynamicTree;
      
      private var §'!G§:int;
      
      private var §;v§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§'"k§ = new b2DynamicTree();
         this.§;v§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §1"V§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§'"k§.§1"V§(param1,param2);
         ++this.§'!G§;
         this.§'!4§(_loc3_);
         return _loc3_;
      }
      
      public function §,S§(param1:*) : void
      {
         this.§3"T§(param1);
         --this.§'!G§;
         this.§'"k§.§,S§(param1);
      }
      
      public function §>!N§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§'"k§.§>!N§(param1,param2,param3))
         {
            this.§'!4§(param1);
         }
      }
      
      public function §^y§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§'"k§.§5L§(param1);
         var _loc4_:b2AABB = this.§'"k§.§5L§(param2);
         return _loc3_.§^y§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§'"k§.GetUserData(param1);
      }
      
      public function §5L§(param1:*) : b2AABB
      {
         return this.§'"k§.§5L§(param1);
      }
      
      public function §&# §() : int
      {
         return this.§'!G§;
      }
      
      public function §]!J§(param1:Function) : void
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
         for each(queryProxy in this.§;v§)
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
               _loc2_.§37§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§3",§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§'"k§.§5L§(queryProxy);
            this.§'"k§.§8#+§(QueryCallback,fatAABB);
         }
         this.§;v§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§'"k§.GetUserData(primaryPair.§37§);
            userDataB = this.§'"k§.GetUserData(primaryPair.§3",§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§37§ != primaryPair.§37§ || pair.§3",§ != primaryPair.§3",§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §8#+§(param1:Function, param2:b2AABB) : void
      {
         this.§'"k§.§8#+§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§'"k§.RayCast(param1,param2);
      }
      
      public function §>x§() : void
      {
      }
      
      public function §>"d§(param1:int) : void
      {
         this.§'"k§.§>"d§(param1);
      }
      
      private function §'!4§(param1:b2DynamicTreeNode) : void
      {
         this.§;v§[this.§;v§.length] = param1;
      }
      
      private function §3"T§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§;v§.indexOf(param1);
         this.§;v§.splice(_loc2_,1);
      }
      
      private function §26§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
