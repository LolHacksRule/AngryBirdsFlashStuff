package §2!F§
{
   import §0!G§.b2Math;
   
   public class b2Color
   {
       
      
      private var §=!4§:uint = 0;
      
      private var §]!+§:uint = 0;
      
      private var §!!V§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
         }
         do
         {
            this.§=!4§ = uint(255 * b2Math.§-!1§(param1,0,1));
            do
            {
               this.§]!+§ = uint(255 * b2Math.§-!1§(param2,0,1));
               do
               {
                  this.§!!V§ = uint(255 * b2Math.§-!1§(param3,0,1));
               }
               while(_loc5_);
               
            }
            while(_loc5_ && param3);
            
         }
         while(_loc5_ && param3);
         
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=!4§ = uint(255 * b2Math.§-!1§(param1,0,1));
            do
            {
               this.§]!+§ = uint(255 * b2Math.§-!1§(param2,0,1));
               do
               {
                  this.§!!V§ = uint(255 * b2Math.§-!1§(param3,0,1));
               }
               while(_loc5_);
               
            }
            while(_loc5_ && this);
            
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!4§ = uint(255 * b2Math.§-!1§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§]!+§ = uint(255 * b2Math.§-!1§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!V§ = uint(255 * b2Math.§-!1§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=!4§ << 16);
         if(_loc1_ || this)
         {
            §§push(this.§]!+§);
            if(_loc1_ || this)
            {
               §§goto(addr64);
            }
            §§push(§§pop() | §§pop());
         }
         addr64:
         §§push(§§pop() | §§pop() << 8);
         if(!_loc2_)
         {
            return this.§!!V§;
         }
      }
   }
}
