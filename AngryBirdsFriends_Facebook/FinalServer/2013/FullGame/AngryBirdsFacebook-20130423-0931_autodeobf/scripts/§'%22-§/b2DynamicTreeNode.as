package §'"-§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §-!"§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         this.aabb = new b2AABB();
         super();
      }
      
      public function §3!n§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
