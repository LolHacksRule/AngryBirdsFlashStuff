package §5!o§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §1P§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         this.aabb = new b2AABB();
         super();
      }
      
      public function §5"6§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
