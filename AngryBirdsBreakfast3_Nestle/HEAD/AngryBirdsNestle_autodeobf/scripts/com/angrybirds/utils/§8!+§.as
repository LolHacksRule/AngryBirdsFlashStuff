package com.angrybirds.utils
{
   import §'!3§.§!i§;
   import §1![§.§#E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §8!+§ implements §30§
   {
      
      public static const §;Z§:String = "StatsLevelCount";
      
      public static const §"s§:String = "StatsGameLoadedCount";
      
      private static const §3l§:Number = 10;
       
      
      private var §=5§:Timer;
      
      private var §1"3§:Array;
      
      public function §8!+§()
      {
         this.§1"3§ = [];
         super();
         this.§=5§ = new Timer(1000,§3l§);
      }
      
      public function §1x§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§#E§ = null;
         switch(param1)
         {
            case §;Z§:
               if(!this.§=5§.running)
               {
                  _loc3_ = {
                     "type":§;Z§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §#E§(_loc3_,AngryBirdsCustom.§;"1§ + "tracking",this,§#E§.§3b§);
                  this.§1"3§.push(_loc4_);
                  this.§=5§.reset();
                  this.§=5§.start();
                  break;
               }
               break;
            case §"s§:
               _loc3_ = {
                  "type":§"s§,
                  "value":"success",
                  "count":1
               };
               _loc4_ = new §#E§(_loc3_,AngryBirdsCustom.§;"1§ + "tracking",this,§#E§.§3b§);
               this.§1"3§.push(_loc4_);
         }
      }
      
      public function §9"$§() : void
      {
         var _loc1_:§#E§ = null;
         for each(_loc1_ in this.§1"3§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§1"3§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closeAllPopups();
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new §!i§());
      }
   }
}
