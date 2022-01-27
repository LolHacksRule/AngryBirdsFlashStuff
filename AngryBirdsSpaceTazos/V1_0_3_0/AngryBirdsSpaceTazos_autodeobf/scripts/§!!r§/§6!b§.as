package §!!r§
{
   import §5R§.§=F§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Timer;
   
   public class §6!b§ implements §&!D§
   {
      
      public static const §#"6§:String = "StatsLevelCount";
      
      private static const §5!Q§:Number = 10;
       
      
      private var §"",§:Timer;
      
      private var §<g§:Array;
      
      public function §6!b§()
      {
         this.§<g§ = [];
         super();
         this.§"",§ = new Timer(1000,§5!Q§);
      }
      
      public function §6"6§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§=F§ = null;
         switch(param1)
         {
            case §#"6§:
               if(!this.§"",§.running)
               {
                  _loc2_ = "tracking";
                  _loc3_ = {
                     "type":§#"6§,
                     "value":"start",
                     "count":1
                  };
                  _loc4_ = new §=F§(_loc3_,§["!§.§7!h§ + _loc2_,this,§=F§.§8"H§);
                  this.§<g§.push(_loc4_);
                  this.§"",§.reset();
                  this.§"",§.start();
                  break;
               }
         }
      }
      
      public function §5!,§() : void
      {
         var _loc1_:§=F§ = null;
         for each(_loc1_ in this.§<g§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§<g§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
      }
   }
}
