package §9"0§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §&"J§.§4"W§;
   import §6V§.§^">§;
   import §7",§.§2#i§;
   import §<"p§.§8N§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §@#m§ extends CoinShopPopup
   {
      
      public static const §70§:String = "VCIntro";
      
      private static const §@"N§:int = 6;
      
      private static const §`!x§:String = "Button_Buy";
      
      private static var §5#N§:Class = §6#8§;
       
      
      private var §;!j§:Boolean = false;
      
      private var §+"§:§4"v§;
      
      public function §@#m§(param1:int, param2:int)
      {
         super(param1,param2,"",§8N§.§1F§(§5#N§));
      }
      
      override protected function init() : void
      {
         super.init();
         §1"6§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§2#i§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §1"6§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §1"6§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §@"N§)
         {
            _loc3_ = §1"6§.mClip.Container_CoinShopPopup[§`!x§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §^">§.§?"Y§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §0!"§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §@"N§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§8"V§);
            }
            else
            {
               _loc3_.mouseEnabled = false;
               _loc3_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
            }
            _loc3_.visible = true;
            _loc2_++;
         }
      }
      
      override protected function buyItem() : void
      {
         if(!this.§;!j§)
         {
            this.§;!j§ = true;
            this.§+"§ = new §4"v§();
            this.§+"§.addEventListener(Event.COMPLETE,this.§?"i§);
            this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
            this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
            this.§+"§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§+"§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §70§));
         }
      }
      
      private function §5!9§(param1:Event) : void
      {
      }
      
      private function §?"i§(param1:Event = null) : void
      {
         §@O§(§70§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            §4"W§.§ "D§.§+#<§(param1.currentTarget.data);
            §4"W§.§ "D§.§@!z§();
         }
         var _loc2_:Object = §1"6§.mClip.Container_CoinShopPopup[§`!x§ + (§@"N§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
