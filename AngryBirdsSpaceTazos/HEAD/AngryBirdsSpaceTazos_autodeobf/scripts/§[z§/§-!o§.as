package §[z§
{
   import §%!P§.§7""§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §-!o§ implements §[!A§
   {
      
      public static const §,!'§:String = "StatsLevelCount";
      
      private static const §?-§:Number = 10;
       
      
      private var §6!b§:Timer;
      
      private var §,!p§:Array;
      
      public function §-!o§()
      {
         this.§,!p§ = [];
         super();
         this.§6!b§ = new Timer(1000,§?-§);
      }
      
      public function §<>§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§7""§ = null;
         switch(param1)
         {
            case §,!'§:
               if(!this.§6!b§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§,!'§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §7""§(_loc3_,§@T§.§&Z§ + _loc2_,this,§7""§.§4!8§);
                  this.§,!p§.push(_loc4_);
                  this.§6!b§.reset();
                  this.§6!b§.start();
                  break;
               }
         }
      }
      
      public function §1"2§() : void
      {
         var _loc1_:§7""§ = null;
         for each(_loc1_ in this.§,!p§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§,!p§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
      }
   }
}
