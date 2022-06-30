package §;<§
{
   import §9i§.§+A§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §!!,§ implements §%!I§
   {
      
      public static const §%!9§:String = "LEVEL_START";
       
      
      private var §9%§:Array;
      
      public function §!!,§()
      {
         this.§9%§ = [];
         super();
      }
      
      public function §%;§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§+A§ = null;
         switch(param1)
         {
            case §%!9§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§%!9§};
               _loc4_ = new §+A§(_loc3_,§1F§.§&1§ + _loc2_,this,§+A§.§<!&§);
               this.§9%§.push(_loc4_);
         }
      }
      
      public function §#F§() : void
      {
         var _loc1_:§+A§ = null;
         for each(_loc1_ in this.§9%§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§9%§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
      }
   }
}
