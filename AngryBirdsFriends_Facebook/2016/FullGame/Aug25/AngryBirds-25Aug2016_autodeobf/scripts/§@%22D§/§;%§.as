package §@"D§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §;%§
   {
       
      
      private var §1^§:Boolean;
      
      private var § each§:URLLoader;
      
      public function §;%§()
      {
         super();
      }
      
      public function get §""O§() : Boolean
      {
         return this.§1^§;
      }
      
      public function set §""O§(param1:Boolean) : void
      {
         this.§1^§ = param1;
      }
      
      public function §["H§() : URLLoader
      {
         var _loc1_:URLRequest = §8G§.§%#S§.§+"X§.§1#_§("https://graph.facebook.com/" + §8G§.§4#§ + "/me?fields=is_eligible_promo&");
         if(!this.§ each§)
         {
            this.§ each§ = new URLLoader(_loc1_);
            this.§ each§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§ each§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§""O§ = true;
         }
         else
         {
            this.§""O§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
