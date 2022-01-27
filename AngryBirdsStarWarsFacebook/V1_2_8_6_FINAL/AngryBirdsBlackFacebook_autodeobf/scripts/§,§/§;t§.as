package §,§#6
{
   import §&!j§.§5#+§;
   import §9"U§.§,N§;
   import §98§.§'"M§;
   import §=Z§.§;g§;
   import flash.text.TextField;
   
   public class §;t§
   {
       
      
      private var §-1§:§5#+§;
      
      private var §%#§:§,N§;
      
      public var view:§;g§;
      
      private var §-""§:String;
      
      private var §5!Y§:§'"M§;
      
      public function §;t§(param1:§;g§, param2:§5#+§, param3:§,N§, param4:String, param5:§'"M§)
      {
         super();
         this.view = param1;
         this.§-""§ = param4;
         this.§5!Y§ = param5;
         this.§-1§ = param2;
         this.§%#§ = param3;
         TextField(param1.mClip.price).defaultTextFormat = TextField(param1.mClip.price).getTextFormat();
         TextField(param1.mClip.title).defaultTextFormat = TextField(param1.mClip.title).getTextFormat();
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§-""§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§-""§;
      }
      
      public function set prices(param1:§'"M§) : void
      {
         this.§5!Y§ = param1;
      }
      
      public function get prices() : §'"M§
      {
         return this.§5!Y§;
      }
      
      public function refresh() : void
      {
         if(this.§5!Y§)
         {
            this.view.mClip.price.text = this.§%#§.§1!i§(this.§5!Y§.price);
            this.view.mClip.title.text = this.§-1§.getLocalizedString("shop_bundle_" + this.§-""§.toLowerCase() + "_" + this.§5!Y§.quantity);
         }
         else
         {
            this.view.mClip.price.text = "";
            this.view.mClip.title.text = "";
         }
      }
   }
}
