package §+!,§
{
   import §&L§.b2Math;
   
   public class b2Color
   {
       
      
      private var §2i§:uint = 0;
      
      private var §>l§:uint = 0;
      
      private var §[!C§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§2i§ = uint(255 * b2Math.§[$§(param1,0,1));
               addr98:
               while(_loc4_)
               {
               }
            }
         }
         while(true)
         {
            this.§>l§ = uint(255 * b2Math.§[$§(param2,0,1));
            while(!_loc5_)
            {
               this.§[!C§ = uint(255 * b2Math.§[$§(param3,0,1));
               if(!(_loc5_ && param1))
               {
                  return;
               }
            }
            §§goto(addr98);
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§2i§ = uint(255 * b2Math.§[$§(param1,0,1));
            while(true)
            {
               this.§>l§ = uint(255 * b2Math.§[$§(param2,0,1));
               while(!(_loc5_ && param1))
               {
                  this.§[!C§ = uint(255 * b2Math.§[$§(param3,0,1));
                  if(_loc5_ && param3)
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
            }
         }
         §§goto(addr53);
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2i§ = uint(255 * b2Math.§[$§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§>l§ = uint(255 * b2Math.§[$§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!C§ = uint(255 * b2Math.§[$§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§2i§ << 16);
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>l§);
            if(_loc2_)
            {
               §§goto(addr50);
            }
            §§push(§§pop() | §§pop());
         }
         addr50:
         §§push(§§pop() | §§pop() << 8);
         if(!_loc1_)
         {
            return this.§[!C§;
         }
      }
   }
}
