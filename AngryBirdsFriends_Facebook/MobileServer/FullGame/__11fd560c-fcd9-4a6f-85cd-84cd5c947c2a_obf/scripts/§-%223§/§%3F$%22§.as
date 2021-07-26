package §-"3§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §?$"§
   {
       
      
      private var §9#b§:Boolean;
      
      private var §>v§:URLLoader;
      
      public function §?$"§()
      {
         super();
      }
      
      public function get §3!v§() : Boolean
      {
         return this.§9#b§;
      }
      
      public function set §3!v§(param1:Boolean) : void
      {
         this.§9#b§ = param1;
      }
      
      public function §4!J§() : URLLoader
      {
         var _loc1_:URLRequest = §,A§.§2#O§.§[$4§.§[";§("https://graph.facebook.com/" + §,A§.§?G§ + "/me?fields=is_eligible_promo&");
         if(!this.§>v§)
         {
            this.§>v§ = new URLLoader(_loc1_);
            this.§>v§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§>v§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§3!v§ = true;
         }
         else
         {
            this.§3!v§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
