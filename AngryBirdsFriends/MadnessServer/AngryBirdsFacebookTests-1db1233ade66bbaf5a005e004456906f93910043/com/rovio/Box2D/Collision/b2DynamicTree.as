package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   
   public class b2DynamicTree
   {
       
      
      private var m_root:b2DynamicTreeNode;
      
      private var m_freeList:b2DynamicTreeNode;
      
      private var m_path:uint;
      
      private var m_insertionCount:int;
      
      public function b2DynamicTree()
      {
         super();
         this.m_root = null;
         this.m_freeList = null;
         this.m_path = 0;
         this.m_insertionCount = 0;
      }
      
      public function CreateProxy(aabb:b2AABB, userData:*) : b2DynamicTreeNode
      {
         var node:b2DynamicTreeNode = null;
         var extendX:Number = NaN;
         var extendY:Number = NaN;
         node = this.AllocateNode();
         extendX = b2Settings.b2_aabbExtension;
         extendY = b2Settings.b2_aabbExtension;
         node.aabb.lowerBound.x = aabb.lowerBound.x - extendX;
         node.aabb.lowerBound.y = aabb.lowerBound.y - extendY;
         node.aabb.upperBound.x = aabb.upperBound.x + extendX;
         node.aabb.upperBound.y = aabb.upperBound.y + extendY;
         node.userData = userData;
         this.InsertLeaf(node);
         return node;
      }
      
      public function DestroyProxy(proxy:b2DynamicTreeNode) : void
      {
         this.RemoveLeaf(proxy);
         this.FreeNode(proxy);
      }
      
      public function MoveProxy(proxy:b2DynamicTreeNode, aabb:b2AABB, displacement:b2Vec2) : Boolean
      {
         var extendX:Number = NaN;
         var extendY:Number = NaN;
         b2Settings.b2Assert(proxy.IsLeaf());
         if(proxy.aabb.Contains(aabb))
         {
            return false;
         }
         this.RemoveLeaf(proxy);
         extendX = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (displacement.x > 0 ? displacement.x : -displacement.x);
         extendY = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (displacement.y > 0 ? displacement.y : -displacement.y);
         proxy.aabb.lowerBound.x = aabb.lowerBound.x - extendX;
         proxy.aabb.lowerBound.y = aabb.lowerBound.y - extendY;
         proxy.aabb.upperBound.x = aabb.upperBound.x + extendX;
         proxy.aabb.upperBound.y = aabb.upperBound.y + extendY;
         this.InsertLeaf(proxy);
         return true;
      }
      
      public function Rebalance(iterations:int) : void
      {
         var node:b2DynamicTreeNode = null;
         var bit:uint = 0;
         if(this.m_root == null)
         {
            return;
         }
         for(var i:int = 0; i < iterations; i++)
         {
            node = this.m_root;
            bit = 0;
            while(node.IsLeaf() == false)
            {
               node = !!(this.m_path >> bit & 1) ? node.child2 : node.child1;
               bit = bit + 1 & 31;
            }
            ++this.m_path;
            this.RemoveLeaf(node);
            this.InsertLeaf(node);
         }
      }
      
      public function GetFatAABB(proxy:b2DynamicTreeNode) : b2AABB
      {
         return proxy.aabb;
      }
      
      public function GetUserData(proxy:b2DynamicTreeNode) : *
      {
         return proxy.userData;
      }
      
      public function Query(callback:Function, aabb:b2AABB, queryProxy:b2DynamicTreeNode = null) : void
      {
         var node:b2DynamicTreeNode = null;
         var proceed:Boolean = false;
         if(this.m_root == null)
         {
            return;
         }
         var stack:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var count:int = 0;
         var _loc8_:*;
         stack[_loc8_ = count++] = this.m_root;
         while(count > 0)
         {
            node = stack[--count];
            if(node.aabb.TestOverlap(aabb))
            {
               if(node.IsLeaf())
               {
                  if(queryProxy)
                  {
                     proceed = callback(node,queryProxy);
                  }
                  else
                  {
                     proceed = callback(node);
                  }
                  if(!proceed)
                  {
                     return;
                  }
               }
               else
               {
                  var _loc9_:*;
                  stack[_loc9_ = count++] = node.child1;
                  var _loc10_:*;
                  stack[_loc10_ = count++] = node.child2;
               }
            }
         }
      }
      
      public function RayCast(callback:Function, input:b2RayCastInput) : void
      {
         var p1:b2Vec2 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         var node:b2DynamicTreeNode = null;
         var c:b2Vec2 = null;
         var h:b2Vec2 = null;
         var separation:Number = NaN;
         var subInput:b2RayCastInput = null;
         if(this.m_root == null)
         {
            return;
         }
         p1 = input.p1;
         var p2:b2Vec2 = input.p2;
         var r:b2Vec2 = b2Math.SubtractVV(p1,p2);
         r.Normalize();
         var v:b2Vec2 = b2Math.CrossFV(1,r);
         var abs_v:b2Vec2 = b2Math.AbsV(v);
         var maxFraction:Number = input.maxFraction;
         var segmentAABB:b2AABB = new b2AABB();
         tX = p1.x + maxFraction * (p2.x - p1.x);
         tY = p1.y + maxFraction * (p2.y - p1.y);
         segmentAABB.lowerBound.x = Math.min(p1.x,tX);
         segmentAABB.lowerBound.y = Math.min(p1.y,tY);
         segmentAABB.upperBound.x = Math.max(p1.x,tX);
         segmentAABB.upperBound.y = Math.max(p1.y,tY);
         var stack:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var count:int = 0;
         var _loc19_:*;
         stack[_loc19_ = count++] = this.m_root;
         while(count > 0)
         {
            node = stack[--count];
            if(node.aabb.TestOverlap(segmentAABB) != false)
            {
               c = node.aabb.GetCenter();
               h = node.aabb.GetExtents();
               separation = Math.abs(v.x * (p1.x - c.x) + v.y * (p1.y - c.y)) - abs_v.x * h.x - abs_v.y * h.y;
               if(separation <= 0)
               {
                  if(node.IsLeaf())
                  {
                     subInput = new b2RayCastInput();
                     subInput.p1 = input.p1;
                     subInput.p2 = input.p2;
                     subInput.maxFraction = input.maxFraction;
                     maxFraction = callback(subInput,node);
                     if(maxFraction == 0)
                     {
                        return;
                     }
                     tX = p1.x + maxFraction * (p2.x - p1.x);
                     tY = p1.y + maxFraction * (p2.y - p1.y);
                     segmentAABB.lowerBound.x = Math.min(p1.x,tX);
                     segmentAABB.lowerBound.y = Math.min(p1.y,tY);
                     segmentAABB.upperBound.x = Math.max(p1.x,tX);
                     segmentAABB.upperBound.y = Math.max(p1.y,tY);
                  }
                  else
                  {
                     var _loc20_:*;
                     stack[_loc20_ = count++] = node.child1;
                     var _loc21_:*;
                     stack[_loc21_ = count++] = node.child2;
                  }
               }
            }
         }
      }
      
      private function AllocateNode() : b2DynamicTreeNode
      {
         var node:b2DynamicTreeNode = null;
         if(this.m_freeList)
         {
            node = this.m_freeList;
            this.m_freeList = node.parent;
            node.parent = null;
            node.child1 = null;
            node.child2 = null;
            return node;
         }
         return new b2DynamicTreeNode();
      }
      
      private function FreeNode(node:b2DynamicTreeNode) : void
      {
         node.parent = this.m_freeList;
         this.m_freeList = node;
      }
      
      private function InsertLeaf(leaf:b2DynamicTreeNode) : void
      {
         var child1:b2DynamicTreeNode = null;
         var child2:b2DynamicTreeNode = null;
         var norm1:Number = NaN;
         var norm2:Number = NaN;
         ++this.m_insertionCount;
         if(this.m_root == null)
         {
            this.m_root = leaf;
            this.m_root.parent = null;
            return;
         }
         var center:b2Vec2 = leaf.aabb.GetCenter();
         var sibling:b2DynamicTreeNode = this.m_root;
         if(sibling.IsLeaf() == false)
         {
            do
            {
               child1 = sibling.child1;
               child2 = sibling.child2;
               norm1 = Math.abs((child1.aabb.lowerBound.x + child1.aabb.upperBound.x) / 2 - center.x) + Math.abs((child1.aabb.lowerBound.y + child1.aabb.upperBound.y) / 2 - center.y);
               norm2 = Math.abs((child2.aabb.lowerBound.x + child2.aabb.upperBound.x) / 2 - center.x) + Math.abs((child2.aabb.lowerBound.y + child2.aabb.upperBound.y) / 2 - center.y);
               if(norm1 < norm2)
               {
                  sibling = child1;
               }
               else
               {
                  sibling = child2;
               }
            }
            while(sibling.IsLeaf() == false);
            
         }
         var node1:b2DynamicTreeNode = sibling.parent;
         var node2:b2DynamicTreeNode = this.AllocateNode();
         node2.parent = node1;
         node2.userData = null;
         node2.aabb.Combine(leaf.aabb,sibling.aabb);
         if(node1)
         {
            if(sibling.parent.child1 == sibling)
            {
               node1.child1 = node2;
            }
            else
            {
               node1.child2 = node2;
            }
            node2.child1 = sibling;
            node2.child2 = leaf;
            sibling.parent = node2;
            leaf.parent = node2;
            while(!node1.aabb.Contains(node2.aabb))
            {
               node1.aabb.Combine(node1.child1.aabb,node1.child2.aabb);
               node2 = node1;
               node1 = node1.parent;
               if(!node1)
               {
                  break;
               }
            }
         }
         else
         {
            node2.child1 = sibling;
            node2.child2 = leaf;
            sibling.parent = node2;
            leaf.parent = node2;
            this.m_root = node2;
         }
      }
      
      private function RemoveLeaf(leaf:b2DynamicTreeNode) : void
      {
         var sibling:b2DynamicTreeNode = null;
         var oldAABB:b2AABB = null;
         if(leaf == this.m_root)
         {
            this.m_root = null;
            return;
         }
         var node2:b2DynamicTreeNode = leaf.parent;
         var node1:b2DynamicTreeNode = node2.parent;
         if(node2.child1 == leaf)
         {
            sibling = node2.child2;
         }
         else
         {
            sibling = node2.child1;
         }
         if(node1)
         {
            if(node1.child1 == node2)
            {
               node1.child1 = sibling;
            }
            else
            {
               node1.child2 = sibling;
            }
            sibling.parent = node1;
            this.FreeNode(node2);
            while(node1)
            {
               oldAABB = node1.aabb;
               node1.aabb = b2AABB.Combine(node1.child1.aabb,node1.child2.aabb);
               if(oldAABB.Contains(node1.aabb))
               {
                  break;
               }
               node1 = node1.parent;
            }
         }
         else
         {
            this.m_root = sibling;
            sibling.parent = null;
            this.FreeNode(node2);
         }
      }
   }
}
