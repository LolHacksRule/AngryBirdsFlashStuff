package § e§
{
   import §>!<§.§-E§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §[Z§ implements §[!X§
   {
      
      private static const §@!_§:String = "StatsLevelCount";
      
      private static const §!L§:String = "StatsClientErrors";
      
      private static const §^R§:Number = 10;
       
      
      private var §^C§:Timer;
      
      private var §=S§:Array;
      
      public function §[Z§()
      {
         this.§=S§ = [];
         super();
         this.§^C§ = new Timer(1000,§^R§);
      }
      
      public function §%p§(param1:String, param2:String = "", param3:int = 1, param4:int = 0) : void
      {
         var _loc7_:§-E§ = null;
         var _loc6_:Object = null;
         switch(param1)
         {
            case §0y§.ACTION_GAME_LEVEL_STARTED:
               if(!this.§^C§.running)
               {
                  _loc6_ = {
                     "type":§@!_§,
                     "value":"start",
                     "count":1
                  };
                  this.§^C§.reset();
                  this.§^C§.start();
                  break;
               }
               break;
            case §0y§.ACTION_APPLICATION_CRASH:
               _loc6_ = {
                  "type":§!L§,
                  "value":param2
               };
               break;
            case §0y§.§0!B§:
               _loc6_ = {
                  "type":§!L§,
                  "value":param2
               };
               break;
            case §0y§.§88§:
               _loc6_ = {
                  "type":§!L§,
                  "value":param4,
                  "stackTrace":param2
               };
         }
         if(_loc6_ != null)
         {
            _loc7_ = new §-E§(_loc6_,§ 4§.§=R§ + "tracking",this,§-E§.§]!,§);
            this.§=S§.push(_loc7_);
         }
      }
      
      public function §%V§() : void
      {
         var _loc1_:§-E§ = null;
         for each(_loc1_ in this.§=S§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§=S§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
      }
   }
}
