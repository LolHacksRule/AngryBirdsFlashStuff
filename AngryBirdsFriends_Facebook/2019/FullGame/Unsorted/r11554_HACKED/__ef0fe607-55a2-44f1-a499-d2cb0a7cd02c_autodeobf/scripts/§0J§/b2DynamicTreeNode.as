package §0J§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §@"Z§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         this.aabb = new b2AABB();
         super();
      }
      
      public function §8o§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
