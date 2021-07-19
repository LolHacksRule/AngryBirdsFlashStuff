package § !w§
{
   public class §3!1§
   {
      
      private static const §%!B§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!B§ = ":";
         }
      }
      
      public var step:int;
      
      public var §6#I§:Number;
      
      public var §,!u§:Number;
      
      public function §3!1§(param1:int, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
         }
         while(true)
         {
            this.step = param1;
            while(_loc4_)
            {
               this.§6#I§ = param2;
               do
               {
                  this.§,!u§ = param3;
               }
               while(!(_loc4_ || param2));
               
               if(!(_loc5_ && param2))
               {
                  return;
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §3!1§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§%!B§);
         if(_loc4_)
         {
            if(_loc2_.length == 3)
            {
               if(!(_loc3_ && §3!1§))
               {
                  return new §3!1§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
                  addr45:
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function toString() : String
      {
         return this.step + §%!B§ + this.§6#I§ + §%!B§ + this.§,!u§;
      }
   }
}
