package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.*;
   
   public class b2DynamicTreeBroadPhase implements IBroadPhase
   {
       
      
      private var m_tree:b2DynamicTree;
      
      private var m_proxyCount:int;
      
      private var m_moveBuffer:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         this.m_tree = new b2DynamicTree();
         this.m_moveBuffer = new Vector.<b2DynamicTreeNode>();
         this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
         super();
      }
      
      public function CreateProxy(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this.m_tree.CreateProxy(param1,param2);
         ++this.m_proxyCount;
         this.BufferMove(_loc3_);
         return _loc3_;
      }
      
      public function DestroyProxy(param1:*) : void
      {
         this.UnBufferMove(param1);
         --this.m_proxyCount;
         this.m_tree.DestroyProxy(param1);
      }
      
      public function MoveProxy(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean;
         if(_loc4_ = this.m_tree.MoveProxy(param1,param2,param3))
         {
            this.BufferMove(param1);
         }
      }
      
      public function TestOverlap(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.m_tree.GetFatAABB(param1);
         var _loc4_:b2AABB = this.m_tree.GetFatAABB(param2);
         return _loc3_.TestOverlap(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.m_tree.GetUserData(param1);
      }
      
      public function GetFatAABB(param1:*) : b2AABB
      {
         return this.m_tree.GetFatAABB(param1);
      }
      
      public function GetProxyCount() : int
      {
         return this.m_proxyCount;
      }
      
      public function UpdatePairs(param1:Function) : void
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
         for each(queryProxy in this.m_moveBuffer)
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
               _loc2_.proxyA = param1 < queryProxy ? param1 : queryProxy;
               _loc2_.proxyB = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this.m_tree.GetFatAABB(queryProxy);
            this.m_tree.Query(QueryCallback,fatAABB);
         }
         this.m_moveBuffer.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this.m_tree.GetUserData(primaryPair.proxyA);
            userDataB = this.m_tree.GetUserData(primaryPair.proxyB);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair.proxyA != primaryPair.proxyA || pair.proxyB != primaryPair.proxyB)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function Query(param1:Function, param2:b2AABB) : void
      {
         this.m_tree.Query(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this.m_tree.RayCast(param1,param2);
      }
      
      public function Validate() : void
      {
      }
      
      public function Rebalance(param1:int) : void
      {
         this.m_tree.Rebalance(param1);
      }
      
      private function BufferMove(param1:b2DynamicTreeNode) : void
      {
         this.m_moveBuffer[this.m_moveBuffer.length] = param1;
      }
      
      private function UnBufferMove(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = this.m_moveBuffer.indexOf(param1);
         this.m_moveBuffer.splice(_loc2_,1);
      }
      
      private function ComparePairs(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
