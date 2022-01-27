package §="<§
{
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §;q§.§ true§;
   import §`"8§.§[F§;
   import flash.text.TextField;
   
   public class §5"U§
   {
       
      
      private var §8-§:§="B§;
      
      private var §%<§:§[F§;
      
      public var view:§2"8§;
      
      private var §?§:String;
      
      private var §@J§:§ true§;
      
      public function §5"U§(param1:§2"8§, param2:§="B§, param3:§[F§, param4:String, param5:§ true§)
      {
         super();
         this.view = param1;
         this.§?§ = param4;
         this.§@J§ = param5;
         this.§8-§ = param2;
         this.§%<§ = param3;
         TextField(param1.mClip.price).defaultTextFormat = TextField(param1.mClip.price).getTextFormat();
         TextField(param1.mClip.title).defaultTextFormat = TextField(param1.mClip.title).getTextFormat();
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§?§ = param1;
      }
      
      public function get dataID() : String
      {
         return this.§?§;
      }
      
      public function set prices(param1:§ true§) : void
      {
         this.§@J§ = param1;
      }
      
      public function get prices() : § true§
      {
         return this.§@J§;
      }
      
      public function refresh() : void
      {
         if(this.§@J§)
         {
            this.view.mClip.price.text = this.§%<§.§7e§(this.§@J§.price);
            this.view.mClip.title.text = this.§8-§.getLocalizedString("shop_bundle_" + this.§?§.toLowerCase() + "_" + this.§@J§.quantity);
         }
         else
         {
            this.view.mClip.price.text = "";
            this.view.mClip.title.text = "";
         }
      }
   }
}
