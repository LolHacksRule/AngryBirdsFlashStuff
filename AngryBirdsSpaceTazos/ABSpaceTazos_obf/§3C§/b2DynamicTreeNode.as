package §3c§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §!!%§;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.aabb = new b2AABB();
         }
         do
         {
            super();
         }
         while(!_loc1_);
         
      }
      
      public function § _§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
