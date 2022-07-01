package com.angrybirds.utils
{
   import §#!`§.§4!#§;
   import §`q§.§6!7§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §8O§ implements §finally§
   {
      
      public static const §-W§:String = "StatsLevelCount";
      
      private static const §<!Q§:Number = 10;
       
      
      private var §3"'§:Timer;
      
      private var §4"-§:Array;
      
      public function §8O§()
      {
         this.§4"-§ = [];
         super();
         this.§3"'§ = new Timer(1000,§<!Q§);
      }
      
      public function §0!S§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§4!#§ = null;
         switch(param1)
         {
            case §-W§:
               if(!this.§3"'§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§-W§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §4!#§(_loc3_,AngryBirdsCustom.§91§ + _loc2_,this,§4!#§.§;0§);
                  this.§4"-§.push(_loc4_);
                  this.§3"'§.reset();
                  this.§3"'§.start();
                  break;
               }
         }
      }
      
      public function §4" §() : void
      {
         var _loc1_:§4!#§ = null;
         for each(_loc1_ in this.§4"-§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§4"-§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §+!R§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!E§(param1:IOErrorEvent) : void
      {
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closeAllPopups();
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §6!7§());
      }
   }
}
