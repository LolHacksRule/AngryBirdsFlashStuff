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
      
      public function CreateProxy(aabb:b2AABB, userData:*) : *
      {
         var proxy:b2DynamicTreeNode = this.m_tree.CreateProxy(aabb,userData);
         ++this.m_proxyCount;
         this.BufferMove(proxy);
         return proxy;
      }
      
      public function DestroyProxy(proxy:*) : void
      {
         this.UnBufferMove(proxy);
         --this.m_proxyCount;
         this.m_tree.DestroyProxy(proxy);
      }
      
      public function MoveProxy(proxy:*, aabb:b2AABB, displacement:b2Vec2) : void
      {
         var buffer:Boolean = this.m_tree.MoveProxy(proxy,aabb,displacement);
         if(buffer)
         {
            this.BufferMove(proxy);
         }
      }
      
      public function TestOverlap(proxyA:*, proxyB:*) : Boolean
      {
         var aabbA:b2AABB = this.m_tree.GetFatAABB(proxyA);
         var aabbB:b2AABB = this.m_tree.GetFatAABB(proxyB);
         return aabbA.TestOverlap(aabbB);
      }
      
      public function GetUserData(proxy:*) : *
      {
         return this.m_tree.GetUserData(proxy);
      }
      
      public function GetFatAABB(proxy:*) : b2AABB
      {
         return this.m_tree.GetFatAABB(proxy);
      }
      
      public function GetProxyCount() : int
      {
         return this.m_proxyCount;
      }
      
      public function UpdatePairs(callback:Function) : void
      {
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         this.m_pairCount = 0;
         for each(queryProxy in this.m_moveBuffer)
         {
            fatAABB = this.m_tree.GetFatAABB(queryProxy);
            this.m_tree.Query(this.QueryCallback,fatAABB,queryProxy);
         }
         this.m_moveBuffer.length = 0;
         for(i = 0; i < this.m_pairCount; )
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
      
      public function QueryCallback(proxy:b2DynamicTreeNode, queryProxy:b2DynamicTreeNode) : Boolean
      {
         if(proxy == queryProxy)
         {
            return true;
         }
         if(this.m_pairCount == this.m_pairBuffer.length)
         {
            this.m_pairBuffer[this.m_pairCount] = new b2DynamicTreePair();
         }
         var pair:b2DynamicTreePair = this.m_pairBuffer[this.m_pairCount];
         pair.proxyA = proxy < queryProxy ? proxy : queryProxy;
         pair.proxyB = proxy >= queryProxy ? proxy : queryProxy;
         ++this.m_pairCount;
         return true;
      }
      
      public function Query(callback:Function, aabb:b2AABB) : void
      {
         this.m_tree.Query(callback,aabb);
      }
      
      public function RayCast(callback:Function, input:b2RayCastInput) : void
      {
         this.m_tree.RayCast(callback,input);
      }
      
      public function Validate() : void
      {
      }
      
      public function Rebalance(iterations:int) : void
      {
         this.m_tree.Rebalance(iterations);
      }
      
      private function BufferMove(proxy:b2DynamicTreeNode) : void
      {
         this.m_moveBuffer[this.m_moveBuffer.length] = proxy;
      }
      
      private function UnBufferMove(proxy:b2DynamicTreeNode) : void
      {
         var i:int = this.m_moveBuffer.indexOf(proxy);
         this.m_moveBuffer.splice(i,1);
      }
      
      private function ComparePairs(pair1:b2DynamicTreePair, pair2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
