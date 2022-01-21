package §?I§
{
   import §,i§.§7;§;
   import §<Z§.§!!W§;
   import §finally§.§8k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §9!#§ implements §!!W§
   {
      
      public static const §<§:String = "StatsLevelCount";
      
      public static const §#!J§:String = "StatsClientErrors";
      
      public static const §?"§:String = "StatsGameLoadedCount";
      
      public static const §-w§:String = "StatsFreePlayLoginCount";
      
      public static const §%!K§:String = "StatsFreePlayRegisterCount";
      
      private static const §-v§:Number = 10;
       
      
      private var §%!_§:Timer;
      
      private var §2!J§:Boolean;
      
      private var §6B§:Array;
      
      public function §9!#§()
      {
         this.§6B§ = [];
         super();
         this.§%!_§ = new Timer(1000,§-v§);
         this.§2!J§ = false;
      }
      
      public function §=<§(param1:String, param2:String = "", param3:int = 1, param4:int = 0) : void
      {
         var _loc7_:§7;§ = null;
         var _loc6_:Object = null;
         switch(param1)
         {
            case §2C§.ACTION_GAME_LEVEL_STARTED:
               if(!this.§%!_§.running)
               {
                  if((§8k§.§8h§ == "2-1" || §8k§.§8h§ == "2-2") && !§2!M§.§&!#§.§-!Z§)
                  {
                     if(!this.§2!J§)
                     {
                        this.§2!J§ = true;
                        _loc6_ = {
                           "type":"StatsFreePlayCount",
                           "value":"unique"
                        };
                     }
                     else
                     {
                        _loc6_ = {
                           "type":"StatsFreePlayCount",
                           "value":"all"
                        };
                     }
                  }
                  else
                  {
                     _loc6_ = {
                        "type":§<§,
                        "value":"start",
                        "count":1
                     };
                  }
                  this.§%!_§.reset();
                  this.§%!_§.start();
                  break;
               }
               break;
            case §2C§.ACTION_APPLICATION_CRASH:
               _loc6_ = {
                  "type":§#!J§,
                  "value":param2
               };
               break;
            case §2C§.§+!'§:
               _loc6_ = {
                  "type":§#!J§,
                  "value":param2
               };
               break;
            case §2C§.§"!4§:
               _loc6_ = {
                  "type":§#!J§,
                  "value":param4,
                  "stackTrace":param2
               };
               break;
            case §'k§.§[$§:
               _loc6_ = {"type":§?"§};
               break;
            case §'k§.§6!i§:
               param2 = !!this.§2!J§ ? "login-play" : "login-no-play";
               _loc6_ = {
                  "type":§-w§,
                  "value":param2
               };
               break;
            case §'k§.§3!W§:
               param2 = !!this.§2!J§ ? "register-play" : "register-no-play";
               _loc6_ = {
                  "type":§%!K§,
                  "value":param2
               };
         }
         if(_loc6_ != null)
         {
            _loc7_ = new §7;§(_loc6_,§2!M§.§`8§ + "tracking",this,§7;§.§[%§);
            this.§6B§.push(_loc7_);
         }
      }
      
      public function §2N§() : void
      {
         var _loc1_:§7;§ = null;
         for each(_loc1_ in this.§6B§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§6B§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
      }
   }
}
