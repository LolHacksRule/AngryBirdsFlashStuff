package §5!o§
{
   import §2"=§.*;
   
   public class b2DynamicTreeBroadPhase implements §#!M§
   {
       
      
      private var §="!§:b2DynamicTree;
      
      private var §?!B§:int;
      
      private var §^"+§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.§="!§ = new b2DynamicTree();
         this.§^"+§ = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function §>!#§(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.§="!§.§>!#§(param1,param2);
         ++this.§?!B§;
         this.§<!q§(_loc3_);
         return _loc3_;
      }
      
      public function §`4§(param1:*) : void
      {
         this.§`b§(param1);
         --this.§?!B§;
         this.§="!§.§`4§(param1);
      }
      
      public function §-!?§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.§="!§.§-!?§(param1,param2,param3))
         {
            this.§<!q§(param1);
         }
      }
      
      public function §;c§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§="!§.§1c§(param1);
         var _loc4_:b2AABB = this.§="!§.§1c§(param2);
         return _loc3_.§;c§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§="!§.GetUserData(param1);
      }
      
      public function §1c§(param1:*) : b2AABB
      {
         return this.§="!§.§1c§(param1);
      }
      
      public function §;"=§() : int
      {
         return this.§?!B§;
      }
      
      public function §^!`§(param1:Function) : void
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
         for each(queryProxy in this.§^"+§)
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
               _loc2_.§^!W§ = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.§+!4§ = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.§="!§.§1c§(queryProxy);
            this.§="!§.§'!!§(QueryCallback,fatAABB);
         }
         this.§^"+§.length = 0;
         i = 0;
         loop1:
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.§="!§.GetUserData(primaryPair.§^!W§);
            userDataB = this.§="!§.GetUserData(primaryPair.§+!4§);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.§^!W§ != primaryPair.§^!W§ || pair.§+!4§ != primaryPair.§+!4§)
               {
                  continue loop1;
               }
               i++;
            }
         }
      }
      
      public function §'!!§(param1:Function, param2:b2AABB) : void
      {
         this.§="!§.§'!!§(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.§="!§.RayCast(param1,param2);
      }
      
      public function §6! §() : void
      {
      }
      
      public function §+Y§(param1:int) : void
      {
         this.§="!§.§+Y§(param1);
      }
      
      private function §<!q§(param1:b2DynamicTreeNode) : void
      {
         this.§^"+§[this.§^"+§.length] = param1;
      }
      
      private function §`b§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.§^"+§.indexOf(param1);
         this.§^"+§.splice(_loc2_,1);
      }
      
      private function §&!x§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
