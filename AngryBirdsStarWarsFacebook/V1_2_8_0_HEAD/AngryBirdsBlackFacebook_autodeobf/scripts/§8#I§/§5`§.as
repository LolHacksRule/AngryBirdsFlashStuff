package §8#I§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §7K§.§,T§;
   import §>@§.§5"H§;
   import flash.text.TextField;
   
   public class §5`§
   {
       
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      public function §5`§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:String, param5:§,T§)
      {
         super();
         this.view = param1;
         this.§]!=§ = param4;
         this.§1>§ = param5;
         this.§^"N§ = param2;
         this.§8!J§ = param3;
         TextField(param1.mClip.price).defaultTextFormat = TextField(param1.mClip.price).getTextFormat();
         TextField(param1.mClip.title).defaultTextFormat = TextField(param1.mClip.title).getTextFormat();
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§]!=§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         this.§1>§ = param1;
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function refresh() : void
      {
         if(this.§1>§)
         {
            this.view.mClip.price.text = this.§8!J§.§<H§(this.§1>§.price);
            this.view.mClip.title.text = this.§^"N§.getLocalizedString("shop_bundle_" + this.§]!=§.toLowerCase() + "_" + this.§1>§.quantity);
         }
         else
         {
            this.view.mClip.price.text = "";
            this.view.mClip.title.text = "";
         }
      }
   }
}
