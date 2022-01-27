package §8!E§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §"O§.§^#]§;
   import §'y§.§^!B§;
   import §+!c§.§5" §;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §"#X§ extends EventDispatcher
   {
      
      public static const §0!M§:String = "hide_complete";
      
      public static const §<!§:String = "show_complete";
      
      public static const §9!4§:String = "extra_bird_used";
       
      
      protected var §7!a§:§[#R§;
      
      protected var §"`§:Number;
      
      protected var §2'§:Number;
      
      protected var §%9§:Number;
      
      protected var §#!§:Boolean;
      
      protected var §=#=§:§ #^§;
      
      protected var §`;§:§^"m§;
      
      protected var §'">§:§0"$§;
      
      protected var §4j§:§5" §;
      
      protected var §5"0§:MovieClip;
      
      protected var §4#J§:§@#B§;
      
      protected var §try§:§^#]§;
      
      protected var §[!+§:§6"w§;
      
      protected var §]!=§:String;
      
      private var §'"h§:Boolean;
      
      protected var §&A§:Boolean;
      
      protected var §"!A§:Boolean;
      
      protected var § "d§:Number;
      
      protected var §6"K§:§[!j§;
      
      protected var §?#Y§:MovieClip;
      
      public function §"#X§(param1:§ #^§, param2:§^#]§)
      {
         super();
         this.§try§ = param2;
         this.init(param1);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§&A§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§&A§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§"!A§ = param1;
         this.refresh();
      }
      
      public function get visible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function get §3#X§() : Boolean
      {
         return this.§'"h§;
      }
      
      public function set §3#X§(param1:Boolean) : void
      {
         this.§'"h§ = param1;
         if(this.§'"h§)
         {
            this.§1e§();
         }
      }
      
      protected function init(param1:§ #^§) : void
      {
         this.§=#=§ = param1;
         this.§"`§ = 5;
         this.§'"h§ = false;
         this.§&A§ = true;
         this.§"!A§ = true;
         this.§#!§ = false;
         this.§]!=§ = §6"w§.§1!m§;
         this.§`;§ = §^"m§(param1.getItemByName("Button_ExtraBird"));
         this.§'">§ = §0"$§(param1.getItemByName("MovieClip_GetMore"));
         this.§'">§.mClip.gotoAndStop(1);
         this.§'">§.mClip.mouseEnabled = false;
         this.§'">§.mClip.mouseChildren = false;
         this.§?#Y§ = param1.mClip.sparkles;
         this.§[!+§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
         this.§[!+§.addEventListener(§@!X§.§;"Z§,this.§4!D§);
         this.§5"0§ = this.§`;§.mClip.extraBird;
         this.§4j§ = new §5" §(param1.getItemByName("MovieClip_Counter").mClip);
         this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
         this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§=#=§.mClip.alpha = 1;
         this.§ "d§ = this.§=#=§.mClip.scaleX;
         this.§3J§(this.§[!+§.§#"0§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         if(this.§6"K§)
         {
            this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
         }
         this.§6"K§ = null;
         this.§=#=§.mClip.scaleX = this.§=#=§.mClip.scaleY = this.§ "d§;
         this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
         this.§[!+§.removeEventListener(§@!X§.§;"Z§,this.§4!D§);
         this.§try§ = null;
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         this.§7!a§ = null;
      }
      
      public function §4,§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5"0§.currentLabels.length)
         {
            if(param1 == this.§5"0§.currentLabels[_loc3_].name)
            {
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            this.§5"0§.gotoAndStop(param1);
         }
      }
      
      protected function refresh() : void
      {
         this.§4j§.count = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         this.§4j§.§ "r§ = this.§4#J§.§]"<§.§ #D§(this.§]!=§);
         var _loc1_:Boolean = §8"f§(§,!q§.§9!,§).§8%§(this.§]!=§);
         if(_loc1_)
         {
            this.§&A§ = false;
         }
         if(this.§&A§)
         {
            this.§`;§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§`;§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§`;§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            this.§`;§.setComponentVisualState(§1"z§.COMPONENT_STATE_DISABLED);
         }
         this.§`;§.setEnabled(this.§&A§);
         this.§=#=§.mClip.visible = this.§"!A§;
      }
      
      public function show() : void
      {
         this.§"!A§ = true;
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":this.§ "d§ * 1,
            "scaleY":this.§ "d§ * 1,
            "alpha":1
         },null,0.25);
         this.§7!a§.onComplete = this.§2!x§;
         this.§7!a§.play();
      }
      
      public function hide(param1:Boolean = true) : void
      {
         this.§"!A§ = false;
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§7!a§.onComplete = this.§-##§;
         this.§7!a§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§7!a§.play();
      }
      
      protected function §-##§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§0!M§));
      }
      
      protected function §2!x§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§<!§));
      }
      
      public function §##3§(param1:Number = 5) : void
      {
         if(this.§'"h§)
         {
            return;
         }
         this.§#!§ = true;
         this.§2'§ = param1 / (this.§"`§ * 2);
         this.§%9§ = param1;
         this.§=#R§();
      }
      
      public function §>z§() : void
      {
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         this.§=#=§.mClip.scaleY = 1;
         this.§=#=§.mClip.scaleX = 1;
      }
      
      protected function §=#R§() : void
      {
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         this.§%9§ -= this.§2'§ * 2;
         if(this.§%9§ <= 0)
         {
            return;
         }
         this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":this.§ "d§ * 1.2,
            "scaleY":this.§ "d§ * 1.2
         },null,this.§2'§);
         this.§7!a§.onComplete = this.§?!F§;
         this.§7!a§.play();
      }
      
      public function §?!F§() : void
      {
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":this.§ "d§ * 1,
            "scaleY":this.§ "d§ * 1
         },null,this.§2'§);
         this.§7!a§.onComplete = this.§=#R§;
         this.§7!a§.play();
      }
      
      public function §@!=§() : Boolean
      {
         if(this.§#!§ && !this.§7!a§.isPaused)
         {
            return true;
         }
         return false;
      }
      
      public function §0S§() : void
      {
         if(this.§7!a§ && this.§#!§)
         {
            this.§7!a§.pause();
         }
      }
      
      public function §-!X§() : void
      {
         if(this.§7!a§ && this.§#!§)
         {
            this.§7!a§.play();
         }
      }
      
      public function §1e§() : void
      {
         this.§&A§ = false;
         this.§`;§.setEnabled(this.§&A§);
         this.§'V§(this.§7!a§);
         this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
            "scaleX":this.§ "d§ * 1,
            "scaleY":this.§ "d§ * 1,
            "alpha":0.5
         },null,0.5);
         this.§7!a§.play();
      }
      
      private function §'V§(param1:§[#R§) : void
      {
         if(param1)
         {
            param1.§^"P§();
         }
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         if(param1.§6#R§ == this.§]!=§)
         {
            this.refresh();
         }
      }
      
      protected function §4!D§(param1:§@!X§) : void
      {
         this.§3J§(param1.§6#R§);
      }
      
      protected function §3J§(param1:String) : void
      {
         if(!this.§&A§)
         {
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§]!=§)
         {
            this.§?#Y§.visible = true;
            this.§?#Y§.gotoAndPlay(1);
         }
         else
         {
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
         }
      }
      
      public function onUIInteraction(param1:§6#'§) : void
      {
         if(this.§'"h§)
         {
            return;
         }
         var _loc2_:Boolean = this.§4#J§.§]"<§.§ #D§(this.§]!=§);
         var _loc3_:int = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         switch(param1.§=!k§.toUpperCase())
         {
            case "OVER_EXTRA_BIRD":
               if(_loc3_ <= 0 && _loc2_ == false)
               {
                  this.§'">§.mClip.gotoAndPlay("start");
               }
               this.§0S§();
               break;
            case "OUT_EXTRA_BIRD":
               this.§'">§.mClip.gotoAndStop(1);
               this.§-!X§();
               break;
            case "EXTRA_BIRD":
               if(_loc3_ <= 0 && _loc2_ == false)
               {
                  this.§8O§();
               }
               else
               {
                  this.§0"[§();
               }
               break;
            case "NEXT_LEVEL":
               this.hide(false);
         }
      }
      
      private function §0"[§() : void
      {
         var _loc1_:int = 0;
         if(this.§try§)
         {
            _loc1_ = this.§try§.§0"[§(this.§]!=§);
            this.§'"h§ = _loc1_ == §^#]§.§5!&§ ? true : false;
            if(this.§'"h§)
            {
               this.§1e§();
               dispatchEvent(new Event(§9!4§));
            }
         }
      }
      
      private function §8O§() : void
      {
         this.§6"K§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,this.§]!=§);
         §4#;§.singleton.popupManager.openPopup(this.§6"K§,true,true,true);
         this.§6"K§.addEventListener(§+#[§.CLOSE,this.§9!3§);
      }
      
      private function §9!3§(param1:§+#[§) : void
      {
         if(this.§6"K§)
         {
            this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
         }
         this.§6"K§ = null;
         var _loc2_:int = this.§4#J§.§]"<§.§8#K§(this.§]!=§);
         if(_loc2_ > 0)
         {
            this.§0"[§();
         }
      }
   }
}
