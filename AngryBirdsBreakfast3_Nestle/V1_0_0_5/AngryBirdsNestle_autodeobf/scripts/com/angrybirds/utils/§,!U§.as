package com.angrybirds.utils
{
   import §&_§.§<H§;
   import §?!v§.§2" §;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §,!U§ implements §0;§
   {
      
      public static const §5!w§:String = "StatsLevelCount";
      
      private static const §%!X§:Number = 10;
       
      
      private var §9!?§:Timer;
      
      private var §+!T§:Array;
      
      public function §,!U§()
      {
         this.§+!T§ = [];
         super();
         this.§9!?§ = new Timer(1000,§%!X§);
      }
      
      public function §2!4§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§2" § = null;
         switch(param1)
         {
            case §5!w§:
               if(!this.§9!?§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§5!w§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §2" §(_loc3_,AngryBirdsCustom.§'P§ + _loc2_,this,§2" §.§0!<§);
                  this.§+!T§.push(_loc4_);
                  this.§9!?§.reset();
                  this.§9!?§.start();
                  break;
               }
         }
      }
      
      public function §5!m§() : void
      {
         var _loc1_:§2" § = null;
         for each(_loc1_ in this.§+!T§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§+!T§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §&k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0C§(param1:IOErrorEvent) : void
      {
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closeAllPopups();
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §<H§());
      }
   }
}
