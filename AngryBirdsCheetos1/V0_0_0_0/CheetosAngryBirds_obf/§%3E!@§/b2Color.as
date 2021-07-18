package §>!@§
{
   import §9"§.b2Math;
   
   public class b2Color
   {
       
      
      private var §=A§:uint = 0;
      
      private var §"K§:uint = 0;
      
      private var §0!2§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§=A§ = uint(255 * b2Math.§?!&§(param1,0,1));
               do
               {
                  this.§"K§ = uint(255 * b2Math.§?!&§(param2,0,1));
                  continue loop0;
               }
               while(!_loc5_);
               
            }
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§=A§ = uint(255 * b2Math.§?!&§(param1,0,1));
         }
         do
         {
            this.§"K§ = uint(255 * b2Math.§?!&§(param2,0,1));
            do
            {
               this.§0!2§ = uint(255 * b2Math.§?!&§(param3,0,1));
            }
            while(!(_loc5_ || param3));
            
         }
         while(!(_loc5_ || param1));
         
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=A§ = uint(255 * b2Math.§?!&§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"K§ = uint(255 * b2Math.§?!&§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0!2§ = uint(255 * b2Math.§?!&§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=A§ << 16);
         if(!_loc1_)
         {
            §§push(this.§"K§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(!_loc1_)
               {
                  addr59:
                  return §§pop() | this.§0!2§;
               }
            }
         }
         §§goto(addr59);
      }
   }
}
