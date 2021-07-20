package §<9§
{
   import §!G§.§+!#§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §%!'§.§8o§;
   import §&!"§.§5"§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §&!"§.§`B§;
   import §2!6§.§ !h§;
   import §;n§.§^!;§;
   import §=E§.§="$§;
   import §?V§.§6!P§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §[x§.§?-§;
   import §^!U§.§-i§;
   import §^!o§.§=1§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class § ">§ extends Popup
   {
      
      public static const § !V§:String = "PowerupBundle";
      
      public static const §`!v§:Array = [§ !h§.§+!<§.§5"5§,§ !h§.§]!^§.§5"5§,§ !h§.§="'§.§5"5§,§ !h§.§@"<§.§5"5§,§ !h§.§]W§.§5"5§,§ !V§];
      
      public static const §0X§:int = 3;
      
      public static const §`l§:Number = 800;
      
      private static var §>y§:Class = §]N§;
      
      private static var §%g§:String = null;
      
      public static var §%!b§:Array;
      
      public static var §?!-§:§9!S§;
      
      public static var §"!]§:§-i§;
      
      public static var §8q§:String;
      
      private static var §7y§:Boolean = false;
       
      
      private var §[!g§:StatePopupManager;
      
      private var §3y§:§="$§;
      
      private var mPowerUpsItemsScroller2:§="$§;
      
      private var §@E§:Number;
      
      private var §4p§:String;
      
      private var §1! §:Array;
      
      private var §!!i§:Array;
      
      private var §,!,§:Boolean;
      
      public function § ">§(param1:§^0§, param2:StatePopupManager)
      {
         this.§1! § = [];
         this.§!!i§ = [];
         if(§%g§ == null)
         {
            §%g§ = "SHOP_POPUP_TAB_POWERUPS";
         }
         this.§[!g§ = param2;
         super(§?-§.§9E§(§>y§),param1);
         param1.getItemByName("Container_Popup").setVisibility(true);
         this.§[!g§.addEventListener(§+!#§.§@=§,this.onUiInteraction);
         if(§%!b§ && this.§4p§ != null)
         {
            §`B§.§5F§ = §%!b§;
            this.§,!,§ = false;
            this.deActivate();
            return;
         }
         this.§]U§();
      }
      
      public static function §[k§(param1:String) : void
      {
         §8q§ = param1;
         §`B§.§[D§(null);
      }
      
      private function §7g§() : void
      {
         var _loc1_:Array = §%!b§.concat();
         while(_loc1_.length > 0)
         {
            this.§1! § = this.§1! §.concat(_loc1_.splice(0,§0X§));
            if(_loc1_.length > 0)
            {
               this.§!!i§ = this.§!!i§.concat(_loc1_.splice(0,§0X§));
            }
         }
         while(this.§1! §.length % §0X§ != 0)
         {
            this.§1! §.push(null);
         }
         while(this.§!!i§.length < this.§1! §.length)
         {
            this.§!!i§.push(null);
         }
      }
      
      private function §[q§(param1:MouseEvent) : void
      {
         this.scroll(-1);
      }
      
      private function § a§(param1:MouseEvent) : void
      {
         this.scroll(1);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§3y§.scroll(param1);
         }
      }
      
      private function onBuyItemClicked(param1:§6!P§) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in §`!v§)
         {
            if(param1.target.data.id == _loc2_)
            {
               §`B§.§5F§ = param1.target.data;
               this.§,!,§ = false;
               this.deActivate();
               §7y§ = true;
               break;
            }
         }
      }
      
      private function §?3§(param1:Object) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in §`!v§)
         {
            if(param1.id == _loc2_)
            {
               §`B§.§5F§ = param1;
               this.§,!,§ = true;
               this.deActivate();
               break;
            }
         }
      }
      
      public function §]U§() : void
      {
         if(§?!-§ || §%!b§)
         {
            this.§>!-§();
            return;
         }
         §?!-§ = new §9!S§();
         §?!-§.addEventListener(Event.COMPLETE,this.final);
         §?!-§.addEventListener(IOErrorEvent.IO_ERROR,this.§;o§);
         §?!-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;o§);
         §?!-§.addEventListener(§="B§.§2"B§,this.§;o§);
         §?!-§.dataFormat = URLLoaderDataFormat.TEXT;
         §?!-§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/shoplisting"));
      }
      
      protected function §;o§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
         §?!-§ = null;
      }
      
      private function final(param1:Event) : void
      {
         var dataObject:Object = null;
         var tempME:Object = null;
         var e:Event = param1;
         try
         {
            dataObject = JSON.parse(§?!-§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §?!-§.data,§8o§.§1!d§);
         }
         §%!b§ = dataObject.powerups;
         if(§%!b§ && §%!b§.length > 1)
         {
            tempME = §%!b§[0];
            §%!b§[0] = §%!b§[1];
            §%!b§[1] = tempME;
         }
         §?!-§ = null;
         this.§>!-§();
      }
      
      private function §7X§(param1:Array) : Array
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
      
      private function §>!-§() : void
      {
         §%!b§ = this.§7X§(§%!b§);
         this.§@E§ = 0;
         this.§7g§();
         var _loc1_:int = -15;
         this.§3y§ = new §="$§(§`l§,200,this.§1! § || [],§!!u§,70,140);
         this.§3y§.scrollerSprite.addEventListener(§6!P§.§#!"§,this.onBuyItemClicked);
         this.§3y§.scrollerSprite.x = _loc1_;
         this.§3y§.scrollerSprite.y = 110;
         mClip.Container_Popup.addChild(this.§3y§.scrollerSprite);
         this.mPowerUpsItemsScroller2 = new §="$§(§`l§,200,this.§!!i§ || [],§!!u§,70,140);
         this.mPowerUpsItemsScroller2.scrollerSprite.addEventListener(§6!P§.§#!"§,this.onBuyItemClicked);
         this.mPowerUpsItemsScroller2.scrollerSprite.x = _loc1_;
         this.mPowerUpsItemsScroller2.scrollerSprite.y = 110 + 220;
         mClip.Container_Popup.addChild(this.mPowerUpsItemsScroller2.scrollerSprite);
         getItemByName("AngryBirdLoader").visible = false;
         this.§?Q§(§%g§);
      }
      
      private function onUiInteraction(param1:§+!#§) : void
      {
         this.uiInteractionHandler(param1.§`!>§,param1.§4W§,param1.§91§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         this.§?Q§(param2);
         switch(param2)
         {
            case "SHOP_POPUP_CLOSE":
               this.§,!,§ = true;
               this.deActivate();
               break;
            case "BRANDED_SHOP":
               §`B§.§29§(§=1§.§1[§.§,!X§.§6!§,"standard-shop");
               this.§,!,§ = false;
               this.deActivate();
         }
      }
      
      private function §?Q§(param1:String) : void
      {
      }
      
      override public function deActivate() : void
      {
         if(this.§3y§)
         {
            mClip.Container_Popup.removeChild(this.§3y§.scrollerSprite);
            this.§3y§.dispose();
         }
         if(this.mPowerUpsItemsScroller2)
         {
            mClip.Container_Popup.removeChild(this.mPowerUpsItemsScroller2.scrollerSprite);
            this.mPowerUpsItemsScroller2.dispose();
         }
         this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
         if(this.§,!,§)
         {
            preClose();
         }
         else
         {
            close();
         }
         if(§?!-§)
         {
            §?!-§.removeEventListener(Event.COMPLETE,this.final);
            §?!-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;o§);
            §?!-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;o§);
            §?!-§.removeEventListener(§="B§.§2"B§,this.§;o§);
            §?!-§ = null;
         }
         this.§,!,§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(!§7y§)
         {
            §"!e§.§7"+§();
         }
         else
         {
            §7y§ = false;
         }
      }
   }
}
