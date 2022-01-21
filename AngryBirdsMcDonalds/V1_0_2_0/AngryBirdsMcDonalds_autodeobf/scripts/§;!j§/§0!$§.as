package §;!j§
{
   import §!!h§.§1H§;
   import §+-§.§3!5§;
   import §7"§.§1! §;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §0!$§ implements §1! §
   {
      
      public static const §,?§:String = "StatsLevelCount";
      
      public static const §9W§:String = "StatsClientErrors";
      
      public static const §-E§:String = "StatsGameLoadedCount";
      
      public static const §>8§:String = "StatsFreePlayLoginCount";
      
      public static const §5!1§:String = "StatsFreePlayRegisterCount";
      
      private static const §<h§:Number = 10;
       
      
      private var §;Y§:Timer;
      
      private var §@n§:Boolean;
      
      private var §1!§:Array;
      
      public function §0!$§()
      {
         this.§1!§ = [];
         super();
         this.§;Y§ = new Timer(1000,§<h§);
         this.§@n§ = false;
      }
      
      public function §%!<§(param1:String, param2:String = "", param3:int = 1, param4:int = 0) : void
      {
         var _loc7_:§1H§ = null;
         var _loc6_:Object = null;
         switch(param1)
         {
            case §'s§.ACTION_GAME_LEVEL_STARTED:
               if(!this.§;Y§.running)
               {
                  if((§3!5§.§-!2§ == "2-1" || §3!5§.§-!2§ == "2-2") && !§'j§.§%g§.§"!W§)
                  {
                     if(!this.§@n§)
                     {
                        this.§@n§ = true;
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
                        "type":§,?§,
                        "value":"start",
                        "count":1
                     };
                  }
                  this.§;Y§.reset();
                  this.§;Y§.start();
                  break;
               }
               break;
            case §'s§.ACTION_APPLICATION_CRASH:
               _loc6_ = {
                  "type":§9W§,
                  "value":param2
               };
               break;
            case §'s§.§`@§:
               _loc6_ = {
                  "type":§9W§,
                  "value":param2
               };
               break;
            case §'s§.§13§:
               _loc6_ = {
                  "type":§9W§,
                  "value":param4,
                  "stackTrace":param2
               };
               break;
            case §25§.§+]§:
               _loc6_ = {"type":§-E§};
               break;
            case §25§.§7e§:
               param2 = !!this.§@n§ ? "login-play" : "login-no-play";
               _loc6_ = {
                  "type":§>8§,
                  "value":param2
               };
               break;
            case §25§.§`E§:
               param2 = !!this.§@n§ ? "register-play" : "register-no-play";
               _loc6_ = {
                  "type":§5!1§,
                  "value":param2
               };
         }
         if(_loc6_ != null)
         {
            _loc7_ = new §1H§(_loc6_,§'j§.§2H§ + "tracking",this,§1H§.§`P§);
            this.§1!§.push(_loc7_);
         }
      }
      
      public function §^!E§() : void
      {
         var _loc1_:§1H§ = null;
         for each(_loc1_ in this.§1!§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§1!§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
      }
   }
}
