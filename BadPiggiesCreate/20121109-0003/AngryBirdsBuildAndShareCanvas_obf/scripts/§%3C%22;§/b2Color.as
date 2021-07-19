package §<";§
{
   import §<!a§.b2Math;
   
   public class b2Color
   {
       
      
      private var § null§:uint = 0;
      
      private var § &§:uint = 0;
      
      private var §2c§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§ null§ = uint(255 * b2Math.§5" §(param1,0,1));
               while(!(_loc5_ && param1))
               {
                  this.§ &§ = uint(255 * b2Math.§5" §(param2,0,1));
                  do
                  {
                     this.§2c§ = uint(255 * b2Math.§5" §(param3,0,1));
                  }
                  while(_loc5_);
                  
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
         }
         §§goto(addr54);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§ null§ = uint(255 * b2Math.§5" §(param1,0,1));
         }
         while(true)
         {
            this.§ &§ = uint(255 * b2Math.§5" §(param2,0,1));
            while(!_loc4_)
            {
               this.§2c§ = uint(255 * b2Math.§5" §(param3,0,1));
               if(!(_loc4_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ null§ = uint(255 * b2Math.§5" §(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ &§ = uint(255 * b2Math.§5" §(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2c§ = uint(255 * b2Math.§5" §(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§ null§ << 16);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§ &§);
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr70);
            }
            §§push(§§pop() | §§pop());
         }
         addr70:
         §§push(§§pop() | §§pop() << 8);
         if(!(_loc1_ && _loc2_))
         {
            return this.§2c§;
         }
      }
   }
}
