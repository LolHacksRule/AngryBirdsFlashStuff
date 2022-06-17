package §?x§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §-!t§
   {
       
      
      private var §8#M§:Boolean;
      
      private var §&![§:URLLoader;
      
      public function §-!t§()
      {
         super();
      }
      
      public function get §>_§() : Boolean
      {
         return this.§8#M§;
      }
      
      public function set §>_§(param1:Boolean) : void
      {
         this.§8#M§ = param1;
      }
      
      public function §?"V§() : URLLoader
      {
         var _loc1_:URLRequest = §'"a§.§!!8§.§%"S§.§<W§("https://graph.facebook.com/" + §'"a§.§'$4§ + "/me?fields=is_eligible_promo&");
         if(!this.§&![§)
         {
            this.§&![§ = new URLLoader(_loc1_);
            this.§&![§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§&![§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§>_§ = true;
         }
         else
         {
            this.§>_§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
