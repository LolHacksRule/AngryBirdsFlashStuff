package §`"5§
{
   import §+I§.§`!o§;
   import §,b§.§4H§;
   import §0!?§.§1!%§;
   import §0r§.§-!F§;
   import §1"2§.§,!]§;
   import §2b§.§^m§;
   import §7N§.§43§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§%!#§;
   import §<!<§.§^!I§;
   import §<m§.§9"1§;
   import §]!F§.§"!j§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.text.TextField;
   
   public class §?Q§ extends Popup
   {
      
      public static const §^=§:String = "ExtraSpeed";
      
      public static const §;"1§:String = "LaserSight";
      
      public static const §?a§:String = "BirdFood";
      
      public static const §'!O§:String = "Earthquake";
      
      public static const §7C§:String = "TNTDrop";
      
      public static const MIGHTY_EAGLE:String = "MightyEagle";
      
      public static const §<",§:String = "PowerupBundle";
      
      public static const §&y§:Array = [§^=§,§;"1§,§?a§,§'!O§,§7C§,MIGHTY_EAGLE,§<",§];
      
      public static const §9"'§:int = 3;
      
      public static const §@!>§:Number = 800;
      
      private static var §^N§:Class = §1!S§;
      
      private static var §>!l§:String = null;
      
      public static var §+!&§:Array;
      
      private static var §=!o§:Array;
      
      public static var §["!§:§,!S§;
      
      public static var §7""§:String;
      
      private static var §6!<§:Boolean = false;
       
      
      private var §<q§:StatePopupManager;
      
      private var §<;§:§9"1§;
      
      private var mPowerUpsItemsScroller2:§9"1§;
      
      private var §2x§:§-!F§;
      
      private var §1!2§:Number;
      
      private var §3";§:String;
      
      private var §3s§:Array;
      
      private var §+!X§:Array;
      
      private var §8"%§:Boolean;
      
      public function §?Q§(param1:§"!j§, param2:StatePopupManager)
      {
         this.§3s§ = [];
         this.§+!X§ = [];
         if(§>!l§ == null)
         {
            §>!l§ = "SHOP_POPUP_TAB_POWERUPS";
         }
         this.§<q§ = param2;
         super(§1!%§.§8!?§(§^N§),param1);
         param1.getItemByName("Container_Popup").setVisibility(true);
         mClip.Container_Popup.btnRight.visible = false;
         mClip.Container_Popup.btnLeft.visible = false;
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
         if(§+!&§ && this.§3";§ != null)
         {
            §43§.§1!@§ = §+!&§;
            this.§8"%§ = false;
            this.deActivate();
            return;
         }
         this.§2K§();
         mClip.Container_Popup.btnRight.x = mClip.Container_Popup.btnLeft.x + §@!>§ + 30;
         mClip.Container_Popup.btnRight.y = mClip.Container_Popup.btnLeft.y;
         this.§=!U§();
      }
      
      public static function § ,§(param1:String) : void
      {
         §7""§ = param1;
         §43§.§!!A§(null);
      }
      
      private function §'"!§() : void
      {
         var _loc1_:Array = §+!&§.concat();
         while(_loc1_.length > 0)
         {
            this.§3s§ = this.§3s§.concat(_loc1_.splice(0,§9"'§));
            if(_loc1_.length > 0)
            {
               this.§+!X§ = this.§+!X§.concat(_loc1_.splice(0,§9"'§));
            }
         }
         while(this.§3s§.length % §9"'§ != 0)
         {
            this.§3s§.push(null);
         }
         while(this.§+!X§.length < this.§3s§.length)
         {
            this.§+!X§.push(null);
         }
      }
      
      private function §1!d§(param1:MouseEvent) : void
      {
         this.scroll(-1);
      }
      
      private function §+s§(param1:MouseEvent) : void
      {
         this.scroll(1);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§<;§.scroll(param1);
            this.§=!U§();
         }
      }
      
      private function §=!U§() : void
      {
         if(this.§<;§ == null)
         {
            return;
         }
         var _loc1_:* = this.§<;§.offset != 0;
         var _loc2_:* = this.§<;§.offset != this.§<;§.data.length - this.§<;§.§?3§;
         mClip.Container_Popup.btnLeft.visible = _loc1_;
         mClip.Container_Popup.btnRight.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§^m§) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in §&y§)
         {
            if(param1.target.data.id == _loc2_)
            {
               §43§.§1!@§ = param1.target.data;
               this.§8"%§ = false;
               this.deActivate();
               §6!<§ = true;
               break;
            }
         }
      }
      
      private function §`J§(param1:Object) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in §&y§)
         {
            if(param1.id == _loc2_)
            {
               §43§.§1!@§ = param1;
               this.§8"%§ = true;
               this.deActivate();
               break;
            }
         }
      }
      
      public function §'!F§() : void
      {
         if(§=!o§)
         {
            this.§^,§();
            return;
         }
      }
      
      private function §^,§() : void
      {
         var i:int = 0;
         var hotItemId:String = null;
         i = 1;
         while(i < 5)
         {
            (getItemByName("TextField_HotStuff" + i).mClip.text as TextField).mouseEnabled = false;
            hotItemId = "Unknown";
            if(§=!o§.length >= i)
            {
               hotItemId = §=!o§[i - 1].id;
            }
            switch(hotItemId)
            {
               case §?Q§.§'!O§:
                  §0!'§.setText(§`!o§.§=!M§,"TextField_HotStuff" + i);
                  break;
               case §?Q§.§7C§:
                  §0!'§.setText(§`!o§.POWERUP_BOMB,"TextField_HotStuff" + i);
                  break;
               case §?Q§.§^=§:
                  §0!'§.setText(§`!o§.§@!j§,"TextField_HotStuff" + i);
                  break;
               case §?Q§.§?a§:
                  §0!'§.setText(§`!o§.§7!D§,"TextField_HotStuff" + i);
                  break;
               case §?Q§.§;"1§:
                  §0!'§.setText(§`!o§.§?!5§,"TextField_HotStuff" + i);
                  break;
               case §?Q§.MIGHTY_EAGLE:
                  §0!'§.setText(§`!o§.§[E§,"TextField_HotStuff" + i);
                  break;
               case §?Q§.§<",§:
                  §0!'§.setText(§`!o§.§<",§,"TextField_HotStuff" + i);
                  break;
               default:
                  §0!'§.setText("","TextField_HotStuff" + i);
            }
            try
            {
               getItemByName("MovieClip_HotStuffAsset" + i).mClip.gotoAndStop(hotItemId);
            }
            catch(e:Error)
            {
               getItemByName("MovieClip_HotStuffAsset" + i).mClip.gotoAndStop("Unknown");
            }
            i++;
         }
      }
      
      public function §2K§() : void
      {
         if(§["!§ || §+!&§)
         {
            this.§[!G§();
            return;
         }
         §["!§ = new §,!S§();
         §["!§.addEventListener(Event.COMPLETE,this.§+!-§);
         §["!§.addEventListener(IOErrorEvent.IO_ERROR,this.§!!d§);
         §["!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!d§);
         §["!§.addEventListener(§"!n§.§"+§,this.§!!d§);
         §["!§.dataFormat = URLLoaderDataFormat.TEXT;
         §["!§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/shoplisting"));
      }
      
      protected function §!!d§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
         §["!§ = null;
      }
      
      private function §+!-§(param1:Event) : void
      {
         var dataObject:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§["!§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §["!§.data,§^!I§.§50§);
         }
         §+!&§ = this.§ case§(dataObject.powerups);
         §=!o§ = dataObject.hotItems;
         §["!§ = null;
         this.§[!G§();
      }
      
      private function § case§(param1:Array) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(!_loc3_.h)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private function §[!G§() : void
      {
         this.§1!2§ = getItemByName("Button_PowerUps").mClip.y;
         this.§'"!§();
         this.§<;§ = new §9"1§(§@!>§,200,this.§3s§ || [],§^z§,70,140);
         this.§<;§.scrollerSprite.addEventListener(§^m§.§&!8§,this.onBuyItemClicked);
         this.§<;§.scrollerSprite.x = mClip.Container_Popup.btnLeft.x;
         this.§<;§.scrollerSprite.y = mClip.Container_Popup.btnLeft.y - 140;
         mClip.Container_Popup.addChild(this.§<;§.scrollerSprite);
         mClip.Container_Popup.btnLeft.addEventListener(MouseEvent.CLICK,this.§1!d§);
         mClip.Container_Popup.btnRight.addEventListener(MouseEvent.CLICK,this.§+s§);
         this.mPowerUpsItemsScroller2 = new §9"1§(§@!>§,200,this.§+!X§ || [],§^z§,70,140);
         this.mPowerUpsItemsScroller2.scrollerSprite.addEventListener(§^m§.§&!8§,this.onBuyItemClicked);
         this.mPowerUpsItemsScroller2.scrollerSprite.x = mClip.Container_Popup.btnLeft.x;
         this.mPowerUpsItemsScroller2.scrollerSprite.y = mClip.Container_Popup.btnLeft.y + 240 - 170;
         mClip.Container_Popup.addChild(this.mPowerUpsItemsScroller2.scrollerSprite);
         this.§=!U§();
         getItemByName("AngryBirdLoader").visible = false;
         this.§&`§(§>!l§);
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         this.§&`§(param2);
         switch(param2)
         {
            case "SHOP_POPUP_CLOSE":
               this.§8"%§ = true;
               this.deActivate();
               break;
            case "SHOP_POPUP_HOTSTUFF1_BUY":
               this.§`J§(§=!o§[0]);
               break;
            case "SHOP_POPUP_HOTSTUFF2_BUY":
               this.§`J§(§=!o§[1]);
               break;
            case "SHOP_POPUP_HOTSTUFF3_BUY":
               this.§`J§(§=!o§[2]);
               break;
            case "SHOP_POPUP_HOTSTUFF4_BUY":
               this.§`J§(§=!o§[3]);
         }
      }
      
      private function §&`§(param1:String) : void
      {
         switch(param1)
         {
            case "SHOP_POPUP_TAB_POWERUPS":
               getItemByName("Container_PowerUps").setVisibility(false);
               getItemByName("Container_LevelPacks").setVisibility(false);
               getItemByName("Button_PowerUps").setVisibility(false);
               getItemByName("Button_Avatars").y = this.§1!2§;
               §>!l§ = param1;
               break;
            case "SHOP_POPUP_TAB_AVATARS":
               getItemByName("Container_PowerUps").setVisibility(false);
               getItemByName("Button_PowerUps").setVisibility(true);
               getItemByName("Button_PowerUps").y = this.§1!2§;
               §>!l§ = param1;
               break;
            case "SHOP_POPUP_TAB_LEVELPACKS":
               getItemByName("Container_PowerUps").setVisibility(false);
               getItemByName("Button_PowerUps").setVisibility(true);
               getItemByName("Button_PowerUps").y = this.§1!2§;
               §>!l§ = param1;
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§<;§)
         {
            mClip.Container_Popup.removeChild(this.§<;§.scrollerSprite);
            this.§<;§.dispose();
         }
         if(this.mPowerUpsItemsScroller2)
         {
            mClip.Container_Popup.removeChild(this.mPowerUpsItemsScroller2.scrollerSprite);
            this.mPowerUpsItemsScroller2.dispose();
         }
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         if(this.§8"%§)
         {
            preClose();
         }
         else
         {
            this.close();
         }
         if(§["!§)
         {
            §["!§.removeEventListener(Event.COMPLETE,this.§+!-§);
            §["!§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!d§);
            §["!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!d§);
            §["!§.removeEventListener(§"!n§.§"+§,this.§!!d§);
            §["!§ = null;
         }
         this.§8"%§ = false;
      }
      
      override public function close() : void
      {
         super.close();
         if(this.§2x§ != null)
         {
            this.§2x§.§@N§();
            this.§2x§ = null;
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(!§6!<§)
         {
            §%!#§.§9!N§();
         }
         else
         {
            §6!<§ = false;
         }
      }
   }
}
