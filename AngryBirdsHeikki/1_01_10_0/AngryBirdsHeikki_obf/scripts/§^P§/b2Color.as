package §^P§
{
   import §6A§.b2Math;
   
   public class b2Color
   {
       
      
      private var §3]§:uint = 0;
      
      private var §8w§:uint = 0;
      
      private var §^!8§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§3]§ = uint(255 * b2Math.§>I§(param1,0,1));
               while(true)
               {
                  this.§8w§ = uint(255 * b2Math.§>I§(param2,0,1));
                  §§goto(addr64);
               }
            }
         }
         addr64:
         while(true)
         {
            this.§^!8§ = uint(255 * b2Math.§>I§(param3,0,1));
            if(_loc4_)
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§3]§ = uint(255 * b2Math.§>I§(param1,0,1));
            while(true)
            {
               this.§8w§ = uint(255 * b2Math.§>I§(param2,0,1));
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§^!8§ = uint(255 * b2Math.§>I§(param3,0,1));
            if(_loc4_ || param1)
            {
               if(_loc4_)
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
         if(_loc2_ || _loc3_)
         {
            this.§3]§ = uint(255 * b2Math.§>I§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8w§ = uint(255 * b2Math.§>I§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§^!8§ = uint(255 * b2Math.§>I§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3]§ << 16);
         if(!(_loc1_ && this))
         {
            §§push(this.§8w§);
            if(!_loc1_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc2_ || _loc1_)
               {
                  addr64:
                  return §§pop() | this.§^!8§;
               }
            }
         }
         §§goto(addr64);
      }
   }
}
