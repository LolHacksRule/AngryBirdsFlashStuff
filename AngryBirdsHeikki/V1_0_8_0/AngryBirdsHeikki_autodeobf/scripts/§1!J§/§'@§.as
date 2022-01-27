package §1!J§
{
   import §3!^§.§<!O§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §'@§ implements §>!Q§
   {
      
      public static const §>!!§:String = "LEVEL_START";
       
      
      private var §&!G§:Array;
      
      public function §'@§()
      {
         this.§&!G§ = [];
         super();
      }
      
      public function §^!4§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§<!O§ = null;
         switch(param1)
         {
            case §>!!§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§>!!§};
               _loc4_ = new §<!O§(_loc3_,§2!S§.§1,§ + _loc2_,this,§<!O§.§#e§);
               this.§&!G§.push(_loc4_);
         }
      }
      
      public function §<0§() : void
      {
         var _loc1_:§<!O§ = null;
         for each(_loc1_ in this.§&!G§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§&!G§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
      }
   }
}
