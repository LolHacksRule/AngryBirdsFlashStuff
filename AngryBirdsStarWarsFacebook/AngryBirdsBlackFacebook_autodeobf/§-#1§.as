package
{
   import flash.display.InteractiveObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public final class §-#1§ extends EventDispatcher
   {
      
      private static var §8o§:§-#1§;
       
      
      private var §2m§:InteractiveObject = null;
      
      public function §-#1§()
      {
         super();
      }
      
      public static function get §%!E§() : §-#1§
      {
         if(!§8o§)
         {
            §8o§ = new §-#1§();
         }
         return §8o§;
      }
      
      public function §-!D§(param1:InteractiveObject) : void
      {
         try
         {
         }
         catch(e:Error)
         {
         }
      }
      
      public function shutdown() : void
      {
         §,I§.§%!E§.§1S§();
         §9N§.§%!E§.§1S§();
      }
      
      public function §3"%§(param1:uint, param2:uint, param3:Function, param4:Boolean = false) : Boolean
      {
         return §9N§.§%!E§.add(param1,param2,param3,param4);
      }
      
      public function §27§(param1:uint, param2:uint) : Boolean
      {
         return §9N§.§%!E§.§>"k§(param1,param2);
      }
      
      public function §1S§(param1:Object = null) : void
      {
         §,I§.§%!E§.§1S§();
         §9N§.§%!E§.§1S§();
      }
      
      public function §1§(param1:uint, param2:uint) : Boolean
      {
         return §9N§.§%!E§.§9;§(param1,param2);
      }
      
      public function § #1§(param1:Array, param2:Function, param3:Boolean = false) : Boolean
      {
         return §,I§.§%!E§.add(param1,param2,param3);
      }
      
      public function §!v§(param1:Array) : Boolean
      {
         return §,I§.§%!E§.§>"k§(param1);
      }
      
      public function §+M§(param1:Array) : Boolean
      {
         return §,I§.§%!E§.§+M§(param1);
      }
      
      public function §>7§(param1:KeyboardEvent) : void
      {
         if(§,I§.§%!E§.§?B§(param1) || §9N§.§%!E§.§?B§(param1))
         {
            trace("Stop!");
            param1.stopImmediatePropagation();
            param1.stopPropagation();
            param1.preventDefault();
         }
      }
      
      public function §^!5§(param1:KeyboardEvent) : void
      {
         §,I§.§%!E§.§ "O§(param1);
         §9N§.§%!E§.§ "O§(param1);
      }
   }
}
