package §]"U§
{
   import §#"4§.§6!B§;
   import §,#,§.§]§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §6"p§.§1$"§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §>#T§ extends CoinShopPopup
   {
      
      public static const §8"[§:String = "VCIntro";
      
      private static const §<#5§:int = 6;
      
      private static const §>l§:String = "Button_Buy";
      
      private static var §7"-§:Class = §["W§;
       
      
      private var §&#n§:Boolean = false;
      
      private var §@$2§:§-$C§;
      
      public function §>#T§(param1:int, param2:int)
      {
         super(param1,param2,"",§1$"§.§%Z§(§7"-§));
      }
      
      override protected function init() : void
      {
         super.init();
         §;#'§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§2_§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §;#'§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §;#'§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §<#5§)
         {
            _loc3_ = §;#'§.mClip.Container_CoinShopPopup[§>l§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §6!B§.§^"O§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §="I§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §<#5§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§&"N§);
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
         if(!this.§&#n§)
         {
            this.§&#n§ = true;
            this.§@$2§ = new §-$C§();
            this.§@$2§.addEventListener(Event.COMPLETE,this.§%!S§);
            this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
            this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
            this.§@$2§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§@$2§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §8"[§));
         }
      }
      
      private function §="&§(param1:Event) : void
      {
      }
      
      private function §%!S§(param1:Event = null) : void
      {
         §<u§(§8"[§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            §]#0§.§+!,§.§&$@§(param1.currentTarget.data);
            §]#0§.§+!,§.§@!z§();
         }
         var _loc2_:Object = §;#'§.mClip.Container_CoinShopPopup[§>l§ + (§<#5§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
