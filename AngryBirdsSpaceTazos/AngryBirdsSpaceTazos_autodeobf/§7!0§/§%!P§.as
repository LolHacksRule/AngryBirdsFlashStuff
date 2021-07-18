package §7!0§
{
   import §!?§.§'k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §%!P§ implements §-!^§
   {
      
      public static const §-6§:String = "StatsLevelCount";
      
      private static const §7!g§:Number = 10;
       
      
      private var §@"1§:Timer;
      
      private var §9!A§:Array;
      
      public function §%!P§()
      {
         this.§9!A§ = [];
         super();
         this.§@"1§ = new Timer(1000,§7!g§);
      }
      
      public function §^!U§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§'k§ = null;
         switch(param1)
         {
            case §-6§:
               if(!this.§@"1§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§-6§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §'k§(_loc3_,§`Y§.§6T§ + _loc2_,this,§'k§.§;!^§);
                  this.§9!A§.push(_loc4_);
                  this.§@"1§.reset();
                  this.§@"1§.start();
               }
         }
      }
      
      public function §9L§() : void
      {
         var _loc1_:§'k§ = null;
         for each(_loc1_ in this.§9!A§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§9!A§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
   }
}
