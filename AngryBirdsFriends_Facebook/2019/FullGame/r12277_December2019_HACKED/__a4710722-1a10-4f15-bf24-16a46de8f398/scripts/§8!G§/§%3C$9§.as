package §8!G§
{
   import §#"3§.§"$!§;
   import §2E§.§,!8§;
   import §4#l§.§8#E§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §>#Y§.§!",§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §<$9§ extends CoinShopPopup
   {
      
      public static const §&!y§:String = "VCIntro";
      
      private static const §4!e§:int = 6;
      
      private static const §8#,§:String = "Button_Buy";
      
      private static var §9!u§:Class = §%#?§;
       
      
      private var §"$7§:Boolean = false;
      
      private var §<#G§:§5"f§;
      
      public function §<$9§(param1:int, param2:int)
      {
         super(param1,param2,"",§"$!§.§0!T§(§9!u§));
      }
      
      override protected function init() : void
      {
         super.init();
         §'o§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§8#E§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §'o§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §'o§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §4!e§)
         {
            _loc3_ = §'o§.mClip.Container_CoinShopPopup[§8#,§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §,!8§.§1"h§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §+"G§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §4!e§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§;"y§);
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
         if(!this.§"$7§)
         {
            this.§"$7§ = true;
            this.§<#G§ = new §5"f§();
            this.§<#G§.addEventListener(Event.COMPLETE,this.§,!P§);
            this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
            this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
            this.§<#G§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§<#G§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §&!y§));
         }
      }
      
      private function §7#C§(param1:Event) : void
      {
      }
      
      private function §,!P§(param1:Event = null) : void
      {
         §>#§(§&!y§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            §!",§.§3"1§.§"#t§(param1.currentTarget.data);
            §!",§.§3"1§.§,"&§();
         }
         var _loc2_:Object = §'o§.mClip.Container_CoinShopPopup[§8#,§ + (§4!e§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
