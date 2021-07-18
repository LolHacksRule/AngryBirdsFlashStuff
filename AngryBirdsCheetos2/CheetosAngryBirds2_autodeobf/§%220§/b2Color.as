package §"0§
{
   import §6!H§.b2Math;
   
   public class b2Color
   {
       
      
      private var §&N§:uint = 0;
      
      private var §1!6§:uint = 0;
      
      private var §?>§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§&N§ = uint(255 * b2Math.§9!%§(param1,0,1));
               loop1:
               while(!_loc5_)
               {
                  this.§1!6§ = uint(255 * b2Math.§9!%§(param2,0,1));
                  while(true)
                  {
                     this.§?>§ = uint(255 * b2Math.§9!%§(param3,0,1));
                     if(!(_loc5_ && param3))
                     {
                        if(_loc4_)
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
         §§goto(addr72);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§&N§ = uint(255 * b2Math.§9!%§(param1,0,1));
            while(true)
            {
               this.§1!6§ = uint(255 * b2Math.§9!%§(param2,0,1));
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§?>§ = uint(255 * b2Math.§9!%§(param3,0,1));
            if(_loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§&N§ = uint(255 * b2Math.§9!%§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!6§ = uint(255 * b2Math.§9!%§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?>§ = uint(255 * b2Math.§9!%§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&N§ << 16);
         if(_loc2_)
         {
            §§push(this.§1!6§);
            if(!_loc1_)
            {
               §§goto(addr60);
            }
            §§push(§§pop() | §§pop());
         }
         addr60:
         §§push(§§pop() | §§pop() << 8);
         if(!(_loc1_ && _loc2_))
         {
            return this.§?>§;
         }
      }
   }
}
