package §_-Jx§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §_-eL§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         this.aabb = new b2AABB();
         super();
      }
      
      public function §_-rk§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
