package §0P§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §%!J§
   {
       
      
      private var §!"+§:Boolean;
      
      private var §2!N§:URLLoader;
      
      public function §%!J§()
      {
         super();
      }
      
      public function get §5! §() : Boolean
      {
         return this.§!"+§;
      }
      
      public function set §5! §(param1:Boolean) : void
      {
         this.§!"+§ = param1;
      }
      
      public function §'6§() : URLLoader
      {
         var _loc1_:URLRequest = § #v§.§1!!§.§ #X§.§=#p§("https://graph.facebook.com/" + § #v§.§!"Q§ + "/me?fields=is_eligible_promo&");
         if(!this.§2!N§)
         {
            this.§2!N§ = new URLLoader(_loc1_);
            this.§2!N§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§2!N§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§5! § = true;
         }
         else
         {
            this.§5! § = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
