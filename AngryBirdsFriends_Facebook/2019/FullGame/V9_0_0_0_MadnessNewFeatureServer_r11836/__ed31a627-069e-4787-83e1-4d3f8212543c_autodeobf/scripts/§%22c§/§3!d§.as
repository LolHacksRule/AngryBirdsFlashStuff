package §"c§
{
   import §!#C§.§ $?§;
   import §&!_§.§9#%§;
   import §1#v§.§6"a§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5" §.§=n§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §3!d§ extends CoinShopPopup
   {
      
      public static const §'""§:String = "VCIntro";
      
      private static const §`D§:int = 6;
      
      private static const §+]§:String = "Button_Buy";
      
      private static var §3"x§:Class = §'#Q§;
       
      
      private var §&!,§:Boolean = false;
      
      private var §2!N§:§!!o§;
      
      public function §3!d§(param1:int, param2:int)
      {
         super(param1,param2,"",§6"a§.§&!d§(§3"x§));
      }
      
      override protected function init() : void
      {
         super.init();
         §&!M§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§=n§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §&!M§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §&!M§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §`D§)
         {
            _loc3_ = §&!M§.mClip.Container_CoinShopPopup[§+]§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §9#%§.§##W§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §4!V§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §`D§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§&#^§);
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
         if(!this.§&!,§)
         {
            this.§&!,§ = true;
            this.§2!N§ = new §!!o§();
            this.§2!N§.addEventListener(Event.COMPLETE,this.§2;§);
            this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
            this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
            this.§2!N§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§2!N§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §'""§));
         }
      }
      
      private function §=#=§(param1:Event) : void
      {
      }
      
      private function §2;§(param1:Event = null) : void
      {
         §'a§(§'""§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            § $?§.§`"H§.§ !t§(param1.currentTarget.data);
            § $?§.§`"H§.§-!P§();
         }
         var _loc2_:Object = §&!M§.mClip.Container_CoinShopPopup[§+]§ + (§`D§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
