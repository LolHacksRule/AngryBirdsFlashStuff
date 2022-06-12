package §59§
{
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §8m§.§@"M§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §=!@§.§1!l§;
   import §=!@§.§=!N§;
   import §@"V§.§6!c§;
   import §]]§.§1"2§;
   import §^!o§.§^"$§;
   import §^"F§.§4!2§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<"9§ extends Popup implements §4d§, §&!l§
   {
      
      private static const §0"B§:String = "In-app Shop";
      
      public static const §%F§:String = "uiSoundsChannel";
      
      private static const §["D§:int = 8;
       
      
      public var §4!u§:§6!F§;
      
      private var §3g§:§&A§;
      
      private var §@X§:§&A§;
      
      private var dynamic:§&A§;
      
      private var §%!F§:§&A§;
      
      private var §?!!§:§&A§;
      
      private var MIGHTY_EAGLE:§&A§;
      
      private var §+!F§:§&A§;
      
      private var §4!H§:§&A§;
      
      private var § L§:§&A§;
      
      private var §'!7§:Array;
      
      private var §[!G§:§&A§;
      
      private var §]!h§:String;
      
      private var §4z§:Point;
      
      public function §<"9§(param1:§`_§, param2:StatePopupManager, param3:String = "")
      {
         var _loc5_:MovieClip = null;
         super(§ "<§.§%I§.Views.PopupView_TabbedShop[0],param1);
         mClip.Container_TabbedShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§if §);
         this.§]!h§ = param3;
         var _loc4_:int = 0;
         while(_loc4_ < §["D§)
         {
            if(_loc5_ = mClip.Container_TabbedShopPopup["powerupTab" + _loc4_])
            {
               _loc5_.gotoAndStop("Normal");
            }
            _loc4_++;
         }
         if(!§%"S§.§!C§.§9"%§.§1!!§.§,1§)
         {
            §%"S§.§!C§.§9"%§.§1!!§.addEventListener(Event.COMPLETE,this.§6I§);
         }
         else
         {
            this.§6I§(null,§%"S§.§!C§.§9"%§.§1!!§.§,1§);
         }
      }
      
      private function §6I§(param1:Event = null, param2:Vector.<§="C§> = null) : void
      {
         if(param1)
         {
            param2 = §%"S§.§!C§.§9"%§.§1!!§.§,1§;
         }
         this.§%"5§(param2);
         §%"S§.§!C§.§9"%§.§1!!§.removeEventListener(Event.COMPLETE,this.§6I§);
      }
      
      private function §%"5§(param1:Vector.<§="C§>) : void
      {
         this.§9!J§(param1);
         if(this.§]!h§ == "")
         {
            this.§]!h§ = this.§+!F§.§;"R§.id;
         }
         this.§<!?§(this.§]!h§);
      }
      
      private function §9!J§(param1:Vector.<§="C§>) : void
      {
         this.§'!7§ = [];
         this.§3g§ = this.§>z§(this.§use§(§4!2§.§4"X§,param1),"PowerupPackIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§@X§ = this.§>z§(this.§use§(§4!2§.§`!4§.§1!#§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.dynamic = this.§>z§(this.§use§(§4!2§.§3"$§.§1!#§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§%!F§ = this.§>z§(this.§use§(§4!2§.§<"O§.§1!#§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§?!!§ = this.§>z§(this.§use§(§4!2§.§8"1§.§1!#§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs’ defenses crashing to the ground!");
         this.MIGHTY_EAGLE = this.§>z§(this.§use§(§4!2§.§6"O§.§1!#§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs. Destroy as much as possible to collect Total Destruction feathers from all your levels!");
         this.§+!F§ = this.§>z§(this.§use§(§4!2§.§-Y§.§1!#§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.§ L§ = this.§>z§(this.§use§(§4!2§.§!! §.§1!#§,param1),"MushroomIcon","ShopContentMushroom","Create a mighty bloom of mushrooms beneath the pigs and topple their towers! \nOnly useable in the Pig Tales levels.");
      }
      
      private function §use§(param1:String, param2:Vector.<§="C§>) : §="C§
      {
         var _loc3_:§="C§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §>z§(param1:§="C§, param2:String, param3:String, param4:String) : §&A§
      {
         var _loc5_:MovieClip = mClip.Container_TabbedShopPopup["powerupTab" + this.§'!7§.length];
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:§&A§;
         (_loc6_ = new §&A§(param1,param2,param3,_loc5_,param4)).addEventListener(§=!N§.§9o§,this.§;k§);
         _loc6_.addEventListener(§=!N§.§[",§,this.§1@§);
         this.§'!7§.push(_loc6_);
         return _loc6_;
      }
      
      private function §;k§(param1:§=!N§) : void
      {
         this.§6!;§(param1.currentTarget as §&A§);
         §@"M§.§3"C§("Shop_Selection",§%F§,0,0.7);
      }
      
      private function §1@§(param1:§=!N§) : void
      {
         this.§4z§ = new Point(param1.point.x + 55,param1.point.y + 160);
         if(§%"S§.§!C§.§9"%§.§,T§.§0Q§ < param1.§5j§.price)
         {
            §9"6§.§;!J§(§^"$§.§1!J§);
            return;
         }
         §@"M§.§3"C§("Shop_Buy",§%F§);
         this.§!!^§();
         var _loc2_:§1"2§ = new §1"2§(param1.§;"R§,param1.§5j§);
         _loc2_.addEventListener(§1!l§.§9E§,this.§@k§);
      }
      
      private function §!!^§() : void
      {
         mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
      }
      
      private function §7b§() : void
      {
         mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
         mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
         mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
      }
      
      private function §@k§(param1:§1!l§) : void
      {
         var _loc4_:§&A§ = null;
         var _loc5_:String = null;
         var _loc2_:§=!]§ = new §=!]§();
         mClip.Container_TabbedShopPopup.addChild(_loc2_);
         _loc2_.x = this.§4z§.x;
         _loc2_.y = this.§4z§.y;
         this.§4z§ = null;
         var _loc3_:§1"2§ = param1.currentTarget as §1"2§;
         _loc3_.removeEventListener(§1!l§.§9E§,this.§@k§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            for each(_loc4_ in this.§'!7§)
            {
               _loc4_.§!9§();
            }
         }
         this.§7b§();
         §@q§.trackPageView(this,§@q§.§7!K§);
         §@q§.trackTransaction(_loc3_.orderId,§0"B§,_loc3_.§;"R§.id,_loc3_.§;"R§.id,_loc3_.§5j§.§ !?§ + " x",0,1,0);
         if(_loc3_.§;"R§.id == "Mushroom" && §6!c§.§ !N§("FreeMushroomIntroSampleEaster2013"))
         {
            _loc5_ = §6!c§.§ !N§("FreeMushroomIntroSampleEaster2013") + " - " + _loc3_.§;"R§.id + " x " + _loc3_.§5j§.§ !?§;
            §@q§.§3!@§(_loc5_,"FreeMushroomIntroSampleEaster2013",_loc3_.§5j§.price);
         }
      }
      
      private function §<!?§(param1:String) : void
      {
         var _loc2_:§&A§ = null;
         for each(_loc2_ in this.§'!7§)
         {
            if(_loc2_.§;"R§.id == param1)
            {
               this.§6!;§(_loc2_);
               return;
            }
         }
      }
      
      private function §6!;§(param1:§&A§) : void
      {
         var _loc2_:§&A§ = null;
         if(this.§[!G§)
         {
            if(mClip.Container_TabbedShopPopup.contentArea.contains(this.§[!G§.§^!-§))
            {
               mClip.Container_TabbedShopPopup.contentArea.removeChild(this.§[!G§.§^!-§);
            }
         }
         for each(_loc2_ in this.§'!7§)
         {
            _loc2_.§^+§();
         }
         param1.§<]§();
         this.§[!G§ = param1;
         mClip.Container_TabbedShopPopup.contentArea.addChild(param1.§^!-§);
         §@q§.trackPageView(this,param1.§;"R§.id);
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         this.§4!u§ = param1;
      }
      
      public function §=,§() : String
      {
         return §@q§.§["G§;
      }
      
      public function §8"3§() : String
      {
         return §@q§.§-![§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §@q§.trackPageView(this);
         §@q§.§ "I§();
         this.§?!f§(new §6!F§(this));
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§!U§(this.§4!u§);
         super.close();
      }
   }
}
