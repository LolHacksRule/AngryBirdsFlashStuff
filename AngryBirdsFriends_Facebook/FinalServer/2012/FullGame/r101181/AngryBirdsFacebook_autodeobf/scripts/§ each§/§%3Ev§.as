package § each§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §,V§.§'"5§;
   import §-!+§.§<i§;
   import §2!i§.§'M§;
   import §3!7§.§>,§;
   import §6o§.§5!C§;
   import §<a§.§!!m§;
   import §<a§.§+!B§;
   import §^!r§.§=!x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §>v§ extends Popup
   {
      
      public static const §`!M§:String = "PowerupBundle";
      
      public static const §89§:Array = [§>,§.§^Q§.§]6§,§>,§.§7!C§.§]6§,§>,§.§%!X§.§]6§,§>,§.§&m§.§]6§,§>,§.§^t§.§]6§,§`!M§];
      
      public static const §9!#§:int = 3;
      
      public static const §4!-§:Number = 800;
      
      private static var §%K§:Class = §1!b§;
      
      private static var §,U§:String = null;
      
      public static var §@",§:Array;
      
      public static var §=F§:§0]§;
      
      public static var § [§:String;
      
      private static var §#"@§:Boolean = false;
       
      
      private var §"!T§:StatePopupManager;
      
      private var §46§:§<i§;
      
      private var mPowerUpsItemsScroller2:§<i§;
      
      private var §=!H§:Number;
      
      private var §7V§:String;
      
      private var §=S§:Array;
      
      private var § p§:Array;
      
      private var §>!C§:Boolean;
      
      public function §>v§(param1:§7!A§, param2:StatePopupManager)
      {
         this.§=S§ = [];
         this.§ p§ = [];
         if(§,U§ == null)
         {
            §,U§ = "SHOP_POPUP_TAB_POWERUPS";
         }
         this.§"!T§ = param2;
         super(§5!C§.§9G§(§%K§),param1);
         param1.getItemByName("Container_Popup").setVisibility(true);
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
         if(§@",§ && this.§7V§ != null)
         {
            §%?§.§#!p§ = §@",§;
            this.§>!C§ = false;
            this.deActivate();
            return;
         }
         this.§0!5§();
         this.§4!"§();
      }
      
      public static function § !y§(param1:String) : void
      {
         § [§ = param1;
         §%?§.§6!x§(null);
      }
      
      private function §0!5§() : void
      {
      }
      
      private function §0L§() : void
      {
         var _loc1_:Array = §@",§.concat();
         while(_loc1_.length > 0)
         {
            this.§=S§ = this.§=S§.concat(_loc1_.splice(0,§9!#§));
            if(_loc1_.length > 0)
            {
               this.§ p§ = this.§ p§.concat(_loc1_.splice(0,§9!#§));
            }
         }
         while(this.§=S§.length % §9!#§ != 0)
         {
            this.§=S§.push(null);
         }
         while(this.§ p§.length < this.§=S§.length)
         {
            this.§ p§.push(null);
         }
      }
      
      private function §3!b§(param1:MouseEvent) : void
      {
         this.scroll(-1);
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         this.scroll(1);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§46§.scroll(param1);
         }
      }
      
      private function onBuyItemClicked(param1:§=!x§) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in §89§)
         {
            if(param1.target.data.id == _loc2_)
            {
               §%?§.§#!p§ = param1.target.data;
               this.§>!C§ = false;
               this.deActivate();
               §#"@§ = true;
               break;
            }
         }
      }
      
      private function §?!m§(param1:Object) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in §89§)
         {
            if(param1.id == _loc2_)
            {
               §%?§.§#!p§ = param1;
               this.§>!C§ = true;
               this.deActivate();
               break;
            }
         }
      }
      
      public function §4!"§() : void
      {
         if(§=F§ || §@",§)
         {
            this.§@!D§();
            return;
         }
         §=F§ = new §0]§();
         §=F§.addEventListener(Event.COMPLETE,this.§5!B§);
         §=F§.addEventListener(IOErrorEvent.IO_ERROR,this.§5M§);
         §=F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5M§);
         §=F§.addEventListener(§+!D§.§25§,this.§5M§);
         §=F§.dataFormat = URLLoaderDataFormat.TEXT;
         §=F§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/shoplisting"));
      }
      
      protected function §5M§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
         §=F§ = null;
      }
      
      private function §5!B§(param1:Event) : void
      {
         var dataObject:Object = null;
         var tempME:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§=F§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §=F§.data,§!!m§.§4H§);
         }
         §@",§ = dataObject.powerups;
         if(§@",§ && §@",§.length > 1)
         {
            tempME = §@",§[0];
            §@",§[0] = §@",§[1];
            §@",§[1] = tempME;
         }
         §=F§ = null;
         this.§@!D§();
      }
      
      private function § !F§(param1:Array) : Array
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
      
      private function §@!D§() : void
      {
         §@",§ = this.§ !F§(§@",§);
         this.§=!H§ = 0;
         this.§0L§();
         var _loc1_:int = -15;
         this.§46§ = new §<i§(§4!-§,200,this.§=S§ || [],§+z§,70,140);
         this.§46§.scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
         this.§46§.scrollerSprite.x = _loc1_;
         this.§46§.scrollerSprite.y = 110;
         mClip.Container_Popup.addChild(this.§46§.scrollerSprite);
         this.mPowerUpsItemsScroller2 = new §<i§(§4!-§,200,this.§ p§ || [],§+z§,70,140);
         this.mPowerUpsItemsScroller2.scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
         this.mPowerUpsItemsScroller2.scrollerSprite.x = _loc1_;
         this.mPowerUpsItemsScroller2.scrollerSprite.y = 110 + 220;
         mClip.Container_Popup.addChild(this.mPowerUpsItemsScroller2.scrollerSprite);
         getItemByName("AngryBirdLoader").visible = false;
         this.§1]§(§,U§);
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         this.§1]§(param2);
         switch(param2)
         {
            case "SHOP_POPUP_CLOSE":
               this.§>!C§ = true;
               this.deActivate();
               break;
            case "HALLOWEEN_SHOP":
               §%?§.§ ]§("standardShop");
               this.§>!C§ = false;
               this.deActivate();
         }
      }
      
      private function §1]§(param1:String) : void
      {
      }
      
      override public function deActivate() : void
      {
         if(this.§46§)
         {
            mClip.Container_Popup.removeChild(this.§46§.scrollerSprite);
            this.§46§.dispose();
         }
         if(this.mPowerUpsItemsScroller2)
         {
            mClip.Container_Popup.removeChild(this.mPowerUpsItemsScroller2.scrollerSprite);
            this.mPowerUpsItemsScroller2.dispose();
         }
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         if(this.§>!C§)
         {
            preClose();
         }
         else
         {
            close();
         }
         if(§=F§)
         {
            §=F§.removeEventListener(Event.COMPLETE,this.§5!B§);
            §=F§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5M§);
            §=F§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5M§);
            §=F§.removeEventListener(§+!D§.§25§,this.§5M§);
            §=F§ = null;
         }
         this.§>!C§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(!§#"@§)
         {
            §+!B§.§<!w§();
         }
         else
         {
            §#"@§ = false;
         }
      }
   }
}
