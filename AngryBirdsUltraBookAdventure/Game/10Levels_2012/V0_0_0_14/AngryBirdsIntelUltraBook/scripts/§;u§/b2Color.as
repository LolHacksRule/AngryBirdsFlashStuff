package §;u§
{
   import §8>§.b2Math;
   
   public class b2Color
   {
       
      
      private var §=g§:uint = 0;
      
      private var §!h§:uint = 0;
      
      private var §^§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
         }
         do
         {
            this.§=g§ = uint(255 * b2Math.§5L§(param1,0,1));
            do
            {
               this.§!h§ = uint(255 * b2Math.§5L§(param2,0,1));
               do
               {
                  this.§^§ = uint(255 * b2Math.§5L§(param3,0,1));
               }
               while(!(_loc5_ || param2));
               
            }
            while(!_loc5_);
            
         }
         while(_loc4_ && param2);
         
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=g§ = uint(255 * b2Math.§5L§(param1,0,1));
            do
            {
               this.§!h§ = uint(255 * b2Math.§5L§(param2,0,1));
               do
               {
                  this.§^§ = uint(255 * b2Math.§5L§(param3,0,1));
               }
               while(!(_loc4_ || param3));
               
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§=g§ = uint(255 * b2Math.§5L§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!h§ = uint(255 * b2Math.§5L§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^§ = uint(255 * b2Math.§5L§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=g§ << 16);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§!h§);
            if(_loc2_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc2_)
               {
                  addr49:
                  return §§pop() | this.§^§;
               }
            }
         }
         §§goto(addr49);
      }
   }
}
