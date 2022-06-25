package §+!g§
{
   import §>!8§.b2Math;
   
   public class b2Color
   {
       
      
      private var §-!]§:uint = 0;
      
      private var §'P§:uint = 0;
      
      private var §%! §:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§-!]§ = uint(255 * b2Math.§3X§(param1,0,1));
               loop1:
               while(_loc5_)
               {
                  this.§'P§ = uint(255 * b2Math.§3X§(param2,0,1));
                  while(true)
                  {
                     this.§%! § = uint(255 * b2Math.§3X§(param3,0,1));
                     if(_loc5_ || this)
                     {
                        if(_loc5_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§-!]§ = uint(255 * b2Math.§3X§(param1,0,1));
            while(true)
            {
               this.§'P§ = uint(255 * b2Math.§3X§(param2,0,1));
               while(!(_loc5_ && param3))
               {
                  this.§%! § = uint(255 * b2Math.§3X§(param3,0,1));
                  if(!(_loc4_ || param3))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-!]§ = uint(255 * b2Math.§3X§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'P§ = uint(255 * b2Math.§3X§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%! § = uint(255 * b2Math.§3X§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-!]§ << 16);
         if(_loc1_ || this)
         {
            §§push(this.§'P§);
            if(_loc1_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc1_)
               {
                  addr48:
                  return §§pop() | this.§%! §;
               }
            }
         }
         §§goto(addr48);
      }
   }
}
