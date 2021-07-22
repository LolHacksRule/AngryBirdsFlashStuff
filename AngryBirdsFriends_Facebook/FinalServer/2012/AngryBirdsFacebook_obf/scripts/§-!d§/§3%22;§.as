package §-!d§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §3";§
   {
       
      
      private var §@8§:Boolean;
      
      private var §?"<§:URLLoader;
      
      public function §3";§()
      {
         super();
      }
      
      public function get §?"F§() : Boolean
      {
         return this.§@8§;
      }
      
      public function set §?"F§(param1:Boolean) : void
      {
         this.§@8§ = param1;
      }
      
      public function §=!§() : URLLoader
      {
         var _loc1_:URLRequest = §,"I§.§&q§.§"4§.§+@§("https://graph.facebook.com/me?fields=is_eligible_promo&");
         if(!this.§?"<§)
         {
            this.§?"<§ = new URLLoader(_loc1_);
            this.§?"<§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§?"<§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§?"<§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§?"F§ = true;
         }
         else
         {
            this.§?"F§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
