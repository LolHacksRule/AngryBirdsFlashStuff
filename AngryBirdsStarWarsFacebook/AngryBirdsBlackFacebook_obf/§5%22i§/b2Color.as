package §5"i§
{
   import §[R§.b2Math;
   
   public class b2Color
   {
       
      
      private var § 7§:uint = 0;
      
      private var §35§:uint = 0;
      
      private var §=!A§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§ 7§ = uint(255 * b2Math.§<"X§(param1,0,1));
               while(true)
               {
                  this.§35§ = uint(255 * b2Math.§<"X§(param2,0,1));
                  loop2:
                  while(_loc5_ || param2)
                  {
                     while(true)
                     {
                        this.§=!A§ = uint(255 * b2Math.§<"X§(param3,0,1));
                        if(_loc5_ || this)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§ 7§ = uint(255 * b2Math.§<"X§(param1,0,1));
            do
            {
               this.§35§ = uint(255 * b2Math.§<"X§(param2,0,1));
               do
               {
                  this.§=!A§ = uint(255 * b2Math.§<"X§(param3,0,1));
               }
               while(!_loc5_);
               
            }
            while(_loc4_);
            
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ 7§ = uint(255 * b2Math.§<"X§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§35§ = uint(255 * b2Math.§<"X§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§=!A§ = uint(255 * b2Math.§<"X§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§ 7§ << 16);
         if(_loc1_ || _loc1_)
         {
            §§push(this.§35§);
            if(!_loc2_)
            {
               §§goto(addr64);
            }
            §§push(§§pop() | §§pop());
         }
         addr64:
         §§push(§§pop() | §§pop() << 8);
         if(!(_loc2_ && _loc1_))
         {
            return this.§=!A§;
         }
      }
   }
}
