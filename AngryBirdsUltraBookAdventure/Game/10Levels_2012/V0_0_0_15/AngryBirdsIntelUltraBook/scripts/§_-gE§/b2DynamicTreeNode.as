package §_-gE§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §_-05u§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.aabb = new b2AABB();
         }
         do
         {
            super();
         }
         while(_loc2_ && this);
         
      }
      
      public function §_-EF§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
