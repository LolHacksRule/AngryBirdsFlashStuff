package §@!3§
{
   import §&H§.b2Math;
   
   public class b2Color
   {
       
      
      private var §+L§:uint = 0;
      
      private var §#!x§:uint = 0;
      
      private var §>w§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§+L§ = uint(255 * b2Math.§?!?§(param1,0,1));
               while(!(_loc4_ && param1))
               {
                  this.§#!x§ = uint(255 * b2Math.§?!?§(param2,0,1));
                  while(_loc5_ || this)
                  {
                     this.§>w§ = uint(255 * b2Math.§?!?§(param3,0,1));
                     if(!_loc5_)
                     {
                        continue;
                     }
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§+L§ = uint(255 * b2Math.§?!?§(param1,0,1));
            while(true)
            {
               this.§#!x§ = uint(255 * b2Math.§?!?§(param2,0,1));
               loop1:
               while(_loc5_ || param2)
               {
                  while(true)
                  {
                     this.§>w§ = uint(255 * b2Math.§?!?§(param3,0,1));
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+L§ = uint(255 * b2Math.§?!?§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§#!x§ = uint(255 * b2Math.§?!?§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§>w§ = uint(255 * b2Math.§?!?§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+L§ << 16);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§#!x§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc2_)
               {
                  addr54:
                  return §§pop() | this.§>w§;
               }
            }
         }
         §§goto(addr54);
      }
   }
}
