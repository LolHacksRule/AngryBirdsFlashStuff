package com.angrybirds.utils
{
   import §#!n§.§3!s§;
   import §?I§.§#V§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §9!`§ implements §[!k§
   {
      
      public static const §2!v§:String = "StatsLevelCount";
      
      private static const §0l§:Number = 10;
       
      
      private var §]!s§:Timer;
      
      private var § T§:Array;
      
      public function §9!`§()
      {
         this.§ T§ = [];
         super();
         this.§]!s§ = new Timer(1000,§0l§);
      }
      
      public function §&!R§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§3!s§ = null;
         switch(param1)
         {
            case §2!v§:
               if(!this.§]!s§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§2!v§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §3!s§(_loc3_,AngryBirdsCustom.§1=§ + _loc2_,this,§3!s§.§5%§);
                  this.§ T§.push(_loc4_);
                  this.§]!s§.reset();
                  this.§]!s§.start();
                  break;
               }
         }
      }
      
      public function §3!%§() : void
      {
         var _loc1_:§3!s§ = null;
         for each(_loc1_ in this.§ T§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§ T§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §0!n§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4J§(param1:IOErrorEvent) : void
      {
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closeAllPopups();
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §#V§());
      }
   }
}
