package §'!_§
{
   import §@!E§.b2Math;
   
   public class b2Color
   {
       
      
      private var §'!I§:uint = 0;
      
      private var §9!O§:uint = 0;
      
      private var §!!q§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            while(true)
            {
               this.§'!I§ = uint(255 * b2Math.§ !X§(param1,0,1));
               loop2:
               while(_loc4_ || param1)
               {
                  this.§!!q§ = uint(255 * b2Math.§ !X§(param3,0,1));
                  if(!(_loc5_ && param3))
                  {
                     addr57:
                     if(_loc5_ && this)
                     {
                        while(true)
                        {
                           this.§9!O§ = uint(255 * b2Math.§ !X§(param2,0,1));
                           continue loop2;
                           §§goto(addr57);
                        }
                        addr107:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§'!I§ = uint(255 * b2Math.§ !X§(param1,0,1));
         }
         do
         {
            this.§9!O§ = uint(255 * b2Math.§ !X§(param2,0,1));
            do
            {
               this.§!!q§ = uint(255 * b2Math.§ !X§(param3,0,1));
            }
            while(!(_loc4_ || param1));
            
         }
         while(!(_loc4_ || param3));
         
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§'!I§ = uint(255 * b2Math.§ !X§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!O§ = uint(255 * b2Math.§ !X§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§!!q§ = uint(255 * b2Math.§ !X§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§'!I§ << 16);
         if(_loc1_ || this)
         {
            §§push(this.§9!O§);
            if(_loc1_ || this)
            {
               §§goto(addr64);
            }
            §§push(§§pop() | §§pop());
         }
         addr64:
         §§push(§§pop() | §§pop() << 8);
         if(_loc1_)
         {
            return this.§!!q§;
         }
      }
   }
}
