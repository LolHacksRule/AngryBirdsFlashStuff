package §_-lh§
{
   import §_-Ja§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-tQ§:uint = 0;
      
      private var §_-48§:uint = 0;
      
      private var §_-sZ§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            if(!_loc4_)
            {
               this.§_-tQ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
               if(!_loc4_)
               {
                  this.§_-48§ = uint(255 * b2Math.§_-Gj§(param2,0,1));
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr76);
            }
            this.§_-sZ§ = uint(255 * b2Math.§_-Gj§(param3,0,1));
         }
         addr76:
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§_-tQ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
            if(!_loc4_)
            {
               §§goto(addr41);
            }
            §§goto(addr59);
         }
         addr41:
         this.§_-48§ = uint(255 * b2Math.§_-Gj§(param2,0,1));
         if(_loc5_ || param2)
         {
            this.§_-sZ§ = uint(255 * b2Math.§_-Gj§(param3,0,1));
            addr59:
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-tQ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-48§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-sZ§ = uint(255 * b2Math.§_-Gj§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-tQ§ << 16);
         if(_loc2_)
         {
            §§push(this.§_-48§);
            if(_loc2_)
            {
               §§goto(addr51);
            }
            §§push(§§pop() | §§pop());
         }
         addr51:
         §§push(§§pop() | §§pop() << 8);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-sZ§);
         }
         return §§pop();
      }
   }
}
