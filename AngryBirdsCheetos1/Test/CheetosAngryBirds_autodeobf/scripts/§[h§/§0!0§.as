package §[h§
{
   import §&!F§.§"!d§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §0!0§ implements §7Z§
   {
      
      public static const §'!c§:String = "StatsLevelCount";
      
      private static const §]![§:Number = 10;
       
      
      private var §-!`§:Timer;
      
      private var §>v§:Array;
      
      public function §0!0§()
      {
         this.§>v§ = [];
         super();
         this.§-!`§ = new Timer(1000,§]![§);
      }
      
      public function §@Y§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§"!d§ = null;
         switch(param1)
         {
            case §'!c§:
               if(!this.§-!`§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§'!c§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §"!d§(_loc3_,§5!9§.§<V§ + _loc2_,this,§"!d§.§9X§);
                  this.§>v§.push(_loc4_);
                  this.§-!`§.reset();
                  this.§-!`§.start();
               }
         }
      }
      
      public function §5R§() : void
      {
         var _loc1_:§"!d§ = null;
         for each(_loc1_ in this.§>v§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§>v§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
