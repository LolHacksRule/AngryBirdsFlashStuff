package §4!m§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §#",§
   {
       
      
      private var §"A§:Boolean;
      
      private var §^t§:URLLoader;
      
      public function §#",§()
      {
         super();
      }
      
      public function get §&b§() : Boolean
      {
         return this.§"A§;
      }
      
      public function set §&b§(param1:Boolean) : void
      {
         this.§"A§ = param1;
      }
      
      public function §1!#§() : URLLoader
      {
         var _loc1_:URLRequest = § W§.§%!y§.§4!c§.§#%§("https://graph.facebook.com/me?fields=is_eligible_promo&");
         if(!this.§^t§)
         {
            this.§^t§ = new URLLoader(_loc1_);
            this.§^t§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§^t§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§^t§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§&b§ = true;
         }
         else
         {
            this.§&b§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
