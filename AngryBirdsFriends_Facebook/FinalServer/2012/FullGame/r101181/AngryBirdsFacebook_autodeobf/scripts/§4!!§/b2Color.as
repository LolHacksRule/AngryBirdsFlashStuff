package §4!!§
{
   import §#]§.b2Math;
   
   public class b2Color
   {
       
      
      private var §,!h§:uint = 0;
      
      private var §;!1§:uint = 0;
      
      private var §-!F§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§,!h§ = uint(255 * b2Math.§<O§(param1,0,1));
            }
            addr101:
         }
         while(true)
         {
            this.§;!1§ = uint(255 * b2Math.§<O§(param2,0,1));
            for(; !(_loc4_ && param2); this.§-!F§ = uint(255 * b2Math.§<O§(param3,0,1)),if(!(_loc4_ && param3))
            {
               return;
            })
            {
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr101);
            }
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§,!h§ = uint(255 * b2Math.§<O§(param1,0,1));
            while(true)
            {
               this.§;!1§ = uint(255 * b2Math.§<O§(param2,0,1));
               while(!(_loc5_ && this))
               {
                  this.§-!F§ = uint(255 * b2Math.§<O§(param3,0,1));
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!h§ = uint(255 * b2Math.§<O§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§;!1§ = uint(255 * b2Math.§<O§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§-!F§ = uint(255 * b2Math.§<O§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,!h§ << 16);
         if(!_loc2_)
         {
            §§push(this.§;!1§);
            if(_loc1_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc1_ || _loc1_)
               {
                  addr48:
                  return §§pop() | this.§-!F§;
               }
            }
         }
         §§goto(addr48);
      }
   }
}
