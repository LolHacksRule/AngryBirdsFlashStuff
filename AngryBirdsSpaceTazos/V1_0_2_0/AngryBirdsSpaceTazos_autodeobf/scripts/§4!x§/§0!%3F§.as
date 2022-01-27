package §4!x§
{
   import §""%§.§#`§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §0!?§ implements §`[§
   {
      
      public static const §9!4§:String = "StatsLevelCount";
      
      private static const §"!4§:Number = 10;
       
      
      private var §[t§:Timer;
      
      private var § !j§:Array;
      
      public function §0!?§()
      {
         this.§ !j§ = [];
         super();
         this.§[t§ = new Timer(1000,§"!4§);
      }
      
      public function §6x§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§#`§ = null;
         switch(param1)
         {
            case §9!4§:
               if(!this.§[t§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§9!4§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §#`§(_loc3_,§^"=§.§^"3§ + _loc2_,this,§#`§.§-n§);
                  this.§ !j§.push(_loc4_);
                  this.§[t§.reset();
                  this.§[t§.start();
                  break;
               }
         }
      }
      
      public function §9!]§() : void
      {
         var _loc1_:§#`§ = null;
         for each(_loc1_ in this.§ !j§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§ !j§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
      }
   }
}
