package §^!o§
{
   import §+!c§.§9"H§;
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.StatePopupManager;
   import §59§.§#l§;
   import §59§.§="C§;
   import §9@§.§3,§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.utils.setTimeout;
   
   public class §1! § extends §^"$§
   {
      
      public static const §2"J§:String = "VCIntro";
      
      private static var §,"5§:Class = §5>§;
       
      
      private var §^!?§:Boolean = false;
      
      private var §2!H§:§3d§;
      
      public function §1! §(param1:§`_§, param2:StatePopupManager, param3:String = "")
      {
         super(param1,param2,param3,§9"H§.§5!h§(§,"5§));
      }
      
      override public function injectData(param1:§="C§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         var _loc2_:int = 0;
         while(_loc2_ < §10§)
         {
            _loc3_ = mClip.Container_CoinShopPopup[§9"X§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).§#!-§();
            _loc5_ = §3,§.§3!Y§(param1.getPricePoint(_loc2_).§ !?§);
            _loc3_.title.text = "x " + _loc5_;
            if(param1.getPricePoint(_loc2_).§4!m§ > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = §%"S§.§!C§.§9"%§.§@!K§.§=";§(param1.getPricePoint(_loc2_).price);
            if(_loc2_ == §10§ - 1)
            {
               _loc3_.addEventListener(MouseEvent.CLICK,§8q§);
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
      
      override protected function buyItem(param1:String, param2:§#l§) : void
      {
         if(!this.§^!?§)
         {
            this.§^!?§ = true;
            this.§2!H§ = new §3d§();
            this.§2!H§.addEventListener(Event.COMPLETE,this.§9!y§);
            this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
            this.§2!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
            this.§2!H§.addEventListener(§9G§.§33§,this.§?e§);
            this.§2!H§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/claimfreebundle/" + §2"J§));
         }
      }
      
      private function §?e§(param1:Event) : void
      {
      }
      
      private function §9!y§(param1:Event = null) : void
      {
         var parsedResponse:Object = null;
         var e:Event = param1;
         §@M§(§2"J§,1);
         if(e.currentTarget.data != null && e.currentTarget.data != "")
         {
            try
            {
               parsedResponse = JSON.parse(e.currentTarget.data as String);
            }
            catch(error:Error)
            {
               §9"6§.§#!o§();
            }
         }
         if(parsedResponse)
         {
            §#!,§.§&"5§.§6"M§(parsedResponse);
         }
         var coinButton:Object = mClip.Container_CoinShopPopup[§9"X§ + (§10§ - 1)];
         coinButton.mouseEnabled = false;
         coinButton.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
