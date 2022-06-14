package §!§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §'7§
   {
       
      
      private var §4!9§:Boolean;
      
      private var §]D§:URLLoader;
      
      public function §'7§()
      {
         super();
      }
      
      public function get §3"F§() : Boolean
      {
         return this.§4!9§;
      }
      
      public function set §3"F§(param1:Boolean) : void
      {
         this.§4!9§ = param1;
      }
      
      public function §#!h§() : URLLoader
      {
         var _loc1_:URLRequest = §3T§.§67§.§7!>§.§@8§("https://graph.facebook.com/me?fields=is_eligible_promo&");
         if(!this.§]D§)
         {
            this.§]D§ = new URLLoader(_loc1_);
            this.§]D§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§]D§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§]D§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§3"F§ = true;
         }
         else
         {
            this.§3"F§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
