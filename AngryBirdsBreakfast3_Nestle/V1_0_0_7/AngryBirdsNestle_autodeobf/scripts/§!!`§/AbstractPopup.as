package §!!`§
{
   import §!!&§.§&"&§;
   import §"V§.§0"#§;
   import §"V§.§]j§;
   import §&!+§.§@z§;
   import §'!u§.§&S§;
   import §'!u§.§catch§;
   import §,a§.§!^§;
   import §,a§.§3!8§;
   import §,a§.§[!d§;
   import §,a§.§`!P§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §="3§.§[N§;
   import §>P§.§]"4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §3%§, §catch§
   {
       
      
      protected var §-"1§:§]"4§;
      
      private var §"W§:MovieClip;
      
      private var §;H§:MovieClip;
      
      protected var §7p§:XML;
      
      protected var §2B§:int;
      
      protected var §&K§:int;
      
      protected var §=H§:String;
      
      protected var §]s§:String = "none";
      
      protected var §!K§:String = "best";
      
      protected var § y§:Boolean = true;
      
      protected var §]z§:§!^§;
      
      protected var §[!l§:Vector.<String>;
      
      protected var §,!h§:§[!d§;
      
      protected var §-F§:§&S§;
      
      protected var §6!x§:§[N§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§2B§ = param1;
         this.§&K§ = param2;
         this.§7p§ = param3 || <xml></xml>;
         this.§=H§ = param4;
      }
      
      public function get id() : String
      {
         return this.§=H§;
      }
      
      public function get §5! §() : int
      {
         return this.§2B§;
      }
      
      public function get priority() : int
      {
         return this.§&K§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§&K§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§]z§ && this.§]z§.§51§ && (this.§]s§ == §[!d§.§-!g§ || this.§]s§ == §[!d§.§&b§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§-"1§.removeEventListener(§]j§.§+q§,this.§"i§);
         this.§1_§();
         if(this.§]z§)
         {
            this.§]z§.dispose();
            this.§]z§ = null;
         }
         this.§-"1§.clear();
         if(this.§-"1§.mClip && this.§-"1§.mClip.parent && this.§-"1§.mClip.parent == this.§;H§)
         {
            this.§;H§.removeChild(this.§-"1§.mClip);
         }
         if(this.§;H§ && this.§;H§.parent && this.§;H§.parent == this.§"W§)
         {
            this.§"W§.removeChild(this.§;H§);
         }
         this.§"W§ = null;
         this.§-"1§ = null;
         if(this.§-F§)
         {
            this.§-F§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§-"1§.viewHeight = param2;
         this.§-"1§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§&S§, param3:§[N§, param4:Boolean = false) : void
      {
         this.§-F§ = param2;
         this.§6!x§ = param3;
         this.initialize(param1);
         this.§!!@§();
         this.init();
         this.§%n§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§-"1§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§"W§ = param1;
         this.§-"1§ = new §]"4§(this.§7p§,null,null,null);
         this.§-"1§.addEventListener(§]j§.§+q§,this.§"i§);
         this.§-"1§.setVisibility(true);
         this.§-"1§.setActiveStatus(true);
         this.§;H§ = new MovieClip();
         this.§;H§.addChild(this.§-"1§.mClip);
         this.§"W§.addChild(this.§;H§);
         this.§-"1§.mClip.name = "Container_" + this.§-"1§.mClip.name;
         this.§[!l§ = new Vector.<String>();
      }
      
      protected function §"i§(param1:§]j§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§&!t§,param1.§0]§,param1.§;!6§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §%!c§.§8" §("close_popup_button_click");
               dispatchEvent(new §@z§(§@z§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§-F§.addLocalizationTarget(this);
      }
      
      protected function §!!@§() : void
      {
         this.§[!l§.push(§3!8§.§`!x§());
         this.§[!l§.push(§3!8§.§-r§());
         this.§[!l§.push(§3!8§.§<!§());
         this.§[!l§.push(§3!8§.§^§());
         this.§[!l§.push(§3!8§.§++§());
         this.§[!l§.push(§3!8§.§2"!§);
         this.§[!l§.push(§3!8§.§6;§);
      }
      
      protected function §%n§() : void
      {
         if(this.§-"1§ == null || this.§-"1§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§;H§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §&"&§.§<",§(_loc1_,this.§[!l§,_loc2_,§&"&§.§6"§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§1_§();
         this.§]z§ = new §`!P§(param1,this.§-"1§.mClip.stage);
      }
      
      protected function §#z§() : §[!d§
      {
         return new §[!d§(§3!8§.§`!x§(),§3!8§.§6;§,§3!8§.§2"!§,§[!d§.§5M§,this.§ y§,this.§!K§);
      }
      
      protected function §6!J§() : §[!d§
      {
         var _loc1_:§[!d§ = new §[!d§();
         _loc1_.§1q§ = §3!8§.§6;§;
         _loc1_.§?3§ = §3!8§.§2"!§;
         _loc1_.startLabel = §3!8§.§^§();
         _loc1_.type = §[!d§.§-!g§;
         _loc1_.stageQuality = this.§!K§;
         return _loc1_;
      }
      
      private function §?t§(param1:Event) : void
      {
         switch(this.§]s§)
         {
            case §[!d§.§5M§:
               this.§8-§();
               break;
            case §[!d§.§-!g§:
               this.§8y§();
               break;
            case §[!d§.§&b§:
               this.§ N§();
         }
      }
      
      protected function §8y§() : void
      {
         var _loc1_:String = this.§]s§;
         this.§1_§();
         this.onTransitionComplete(_loc1_);
         this.§=!2§(this.§#z§());
      }
      
      protected function §8-§() : void
      {
         this.onTransitionComplete(this.§]s§);
         if(this.§,!h§)
         {
            this.§=!2§(this.§,!h§);
            this.§,!h§ = null;
         }
      }
      
      protected function § N§() : void
      {
         this.§1_§();
         this.onTransitionComplete(this.§]s§);
         this.§-"1§.setVisibility(false);
         this.§%"§();
      }
      
      protected function §=!2§(param1:§[!d§) : void
      {
         this.§1_§();
         if(this.§]z§ && param1.type != §[!d§.§#^§)
         {
            this.§]s§ = param1.type;
            this.§]z§.addEventListener(Event.COMPLETE,this.§?t§);
            this.§]z§.start(param1);
            this.onTransitionStart(this.§]s§);
            if(this.§6!x§)
            {
               this.§6!x§.addEventListener(§0"#§.§2;§,this.runTransition);
            }
         }
      }
      
      protected function §1_§() : void
      {
         if(this.§]z§)
         {
            this.§]z§.removeEventListener(Event.COMPLETE,this.§?t§);
            this.§]z§.stop();
         }
         this.§]s§ = §[!d§.§#^§;
         if(this.§6!x§)
         {
            this.§6!x§.removeEventListener(§0"#§.§2;§,this.runTransition);
         }
      }
      
      protected function §1"3§(param1:§[!d§, param2:Boolean = false) : void
      {
         if(!this.§]z§.§51§)
         {
            this.§=!2§(param1);
            return;
         }
         this.§,!h§ = param1;
         this.§]z§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§-"1§.setVisibility(true);
         if(param1 && this.§]z§)
         {
            this.§=!2§(this.§6!J§());
         }
         else
         {
            this.§8y§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§[!d§ = null;
         if(param1 && this.§]z§)
         {
            _loc3_ = new §[!d§();
            _loc3_.startLabel = §3!8§.§++§();
            _loc3_.§1q§ = §3!8§.§6;§;
            _loc3_.§?3§ = §3!8§.§2"!§;
            _loc3_.type = §[!d§.§&b§;
            _loc3_.stageQuality = this.§!K§;
            this.§1"3§(_loc3_,param2);
         }
         else
         {
            this.§1_§();
            this.§ N§();
         }
      }
      
      protected function runTransition(param1:§0"#§) : void
      {
         if(this.§]z§ && this.§]s§ != §[!d§.§#^§)
         {
            this.§]z§.run(param1.§+4§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §%"§() : void
      {
         this.dispose();
         dispatchEvent(new §@z§(§@z§.§,F§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
