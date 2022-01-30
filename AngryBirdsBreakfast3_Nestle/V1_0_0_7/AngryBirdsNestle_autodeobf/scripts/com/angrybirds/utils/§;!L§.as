package com.angrybirds.utils
{
   import §3@§.§=W§;
   import §@!l§.§@H§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §;!L§ implements §#!z§
   {
      
      public static const §#!^§:String = "StatsLevelCount";
      
      private static const §]@§:Number = 10;
       
      
      private var §1!Q§:Timer;
      
      private var §>!8§:Array;
      
      public function §;!L§()
      {
         this.§>!8§ = [];
         super();
         this.§1!Q§ = new Timer(1000,§]@§);
      }
      
      public function §-!Y§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§=W§ = null;
         switch(param1)
         {
            case §#!^§:
               if(!this.§1!Q§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§#!^§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §=W§(_loc3_,AngryBirdsCustom.§9"+§ + _loc2_,this,§=W§.§"!x§);
                  this.§>!8§.push(_loc4_);
                  this.§1!Q§.reset();
                  this.§1!Q§.start();
                  break;
               }
         }
      }
      
      public function §8z§() : void
      {
         var _loc1_:§=W§ = null;
         for each(_loc1_ in this.§>!8§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§>!8§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9!@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §@!2§(param1:IOErrorEvent) : void
      {
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closeAllPopups();
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §@H§());
      }
   }
}
