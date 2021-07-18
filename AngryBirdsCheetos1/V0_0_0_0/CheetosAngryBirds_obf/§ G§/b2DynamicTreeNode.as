package § G§
{
   public class b2DynamicTreeNode
   {
       
      
      public var §7! §;
      
      public var aabb:b2AABB;
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.aabb = new b2AABB();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §#x§() : Boolean
      {
         return this.child1 == null;
      }
   }
}
