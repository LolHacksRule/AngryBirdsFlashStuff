package §!§
{
   public class b2DynamicTreeNode
   {
       
      
      public var userData;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.aabb = new b2AABB();
            do
            {
               super();
            }
            while(_loc1_);
            
         }
      }
      
      public function §5!@§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
