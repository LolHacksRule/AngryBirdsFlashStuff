package §"!&§
{
   import §,Z§.b2CircleShape;
   import §,Z§.b2Shape;
   import flash.geom.Point;
   
   public class §="A§ extends set
   {
       
      
      private var §?!1§:Number;
      
      private var §7i§:Point;
      
      public function §="A§(param1:Number, param2:Point = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param1);
            do
            {
               §§push(this);
               if(_loc4_ || param1)
               {
                  §§push(param2);
               }
               §§pop().§7i§ = new Point(0,0);
               do
               {
                  this.§?!1§ = param1;
               }
               while(_loc3_ && param2);
               
            }
            while(!_loc4_);
            
         }
      }
      
      public function get radius() : Number
      {
         return this.§?!1§;
      }
      
      public function get §="+§() : Point
      {
         return this.§7i§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2CircleShape = new b2CircleShape();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            §§push(this.§?!1§);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().§<!+§(§§pop());
         }
         return _loc2_;
      }
   }
}
