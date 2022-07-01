package com.angrybirds.utils
{
   import §%9§.§9k§;
   import §[j§.§%p§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §+!`§ implements §!!^§
   {
      
      public static const §1!h§:String = "StatsLevelCount";
      
      private static const §<!G§:Number = 10;
       
      
      private var §]!X§:Timer;
      
      private var § !'§:Array;
      
      public function §+!`§()
      {
         this.§ !'§ = [];
         super();
         this.§]!X§ = new Timer(1000,§<!G§);
      }
      
      public function §8"0§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§%p§ = null;
         switch(param1)
         {
            case §1!h§:
               if(!this.§]!X§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§1!h§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §%p§(_loc3_,AngryBirdsCustom.§5"+§ + _loc2_,this,§%p§.§#0§);
                  this.§ !'§.push(_loc4_);
                  this.§]!X§.reset();
                  this.§]!X§.start();
                  break;
               }
         }
      }
      
      public function §2"4§() : void
      {
         var _loc1_:§%p§ = null;
         for each(_loc1_ in this.§ !'§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§ !'§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closeAllPopups();
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §9k§());
      }
   }
}
