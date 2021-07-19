package §&v§
{
   import §"y§.b2CircleShape;
   import §"y§.b2Shape;
   import flash.geom.Point;
   
   public class §"a§ extends §each §
   {
       
      
      private var §+`§:Number;
      
      private var §-C§:Point;
      
      public function §"a§(param1:Number, param2:Point = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param1);
         }
         while(true)
         {
            §§push(this);
            if(!(_loc3_ && this))
            {
               §§pop().§-C§ = param2 || new Point(0,0);
               while(_loc4_)
               {
                  this.§+`§ = param1;
                  if(_loc4_ || this)
                  {
                     return;
                  }
               }
               continue;
            }
            §§goto(addr60);
         }
      }
      
      public function get radius() : Number
      {
         return this.§+`§;
      }
      
      public function get §0V§() : Point
      {
         return this.§-C§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2CircleShape = new b2CircleShape();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            §§push(this.§+`§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().§>!w§(§§pop());
         }
         return _loc2_;
      }
   }
}
