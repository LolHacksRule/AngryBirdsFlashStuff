package §=o§
{
   import §2"=§.b2Math;
   
   public class b2Color
   {
       
      
      private var §2c§:uint = 0;
      
      private var §7!7§:uint = 0;
      
      private var §<U§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
         }
         loop0:
         do
         {
            this.§2c§ = uint(255 * b2Math.§&>§(param1,0,1));
            while(true)
            {
               this.§7!7§ = uint(255 * b2Math.§&>§(param2,0,1));
               while(_loc4_ || param2)
               {
                  this.§<U§ = uint(255 * b2Math.§&>§(param3,0,1));
                  if(!(_loc5_ && param3))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§2c§ = uint(255 * b2Math.§&>§(param1,0,1));
         }
         while(true)
         {
            this.§7!7§ = uint(255 * b2Math.§&>§(param2,0,1));
            while(_loc4_ || param2)
            {
               this.§<U§ = uint(255 * b2Math.§&>§(param3,0,1));
               if(!_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2c§ = uint(255 * b2Math.§&>§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!7§ = uint(255 * b2Math.§&>§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<U§ = uint(255 * b2Math.§&>§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§2c§ << 16);
         if(_loc1_ || this)
         {
            §§push(this.§7!7§);
            if(!_loc2_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc1_ || _loc1_)
               {
                  addr63:
                  return §§pop() | this.§<U§;
               }
            }
         }
         §§goto(addr63);
      }
   }
}
