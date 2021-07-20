package §>q§
{
   import §!x§.§?!Q§;
   import §"!U§.§=#V§;
   import §%$!§.§%h§;
   import §>!#§.§9#a§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §1!_§ extends CoinShopPopup
   {
      
      public static const §4!1§:String = "VCIntro";
      
      private static const §'"X§:int = 6;
      
      private static const §8!q§:String = "Button_Buy";
      
      private static var §[#"§:Class = §4#q§;
       
      
      private var §3!Z§:Boolean = false;
      
      private var § each§:§5$!§;
      
      public function §1!_§(param1:int, param2:int)
      {
         super(param1,param2,"",§?!Q§.§<1§(§[#"§));
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§=#V§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §7!j§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §7!j§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §'"X§)
         {
            _loc3_ = §7!j§.mClip.Container_CoinShopPopup[§8!q§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §9#a§.§^#&§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §!"H§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §'"X§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§;"!§);
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
         if(!this.§3!Z§)
         {
            this.§3!Z§ = true;
            this.§ each§ = new §5$!§();
            this.§ each§.addEventListener(Event.COMPLETE,this.§9#L§);
            this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
            this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
            this.§ each§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§ each§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §4!1§));
         }
      }
      
      private function §[^§(param1:Event) : void
      {
      }
      
      private function §9#L§(param1:Event = null) : void
      {
         §2!i§(§4!1§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            §%h§.§3!]§.§1!0§(param1.currentTarget.data);
            §%h§.§3!]§.§=L§();
         }
         var _loc2_:Object = §7!j§.mClip.Container_CoinShopPopup[§8!q§ + (§'"X§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
