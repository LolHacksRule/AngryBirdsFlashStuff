package § C§
{
   import §?k§.§[n§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §#S§ implements §+Q§
   {
      
      public static const §2'§:String = "LEVEL_START";
       
      
      private var §2a§:Array;
      
      public function §#S§()
      {
         this.§2a§ = [];
         super();
      }
      
      public function §"!G§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§[n§ = null;
         switch(param1)
         {
            case §2'§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§2'§};
               _loc4_ = new §[n§(_loc3_,§"!@§.§4w§ + _loc2_,this,§[n§.§,!b§);
               this.§2a§.push(_loc4_);
         }
      }
      
      public function §]o§() : void
      {
         var _loc1_:§[n§ = null;
         for each(_loc1_ in this.§2a§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§2a§ = [];
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
