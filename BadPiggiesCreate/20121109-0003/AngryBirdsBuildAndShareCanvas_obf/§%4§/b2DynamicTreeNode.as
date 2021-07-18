package §%4§
{
   public class b2DynamicTreeNode
   {
       
      
      public var § S§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.aabb = new b2AABB();
         }
         do
         {
            super();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §%b§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
