package §%8§
{
   import §=!!§.b2CircleShape;
   import §=!!§.b2Shape;
   import flash.geom.Point;
   
   public class §%!S§ extends §[_§
   {
       
      
      private var §,Z§:Number;
      
      private var §4u§:Point;
      
      public function §%!S§(param1:Number, param2:Point = null, param3:String = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param1,param3);
         }
         do
         {
            §§push(this);
            if(!(_loc5_ && param2))
            {
               §§push(param2);
            }
            §§pop().§4u§ = new Point(0,0);
            do
            {
               this.§,Z§ = param1;
            }
            while(!_loc4_);
            
         }
         while(_loc5_ && param2);
         
      }
      
      public function get radius() : Number
      {
         return this.§,Z§;
      }
      
      public function get §-x§() : Point
      {
         return this.§4u§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2CircleShape = new b2CircleShape();
         if(_loc3_)
         {
            §§push(_loc2_);
            §§push(this.§,Z§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().§0!J§(§§pop());
         }
         return _loc2_;
      }
   }
}
