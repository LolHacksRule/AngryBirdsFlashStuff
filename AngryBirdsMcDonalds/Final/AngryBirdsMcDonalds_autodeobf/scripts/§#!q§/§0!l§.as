package §#!q§
{
   import §-!F§.§2[§;
   import §1!^§.§,!n§;
   import §<! §.§<<§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §0!l§ implements §<<§
   {
      
      public static const §3!7§:String = "StatsLevelCount";
      
      public static const §1!B§:String = "StatsClientErrors";
      
      public static const §4!B§:String = "StatsGameLoadedCount";
      
      public static const §<f§:String = "StatsFreePlayLoginCount";
      
      public static const §1!f§:String = "StatsFreePlayRegisterCount";
      
      private static const §4K§:Number = 10;
       
      
      private var §-3§:Timer;
      
      private var §6-§:Boolean;
      
      private var §!!N§:Array;
      
      public function §0!l§()
      {
         this.§!!N§ = [];
         super();
         this.§-3§ = new Timer(1000,§4K§);
         this.§6-§ = false;
      }
      
      public function §>!I§(param1:String, param2:String = "", param3:int = 1, param4:int = 0) : void
      {
         var _loc7_:§,!n§ = null;
         var _loc6_:Object = null;
         switch(param1)
         {
            case §6!1§.ACTION_GAME_LEVEL_STARTED:
               if(!this.§-3§.running)
               {
                  if((§2[§.§^N§ == "2-1" || §2[§.§^N§ == "2-2") && !§9!_§.§1!?§.§`2§)
                  {
                     if(!this.§6-§)
                     {
                        this.§6-§ = true;
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
                        "type":§3!7§,
                        "value":"start",
                        "count":1
                     };
                  }
                  this.§-3§.reset();
                  this.§-3§.start();
                  break;
               }
               break;
            case §6!1§.ACTION_APPLICATION_CRASH:
               _loc6_ = {
                  "type":§1!B§,
                  "value":param2
               };
               break;
            case §6!1§.§-6§:
               _loc6_ = {
                  "type":§1!B§,
                  "value":param2
               };
               break;
            case §6!1§.§ !c§:
               _loc6_ = {
                  "type":§1!B§,
                  "value":param4,
                  "stackTrace":param2
               };
               break;
            case §6!?§.§?!a§:
               _loc6_ = {"type":§4!B§};
               break;
            case §6!?§.§!c§:
               param2 = !!this.§6-§ ? "login-play" : "login-no-play";
               _loc6_ = {
                  "type":§<f§,
                  "value":param2
               };
               break;
            case §6!?§.§^0§:
               param2 = !!this.§6-§ ? "register-play" : "register-no-play";
               _loc6_ = {
                  "type":§1!f§,
                  "value":param2
               };
         }
         if(_loc6_ != null)
         {
            _loc7_ = new §,!n§(_loc6_,§9!_§.§?!k§ + "tracking",this,§,!n§.§-I§);
            this.§!!N§.push(_loc7_);
         }
      }
      
      public function §#i§() : void
      {
         var _loc1_:§,!n§ = null;
         for each(_loc1_ in this.§!!N§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§!!N§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
      }
   }
}
