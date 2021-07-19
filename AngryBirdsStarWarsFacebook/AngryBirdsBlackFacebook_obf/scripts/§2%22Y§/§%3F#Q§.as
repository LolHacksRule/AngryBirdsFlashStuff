package §2"Y§
{
   import §4!$§.b2CircleShape;
   import §4!$§.b2Shape;
   import flash.geom.Point;
   
   public class §?#Q§ extends §?#^§
   {
       
      
      private var §0#J§:Number;
      
      private var §+!$§:Point;
      
      public function §?#Q§(param1:Number, param2:Point = null, param3:String = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param1,param3);
         }
         do
         {
            §§push(this);
            if(_loc4_)
            {
               §§push(param2);
            }
            §§pop().§+!$§ = new Point(0,0);
            do
            {
               this.§0#J§ = param1;
            }
            while(_loc5_ && this);
            
         }
         while(_loc5_ && param3);
         
      }
      
      public function get radius() : Number
      {
         return this.§0#J§;
      }
      
      public function get §`!`§() : Point
      {
         return this.§+!$§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2CircleShape = new b2CircleShape();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            §§push(this.§0#J§);
            if(!_loc4_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().§>#X§(§§pop());
         }
         return _loc2_;
      }
   }
}
