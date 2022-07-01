package com.angrybirds.utils
{
   import §2!,§.§'!0§;
   import §?u§.§48§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §`<§ implements §?z§
   {
      
      public static const §6L§:String = "StatsLevelCount";
      
      private static const §5!m§:Number = 10;
       
      
      private var §5n§:Timer;
      
      private var §!%§:Array;
      
      public function §`<§()
      {
         this.§!%§ = [];
         super();
         this.§5n§ = new Timer(1000,§5!m§);
      }
      
      public function § !F§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§48§ = null;
         switch(param1)
         {
            case §6L§:
               if(!this.§5n§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§6L§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §48§(_loc3_,AngryBirdsCustom.§8!O§ + _loc2_,this,§48§.§6!^§);
                  this.§!%§.push(_loc4_);
                  this.§5n§.reset();
                  this.§5n§.start();
                  break;
               }
         }
      }
      
      public function §!h§() : void
      {
         var _loc1_:§48§ = null;
         for each(_loc1_ in this.§!%§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§!%§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §%+§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5" §(param1:IOErrorEvent) : void
      {
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closeAllPopups();
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §'!0§());
      }
   }
}
