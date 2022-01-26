package §_-Et§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §_-QX§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         this.aabb = new b2AABB();
         super();
      }
      
      public function §_-ZK§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
