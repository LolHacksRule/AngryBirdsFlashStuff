package §7!u§
{
   import §>H§.b2Math;
   
   public class b2Color
   {
       
      
      private var §%!H§:uint = 0;
      
      private var §=!8§:uint = 0;
      
      private var §=!@§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            while(true)
            {
               this.§%!H§ = uint(255 * b2Math.§]#§(param1,0,1));
               while(!_loc5_)
               {
                  this.§=!8§ = uint(255 * b2Math.§]#§(param2,0,1));
                  do
                  {
                     this.§=!@§ = uint(255 * b2Math.§]#§(param3,0,1));
                  }
                  while(_loc5_ && param1);
                  
                  if(_loc4_ || param3)
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§%!H§ = uint(255 * b2Math.§]#§(param1,0,1));
            while(true)
            {
               this.§=!8§ = uint(255 * b2Math.§]#§(param2,0,1));
               while(_loc4_)
               {
                  this.§=!@§ = uint(255 * b2Math.§]#§(param3,0,1));
                  if(!_loc5_)
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%!H§ = uint(255 * b2Math.§]#§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=!8§ = uint(255 * b2Math.§]#§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§=!@§ = uint(255 * b2Math.§]#§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§%!H§ << 16);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§=!8§);
            if(!_loc2_)
            {
               §§goto(addr54);
            }
            §§push(§§pop() | §§pop());
         }
         addr54:
         §§push(§§pop() | §§pop() << 8);
         if(!(_loc2_ && _loc1_))
         {
            return this.§=!@§;
         }
      }
   }
}
