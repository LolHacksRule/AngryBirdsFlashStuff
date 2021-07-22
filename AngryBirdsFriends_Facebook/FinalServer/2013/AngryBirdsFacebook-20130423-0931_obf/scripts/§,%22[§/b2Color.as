package §,"[§
{
   import §6!^§.b2Math;
   
   public class b2Color
   {
       
      
      private var §"!§:uint = 0;
      
      private var §7!$§:uint = 0;
      
      private var §9d§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§"!§ = uint(255 * b2Math.§1"T§(param1,0,1));
            while(true)
            {
               this.§7!$§ = uint(255 * b2Math.§1"T§(param2,0,1));
               while(_loc5_)
               {
                  if(!_loc4_)
                  {
                     this.§9d§ = uint(255 * b2Math.§1"T§(param3,0,1));
                     if(!(_loc4_ && param3))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§"!§ = uint(255 * b2Math.§1"T§(param1,0,1));
            while(true)
            {
               this.§7!$§ = uint(255 * b2Math.§1"T§(param2,0,1));
               while(_loc5_)
               {
                  this.§9d§ = uint(255 * b2Math.§1"T§(param3,0,1));
                  if(!(_loc4_ && this))
                  {
                     return;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!§ = uint(255 * b2Math.§1"T§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!$§ = uint(255 * b2Math.§1"T§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9d§ = uint(255 * b2Math.§1"T§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§"!§ << 16);
         if(_loc1_)
         {
            §§push(this.§7!$§);
            if(_loc1_)
            {
               §§goto(addr49);
            }
            §§push(§§pop() | §§pop());
         }
         addr49:
         §§push(§§pop() | §§pop() << 8);
         if(!(_loc2_ && _loc1_))
         {
            return this.§9d§;
         }
      }
   }
}
