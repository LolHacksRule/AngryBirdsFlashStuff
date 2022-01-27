package §4"k§
{
   import §"§.§0F§;
   import §"[§.§""h§;
   import §&!c§.§5!m§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §4"m§.§>" §;
   import §7!n§.§>"H§;
   import §8!h§.§%"z§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!u§.§?b§;
   import §`"]§.§?"f§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1V§ extends EventDispatcher
   {
      
      public static const dynamic:String = "hide_complete";
      
      public static const §>"]§:String = "show_complete";
      
      public static const §!!r§:String = "extra_bird_used";
       
      
      protected var §9""§:§%b§;
      
      protected var §#u§:Number;
      
      protected var §^"`§:Number;
      
      protected var §&d§:Number;
      
      protected var §,"§:Boolean;
      
      protected var §3!m§:§@!8§;
      
      protected var § s§:§;g§;
      
      protected var §0!>§:§9!c§;
      
      protected var §+!s§:§?"f§;
      
      protected var §#!q§:MovieClip;
      
      protected var §?!$§:§7"1§;
      
      protected var §,#,§:§5!m§;
      
      protected var §""#§:§[!b§;
      
      protected var §-""§:String;
      
      private var §!2§:Boolean;
      
      protected var §,%§:Boolean;
      
      protected var § !Q§:Boolean;
      
      protected var §[p§:Number;
      
      protected var §@!h§:§3!§;
      
      protected var §6!§:MovieClip;
      
      public function §1V§(param1:§@!8§, param2:§5!m§)
      {
         super();
         this.§,#,§ = param2;
         this.init(param1);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§,%§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§,%§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§ !Q§ = param1;
         this.refresh();
      }
      
      public function get visible() : Boolean
      {
         return this.§ !Q§;
      }
      
      public function get §-u§() : Boolean
      {
         return this.§!2§;
      }
      
      public function set §-u§(param1:Boolean) : void
      {
         this.§!2§ = param1;
         if(this.§!2§)
         {
            this.§#"8§();
         }
      }
      
      protected function init(param1:§@!8§) : void
      {
         this.§3!m§ = param1;
         this.§#u§ = 5;
         this.§!2§ = false;
         this.§,%§ = true;
         this.§ !Q§ = true;
         this.§,"§ = false;
         this.§-""§ = §[!b§.§]!F§;
         this.§ s§ = §;g§(param1.getItemByName("Button_ExtraBird"));
         this.§0!>§ = §9!c§(param1.getItemByName("MovieClip_GetMore"));
         this.§0!>§.mClip.gotoAndStop(1);
         this.§0!>§.mClip.mouseEnabled = false;
         this.§0!>§.mClip.mouseChildren = false;
         this.§6!§ = param1.mClip.sparkles;
         this.§""#§ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
         this.§""#§.addEventListener(§?b§.§in §,this.§!&§);
         this.§#!q§ = this.§ s§.mClip.extraBird;
         this.§+!s§ = new §?"f§(param1.getItemByName("MovieClip_Counter").mClip);
         this.§?!$§ = §7"1§(§4"#§.singleton.dataModel);
         this.§?!$§.§@!K§.addEventListener(§?b§.§6,§,this.§2"s§);
         this.§3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§3!m§.mClip.alpha = 1;
         this.§[p§ = this.§3!m§.mClip.scaleX;
         this.§ "5§(this.§""#§.§1!O§);
         this.refresh();
      }
      
      public function dispose() : void
      {
         if(this.§@!h§)
         {
            this.§@!h§.removeEventListener(§>"H§.CLOSE,this.§=9§);
         }
         this.§@!h§ = null;
         this.§3!m§.mClip.scaleX = this.§3!m§.mClip.scaleY = this.§[p§;
         this.§3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§?!$§.§@!K§.removeEventListener(§?b§.§6,§,this.§2"s§);
         this.§""#§.removeEventListener(§?b§.§in §,this.§!&§);
         this.§,#,§ = null;
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         this.§9""§ = null;
      }
      
      public function §0k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!q§.currentLabels.length)
         {
            if(param1 == this.§#!q§.currentLabels[_loc3_].name)
            {
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            this.§#!q§.gotoAndStop(param1);
         }
      }
      
      protected function refresh() : void
      {
         this.§+!s§.count = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         this.§+!s§.§ var§ = this.§?!$§.§@!K§.§5!<§(this.§-""§);
         var _loc1_:Boolean = §0F§(§<!J§.§=!%§).§"Y§(this.§-""§);
         if(_loc1_)
         {
            this.§,%§ = false;
         }
         if(this.§,%§)
         {
            this.§ s§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.§ s§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.§ s§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            this.§ s§.setComponentVisualState(§%"z§.COMPONENT_STATE_DISABLED);
         }
         this.§ s§.setEnabled(this.§,%§);
         this.§3!m§.mClip.visible = this.§ !Q§;
      }
      
      public function show() : void
      {
         this.§ !Q§ = true;
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         this.§9""§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":this.§[p§ * 1,
            "scaleY":this.§[p§ * 1,
            "alpha":1
         },null,0.25);
         this.§9""§.onComplete = this.§+m§;
         this.§9""§.play();
      }
      
      public function hide(param1:Boolean = true) : void
      {
         this.§ !Q§ = false;
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         this.§9""§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§9""§.onComplete = this.§]!t§;
         this.§9""§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§9""§.play();
      }
      
      protected function §]!t§() : void
      {
         this.refresh();
         dispatchEvent(new Event(dynamic));
      }
      
      protected function §+m§() : void
      {
         this.refresh();
         dispatchEvent(new Event(§>"]§));
      }
      
      public function §5N§(param1:Number = 5) : void
      {
         if(this.§!2§)
         {
            return;
         }
         this.§,"§ = true;
         this.§^"`§ = param1 / (this.§#u§ * 2);
         this.§&d§ = param1;
         this.§`!f§();
      }
      
      public function §#"0§() : void
      {
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         this.§3!m§.mClip.scaleY = 1;
         this.§3!m§.mClip.scaleX = 1;
      }
      
      protected function §`!f§() : void
      {
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         this.§&d§ -= this.§^"`§ * 2;
         if(this.§&d§ <= 0)
         {
            return;
         }
         this.§9""§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":this.§[p§ * 1.2,
            "scaleY":this.§[p§ * 1.2
         },null,this.§^"`§);
         this.§9""§.onComplete = this.§;!H§;
         this.§9""§.play();
      }
      
      public function §;!H§() : void
      {
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         this.§9""§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":this.§[p§ * 1,
            "scaleY":this.§[p§ * 1
         },null,this.§^"`§);
         this.§9""§.onComplete = this.§`!f§;
         this.§9""§.play();
      }
      
      public function §1p§() : Boolean
      {
         if(this.§,"§ && !this.§9""§.isPaused)
         {
            return true;
         }
         return false;
      }
      
      public function §'"5§() : void
      {
         if(this.§9""§ && this.§,"§)
         {
            this.§9""§.pause();
         }
      }
      
      public function §%"!§() : void
      {
         if(this.§9""§ && this.§,"§)
         {
            this.§9""§.play();
         }
      }
      
      public function §#"8§() : void
      {
         this.§,%§ = false;
         this.§ s§.setEnabled(this.§,%§);
         this.§'Y§(this.§9""§);
         this.§9""§ = §5!%§.§!6§.§4!M§(this.§3!m§.mClip,{
            "scaleX":this.§[p§ * 1,
            "scaleY":this.§[p§ * 1,
            "alpha":0.5
         },null,0.5);
         this.§9""§.play();
      }
      
      private function §'Y§(param1:§%b§) : void
      {
         if(param1)
         {
            param1.§=!L§();
         }
      }
      
      private function §2"s§(param1:§?b§) : void
      {
         if(param1.§8!#§ == this.§-""§)
         {
            this.refresh();
         }
      }
      
      protected function §!&§(param1:§?b§) : void
      {
         this.§ "5§(param1.§8!#§);
      }
      
      protected function § "5§(param1:String) : void
      {
         if(!this.§,%§)
         {
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
            return;
         }
         if(param1 != "" && param1 == this.§-""§)
         {
            this.§6!§.visible = true;
            this.§6!§.gotoAndPlay(1);
         }
         else
         {
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
         }
      }
      
      public function onUIInteraction(param1:§8"U§) : void
      {
         if(this.§!2§)
         {
            return;
         }
         var _loc2_:Boolean = this.§?!$§.§@!K§.§5!<§(this.§-""§);
         var _loc3_:int = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         switch(param1.§5!u§.toUpperCase())
         {
            case "OVER_EXTRA_BIRD":
               if(_loc3_ <= 0 && _loc2_ == false)
               {
                  this.§0!>§.mClip.gotoAndPlay("start");
               }
               this.§'"5§();
               break;
            case "OUT_EXTRA_BIRD":
               this.§0!>§.mClip.gotoAndStop(1);
               this.§%"!§();
               break;
            case "EXTRA_BIRD":
               if(_loc3_ <= 0 && _loc2_ == false)
               {
                  this.§ "[§();
               }
               else
               {
                  this.§ #,§();
               }
               break;
            case "NEXT_LEVEL":
               this.hide(false);
         }
      }
      
      private function § #,§() : void
      {
         var _loc1_:int = 0;
         if(this.§,#,§)
         {
            _loc1_ = this.§,#,§.§ #,§(this.§-""§);
            this.§!2§ = _loc1_ == §5!m§.§"!g§ ? true : false;
            if(this.§!2§)
            {
               this.§#"8§();
               dispatchEvent(new Event(§!!r§));
            }
         }
      }
      
      private function § "[§() : void
      {
         this.§@!h§ = new §>" §(§^!S§.§'J§,§2!s§.§@"$§,§""h§.§%!m§,this.§-""§);
         §4"#§.singleton.popupManager.openPopup(this.§@!h§,true,true,true);
         this.§@!h§.addEventListener(§>"H§.CLOSE,this.§=9§);
      }
      
      private function §=9§(param1:§>"H§) : void
      {
         if(this.§@!h§)
         {
            this.§@!h§.removeEventListener(§>"H§.CLOSE,this.§=9§);
         }
         this.§@!h§ = null;
         var _loc2_:int = this.§?!$§.§@!K§.§6"0§(this.§-""§);
         if(_loc2_ > 0)
         {
            this.§ #,§();
         }
      }
   }
}
