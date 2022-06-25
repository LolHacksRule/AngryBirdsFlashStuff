package §8!H§
{
   import §?!&§.b2Math;
   
   public class b2Color
   {
       
      
      private var §,R§:uint = 0;
      
      private var §@!V§:uint = 0;
      
      private var §#m§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§,R§ = uint(255 * b2Math.§"J§(param1,0,1));
               addr98:
               while(_loc4_)
               {
               }
            }
         }
         while(true)
         {
            this.§@!V§ = uint(255 * b2Math.§"J§(param2,0,1));
            while(!_loc5_)
            {
               this.§#m§ = uint(255 * b2Math.§"J§(param3,0,1));
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
            this.§,R§ = uint(255 * b2Math.§"J§(param1,0,1));
            while(true)
            {
               this.§@!V§ = uint(255 * b2Math.§"J§(param2,0,1));
               while(!(_loc5_ && param1))
               {
                  this.§#m§ = uint(255 * b2Math.§"J§(param3,0,1));
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
            this.§,R§ = uint(255 * b2Math.§"J§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@!V§ = uint(255 * b2Math.§"J§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#m§ = uint(255 * b2Math.§"J§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,R§ << 16);
         if(_loc2_ || _loc1_)
         {
            §§push(this.§@!V§);
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
            return this.§#m§;
         }
      }
   }
}
