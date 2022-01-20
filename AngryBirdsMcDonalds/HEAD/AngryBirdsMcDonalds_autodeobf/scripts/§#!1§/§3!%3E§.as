package §#!1§
{
   import §&6§.§`!T§;
   import §,4§.§;_§;
   import §,E§.§"!K§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §3!>§ implements §`!T§
   {
      
      public static const §=!H§:String = "StatsLevelCount";
      
      public static const §'!i§:String = "StatsClientErrors";
      
      public static const §3!!§:String = "StatsGameLoadedCount";
      
      public static const §=2§:String = "StatsFreePlayLoginCount";
      
      public static const §1J§:String = "StatsFreePlayRegisterCount";
      
      private static const §`3§:Number = 10;
       
      
      private var §^>§:Timer;
      
      private var §`_§:Boolean;
      
      private var §=!=§:Array;
      
      public function §3!>§()
      {
         this.§=!=§ = [];
         super();
         this.§^>§ = new Timer(1000,§`3§);
         this.§`_§ = false;
      }
      
      public function §7!'§(param1:String, param2:String = "", param3:int = 1, param4:int = 0) : void
      {
         var _loc7_:§"!K§ = null;
         var _loc6_:Object = null;
         switch(param1)
         {
            case §6!<§.ACTION_GAME_LEVEL_STARTED:
               if(!this.§^>§.running)
               {
                  if((§;_§.§2!Q§ == "2-1" || §;_§.§2!Q§ == "2-2") && !§3![§.§5!6§.§%!%§)
                  {
                     if(!this.§`_§)
                     {
                        this.§`_§ = true;
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
                        "type":§=!H§,
                        "value":"start",
                        "count":1
                     };
                  }
                  this.§^>§.reset();
                  this.§^>§.start();
                  break;
               }
               break;
            case §6!<§.ACTION_APPLICATION_CRASH:
               _loc6_ = {
                  "type":§'!i§,
                  "value":param2
               };
               break;
            case §6!<§.§1!j§:
               _loc6_ = {
                  "type":§'!i§,
                  "value":param2
               };
               break;
            case §6!<§.§1L§:
               _loc6_ = {
                  "type":§'!i§,
                  "value":param4,
                  "stackTrace":param2
               };
               break;
            case §6!>§.§!!@§:
               _loc6_ = {"type":§3!!§};
               break;
            case §6!>§.§?!4§:
               param2 = !!this.§`_§ ? "login-play" : "login-no-play";
               _loc6_ = {
                  "type":§=2§,
                  "value":param2
               };
               break;
            case §6!>§.§4!9§:
               param2 = !!this.§`_§ ? "register-play" : "register-no-play";
               _loc6_ = {
                  "type":§1J§,
                  "value":param2
               };
         }
         if(_loc6_ != null)
         {
            _loc7_ = new §"!K§(_loc6_,§3![§.§=![§ + "tracking",this,§"!K§.§<!4§);
            this.§=!=§.push(_loc7_);
         }
      }
      
      public function §3!7§() : void
      {
         var _loc1_:§"!K§ = null;
         for each(_loc1_ in this.§=!=§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§=!=§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
      }
   }
}
