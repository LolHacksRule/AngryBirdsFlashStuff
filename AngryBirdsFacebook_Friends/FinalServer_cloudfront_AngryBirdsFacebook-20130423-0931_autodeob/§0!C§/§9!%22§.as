package §0!C§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §9!"§
   {
       
      
      private var §;§:Boolean;
      
      private var §2!H§:URLLoader;
      
      public function §9!"§()
      {
         super();
      }
      
      public function get §#!=§() : Boolean
      {
         return this.§;§;
      }
      
      public function set §#!=§(param1:Boolean) : void
      {
         this.§;§ = param1;
      }
      
      public function §">§() : URLLoader
      {
         var _loc1_:URLRequest = §%"S§.§!C§.§`"§.§3"B§("https://graph.facebook.com/me?fields=is_eligible_promo&");
         if(!this.§2!H§)
         {
            this.§2!H§ = new URLLoader(_loc1_);
            this.§2!H§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§2!H§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§#!=§ = true;
         }
         else
         {
            this.§#!=§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
