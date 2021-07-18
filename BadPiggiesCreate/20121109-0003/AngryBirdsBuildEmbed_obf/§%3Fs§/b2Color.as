package §?s§
{
   import §<!B§.b2Math;
   
   public class b2Color
   {
       
      
      private var §!!O§:uint = 0;
      
      private var §&!o§:uint = 0;
      
      private var §"!s§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(_loc5_)
            {
               this.§!!O§ = uint(255 * b2Math.§%!j§(param1,0,1));
               if(_loc5_ || param3)
               {
                  addr61:
                  this.§&!o§ = uint(255 * b2Math.§%!j§(param2,0,1));
                  if(_loc4_)
                  {
                  }
                  §§goto(addr85);
               }
               this.§"!s§ = uint(255 * b2Math.§%!j§(param3,0,1));
               addr85:
               return;
            }
         }
         §§goto(addr61);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§!!O§ = uint(255 * b2Math.§%!j§(param1,0,1));
            if(_loc5_ || this)
            {
               §§goto(addr62);
            }
            §§goto(addr80);
         }
         addr62:
         this.§&!o§ = uint(255 * b2Math.§%!j§(param2,0,1));
         if(_loc5_ || param1)
         {
            addr80:
            this.§"!s§ = uint(255 * b2Math.§%!j§(param3,0,1));
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!!O§ = uint(255 * b2Math.§%!j§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!o§ = uint(255 * b2Math.§%!j§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§"!s§ = uint(255 * b2Math.§%!j§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!!O§ << 16);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§&!o§);
            if(_loc1_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc1_ || _loc2_)
               {
                  addr53:
                  §§push(§§pop() | this.§"!s§);
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
   }
}
