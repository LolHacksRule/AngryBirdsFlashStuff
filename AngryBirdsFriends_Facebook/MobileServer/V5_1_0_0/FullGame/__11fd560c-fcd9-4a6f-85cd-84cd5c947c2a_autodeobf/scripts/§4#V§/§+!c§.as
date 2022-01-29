package §4#V§
{
   import §&"`§.§"#x§;
   import §2G§.§-#+§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §]!6§.§="p§;
   import §`7§.§!"b§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class §+!c§ extends CoinShopPopup
   {
      
      public static const §]#!§:String = "VCIntro";
      
      private static const §>"3§:int = 6;
      
      private static const §`!0§:String = "Button_Buy";
      
      private static var §7#s§:Class = §4s§;
       
      
      private var §]#x§:Boolean = false;
      
      private var §>v§:§1"V§;
      
      public function §+!c§(param1:int, param2:int)
      {
         super(param1,param2,"",§="p§.§+@§(§7#s§));
      }
      
      override protected function init() : void
      {
         super.init();
         §,#2§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(param1:§"#x§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §,#2§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         §,#2§.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         var _loc2_:int = 0;
         while(_loc2_ < §>"3§)
         {
            _loc3_ = §,#2§.mClip.Container_CoinShopPopup[§`!0§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).freeQuantityAsPercentage();
            _loc5_ = §!"b§.§@]§(param1.getPricePoint(_loc2_).totalQuantity);
            _loc3_.title.text = §,"E§.MULTIPLIER_STRING + _loc5_;
            if(param1.getPricePoint(_loc2_).freeQuantityInPercentage() > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = dataModel.currencyModel.getPriceTag(param1.getPricePoint(_loc2_).price,true,"",param1.currencyID);
            if(_loc2_ == §>"3§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§9#L§);
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
         if(!this.§]#x§)
         {
            this.§]#x§ = true;
            this.§>v§ = new §1"V§();
            this.§>v§.addEventListener(Event.COMPLETE,this.§!"U§);
            this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
            this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
            this.§>v§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§>v§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §]#!§));
         }
      }
      
      private function §4S§(param1:Event) : void
      {
      }
      
      private function §!"U§(param1:Event = null) : void
      {
         §8#d§(§]#!§,1,false);
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            §-#+§.§6!§.§,"0§(param1.currentTarget.data);
            §-#+§.§6!§.§<"k§();
         }
         var _loc2_:Object = §,#2§.mClip.Container_CoinShopPopup[§`!0§ + (§>"3§ - 1)];
         _loc2_.mouseEnabled = false;
         _loc2_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
