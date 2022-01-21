package §1!D§
{
   import § !1§.§[n§;
   import §'Y§.§6Q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §'!J§ implements §[n§
   {
      
      private static const §0!O§:String = "StatsLevelCount";
      
      private static const §[!@§:String = "StatsClientErrors";
      
      private static const §?S§:Number = 10;
       
      
      private var §[#§:Timer;
      
      private var §>7§:Array;
      
      public function §'!J§()
      {
         this.§>7§ = [];
         super();
         this.§[#§ = new Timer(1000,§?S§);
      }
      
      public function §>G§(param1:String, param2:String = "", param3:int = 1, param4:int = 0) : void
      {
         var _loc7_:§6Q§ = null;
         var _loc6_:Object = null;
         switch(param1)
         {
            case §"!6§.ACTION_GAME_LEVEL_STARTED:
               if(!this.§[#§.running)
               {
                  _loc6_ = {
                     "type":§0!O§,
                     "value":"start",
                     "count":1
                  };
                  this.§[#§.reset();
                  this.§[#§.start();
                  break;
               }
               break;
            case §"!6§.ACTION_APPLICATION_CRASH:
               _loc6_ = {
                  "type":§[!@§,
                  "value":param2
               };
               break;
            case §"!6§.§3g§:
               _loc6_ = {
                  "type":§[!@§,
                  "value":param2
               };
               break;
            case §"!6§.§7#§:
               _loc6_ = {
                  "type":§[!@§,
                  "value":param4,
                  "stackTrace":param2
               };
         }
         if(_loc6_ != null)
         {
            _loc7_ = new §6Q§(_loc6_,§;!4§.§'!O§ + "tracking",this,§6Q§.§&!0§);
            this.§>7§.push(_loc7_);
         }
      }
      
      public function §3s§() : void
      {
         var _loc1_:§6Q§ = null;
         for each(_loc1_ in this.§>7§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§>7§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
      }
   }
}
