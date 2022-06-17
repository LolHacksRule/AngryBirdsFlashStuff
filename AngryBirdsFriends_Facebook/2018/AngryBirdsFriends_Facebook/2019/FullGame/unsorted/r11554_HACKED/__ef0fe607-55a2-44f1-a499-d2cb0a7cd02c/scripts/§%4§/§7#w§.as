package §%4§
{
   import §!!?§.§,!K§;
   import §+#B§.§""D§;
   import §9#K§.§#D§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §]"'§.§#$D§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §7#w§ extends CoinShopPopup
   {
      
      public static const §3!G§:String = "VCIntro";
      
      private static const §-"9§:int = 6;
      
      private static const §<#_§:String = "Button_Buy";
      
      private static var §6a§:Class = §;""§;
       
      
      private var §0`§:Boolean = false;
      
      private var §&![§:§'!n§;
      
      public function §7#w§(param1:int, param2:int)
      {
         super(param1,param2,"",§#D§.§%"l§(§6a§));
      }
      
      override protected function init() : void
      {
         super.init();
         §8#Y§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§,!K§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §8#Y§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §8#Y§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §-"9§)
         {
            _loc3_ = §8#Y§.mClip.Container_CoinShopPopup[§<#_§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §""D§.§"k§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §7$D§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §-"9§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§;!l§);
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
         if(!this.§0`§)
         {
            this.§0`§ = true;
            this.§&![§ = new §'!n§();
            this.§&![§.addEventListener(Event.COMPLETE,this.§&1§);
            this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
            this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
            this.§&![§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§&![§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §3!G§));
         }
      }
      
      private function §#O§(param1:Event) : void
      {
      }
      
      private function §&1§(param1:Event = null) : void
      {
         §51§(§3!G§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            §#$D§.§?q§.§["a§(param1.currentTarget.data);
            §#$D§.§?q§.§>!'§();
         }
         var _loc2_:Object = §8#Y§.mClip.Container_CoinShopPopup[§<#_§ + (§-"9§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
