package §;!L§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §?"Y§
   {
       
      
      private var §`>§:Boolean;
      
      private var §@$2§:URLLoader;
      
      public function §?"Y§()
      {
         super();
      }
      
      public function get §##[§() : Boolean
      {
         return this.§`>§;
      }
      
      public function set §##[§(param1:Boolean) : void
      {
         this.§`>§ = param1;
      }
      
      public function §;"X§() : URLLoader
      {
         var _loc1_:URLRequest = §@z§.§ !D§.§!$5§.§;"Q§("https://graph.facebook.com/" + §@z§.§]!k§ + "/me?fields=is_eligible_promo&");
         if(!this.§@$2§)
         {
            this.§@$2§ = new URLLoader(_loc1_);
            this.§@$2§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§@$2§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§##[§ = true;
         }
         else
         {
            this.§##[§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
