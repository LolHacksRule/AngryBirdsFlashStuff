package §87§
{
   import §?k§.§[n§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §+Q§ implements § C§
   {
      
      public static const §]o§:String = "LEVEL_START";
       
      
      private var §#S§:Array;
      
      public function §+Q§()
      {
         this.§#S§ = [];
         super();
      }
      
      public function §,U§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§[n§ = null;
         switch(param1)
         {
            case §]o§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§]o§};
               _loc4_ = new §[n§(_loc3_,§"!@§.§ !d§ + _loc2_,this,§[n§.§,!b§);
               this.§#S§.push(_loc4_);
         }
      }
      
      public function §2a§() : void
      {
         var _loc1_:§[n§ = null;
         for each(_loc1_ in this.§#S§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§#S§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
      }
   }
}
