package §'F§
{
   import §6Z§.b2Math;
   
   public class b2Color
   {
       
      
      private var §%!G§:uint = 0;
      
      private var § !g§:uint = 0;
      
      private var § !C§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§%!G§ = uint(255 * b2Math.§&a§(param1,0,1));
               while(true)
               {
                  this.§ !g§ = uint(255 * b2Math.§&a§(param2,0,1));
                  loop2:
                  while(_loc4_ || this)
                  {
                     while(true)
                     {
                        this.§ !C§ = uint(255 * b2Math.§&a§(param3,0,1));
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§%!G§ = uint(255 * b2Math.§&a§(param1,0,1));
            while(true)
            {
               this.§ !g§ = uint(255 * b2Math.§&a§(param2,0,1));
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     this.§ !C§ = uint(255 * b2Math.§&a§(param3,0,1));
                     if(_loc4_ || param3)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%!G§ = uint(255 * b2Math.§&a§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !g§ = uint(255 * b2Math.§&a§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§ !C§ = uint(255 * b2Math.§&a§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§%!G§ << 16);
         if(!_loc2_)
         {
            §§push(this.§ !g§);
            if(_loc1_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc1_)
               {
                  addr53:
                  return §§pop() | this.§ !C§;
               }
            }
         }
         §§goto(addr53);
      }
   }
}
