package §9#n§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §]!O§
   {
       
      
      private var §<!4§:Boolean;
      
      private var §<#G§:URLLoader;
      
      public function §]!O§()
      {
         super();
      }
      
      public function get §,"r§() : Boolean
      {
         return this.§<!4§;
      }
      
      public function set §,"r§(param1:Boolean) : void
      {
         this.§<!4§ = param1;
      }
      
      public function §-#$§() : URLLoader
      {
         var _loc1_:URLRequest = §^"a§.§9!h§.§2!E§.§"#-§("https://graph.facebook.com/" + §^"a§.§4!9§ + "/me?fields=is_eligible_promo&");
         if(!this.§<#G§)
         {
            this.§<#G§ = new URLLoader(_loc1_);
            this.§<#G§.addEventListener(Event.COMPLETE,this.onComplete);
            this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.§<#G§;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.is_eligible_promo)
         {
            this.§,"r§ = true;
         }
         else
         {
            this.§,"r§ = false;
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
   }
}
