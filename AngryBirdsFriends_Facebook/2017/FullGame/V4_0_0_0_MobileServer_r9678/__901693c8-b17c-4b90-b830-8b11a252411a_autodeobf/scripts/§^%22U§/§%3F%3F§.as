package §^"U§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §??§
   {
       
      
      private var §3"?§:Boolean;
      
      private var §+"§:URLLoader;
      
      public function §??§()
      {
         super();
      }
      
      public function get §42§() : Boolean
      {
         return this.§3"?§;
      }
      
      public function set §42§(param1:Boolean) : void
      {
         this.§3"?§ = param1;
      }
      
      public function §9f§() : URLLoader
      {
         var _loc1_:URLRequest = §-#+§.§;!$§.§+@§.§8?§("https://graph.facebook.com/" + §-#+§.§;L§ + "/me?fields=is_eligible_promo&");
         if(!this.§+"§)
         {
            this.§+"§ = new URLLoader(_loc1_);
            this.§+"§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§+"§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§42§ = true;
         }
         else
         {
            this.§42§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
