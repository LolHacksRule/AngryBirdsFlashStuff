package § $0§
{
   import § "L§.§,p§;
   import § "L§.§23§;
   import §#"4§.§4%§;
   import §##x§.§"#;§;
   import §##x§.§3#r§;
   import §##x§.§7!W§;
   import §##x§.§7$<§;
   import §##y§.§#$"§;
   import §+`§.§%"q§;
   import §+`§.§6!%§;
   import §3"V§.§ b§;
   import §;#>§.§7!^§;
   import §^"3§.§`$4§;
   import §`§.§%#m§;
   import §`§.§?$B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §,#@§, §6!%§
   {
       
      
      protected var §;#'§:§23§;
      
      private var §?!,§:MovieClip;
      
      private var §4#`§:MovieClip;
      
      protected var §1!,§:XML;
      
      protected var §'!r§:int;
      
      protected var §5_§:int;
      
      protected var mId:String;
      
      protected var §["C§:String = "none";
      
      protected var §3""§:String = "best";
      
      protected var §`!d§:Boolean = true;
      
      protected var §0#l§:§7!W§;
      
      protected var §6#G§:Vector.<String>;
      
      protected var §4"P§:§7$<§;
      
      protected var §#$&§:§%"q§;
      
      protected var §7!p§:§#$"§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§'!r§ = param1;
         this.§5_§ = param2;
         this.§1!,§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §9e§() : int
      {
         return this.§'!r§;
      }
      
      public function get priority() : int
      {
         return this.§5_§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§5_§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§0#l§ && this.§0#l§.§62§ && (this.§["C§ == §7$<§.§']§ || this.§["C§ == §7$<§.§=#C§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§;#'§.removeEventListener(§%#m§.§-!O§,this.§6u§);
         this.§"!c§();
         if(this.§0#l§)
         {
            this.§0#l§.dispose();
            this.§0#l§ = null;
         }
         this.§;#'§.clear();
         if(this.§;#'§.mClip && this.§;#'§.mClip.parent && this.§;#'§.mClip.parent == this.§4#`§)
         {
            this.§4#`§.removeChild(this.§;#'§.mClip);
         }
         if(this.§4#`§ && this.§4#`§.parent && this.§4#`§.parent == this.§?!,§)
         {
            this.§?!,§.removeChild(this.§4#`§);
         }
         this.§?!,§ = null;
         this.§;#'§ = null;
         if(this.§#$&§)
         {
            this.§#$&§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§;#'§.viewHeight = param2;
         this.§;#'§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§%"q§, param3:§#$"§, param4:Boolean = false) : void
      {
         this.§#$&§ = param2;
         this.§7!p§ = param3;
         this.initialize(param1);
         this.§?^§();
         this.init();
         this.§'f§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§;#'§)
         {
            if(param2)
            {
               § b§.playSound("Menu_Back",§ b§.§;$5§);
            }
            this.§;#'§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§?!,§ = param1;
         this.§;#'§ = §,p§.§-H§(this.§1!,§,null,null,null);
         this.§;#'§.addEventListener(§%#m§.§-!O§,this.§6u§);
         this.§;#'§.setVisibility(true);
         this.§;#'§.setActiveStatus(true);
         this.§4#`§ = new MovieClip();
         this.§4#`§.addChild(this.§;#'§.mClip);
         this.§?!,§.addChild(this.§4#`§);
         this.§;#'§.mClip.name = "Container_" + this.§;#'§.mClip.name;
         this.§6#G§ = new Vector.<String>();
         this.§?!,§.tabChildren = false;
      }
      
      protected function §6u§(param1:§%#m§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §7!^§(§7!^§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§#$&§.addLocalizationTarget(this);
      }
      
      protected function §?^§() : void
      {
         this.§6#G§.push(§3#r§.§2Z§());
         this.§6#G§.push(§3#r§.§ "G§());
         this.§6#G§.push(§3#r§.§7"q§());
         this.§6#G§.push(§3#r§.§3$!§());
         this.§6#G§.push(§3#r§.§7#%§());
         this.§6#G§.push(§3#r§.§ case§);
         this.§6#G§.push(§3#r§.§5!H§);
      }
      
      protected function §'f§() : void
      {
         if(this.§;#'§ == null || this.§;#'§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§4#`§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §4%§.§""w§(_loc1_,this.§6#G§,_loc2_,§4%§.§]"X§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§"!c§();
         this.§0#l§ = new §"#;§(param1,this.§;#'§.mClip.stage);
      }
      
      protected function §>!"§() : §7$<§
      {
         return new §7$<§(§3#r§.§2Z§(),§3#r§.§5!H§,§3#r§.§ case§,§7$<§.§3"4§,this.§`!d§,this.§3""§);
      }
      
      protected function §3"j§() : §7$<§
      {
         var _loc1_:§7$<§ = new §7$<§();
         _loc1_.§0#-§ = §3#r§.§5!H§;
         _loc1_.§&$D§ = §3#r§.§ case§;
         _loc1_.startLabel = §3#r§.§3$!§();
         _loc1_.type = §7$<§.§']§;
         _loc1_.stageQuality = this.§3""§;
         return _loc1_;
      }
      
      private function §9"'§(param1:Event) : void
      {
         switch(this.§["C§)
         {
            case §7$<§.§3"4§:
               this.§##d§();
               break;
            case §7$<§.§']§:
               this.§4"$§();
               break;
            case §7$<§.§=#C§:
               this.§[o§();
         }
      }
      
      protected function §4"$§() : void
      {
         var _loc1_:String = this.§["C§;
         this.§"!c§();
         this.§-"'§(_loc1_);
         this.§6$5§(this.§>!"§());
         dispatchEvent(new §7!^§(§7!^§.§&""§,this));
      }
      
      protected function §##d§() : void
      {
         this.§-"'§(this.§["C§);
         if(this.§4"P§)
         {
            this.§6$5§(this.§4"P§);
            this.§4"P§ = null;
         }
      }
      
      protected function §[o§() : void
      {
         this.§"!c§();
         this.§-"'§(this.§["C§);
         this.§;#'§.setVisibility(false);
         this.§>#'§();
      }
      
      protected function §6$5§(param1:§7$<§) : void
      {
         this.§"!c§();
         if(this.§0#l§ && param1.type != §7$<§.§3h§)
         {
            this.§["C§ = param1.type;
            this.§0#l§.addEventListener(Event.COMPLETE,this.§9"'§);
            this.§0#l§.start(param1);
            this.onTransitionStart(this.§["C§);
            if(this.§7!p§)
            {
               this.§7!p§.addEventListener(§?$B§.§^"%§,this.§""Y§);
            }
         }
      }
      
      protected function §"!c§() : void
      {
         if(this.§0#l§)
         {
            this.§0#l§.removeEventListener(Event.COMPLETE,this.§9"'§);
            this.§0#l§.stop();
         }
         this.§["C§ = §7$<§.§3h§;
         if(this.§7!p§)
         {
            this.§7!p§.removeEventListener(§?$B§.§^"%§,this.§""Y§);
         }
      }
      
      protected function §6G§(param1:§7$<§, param2:Boolean = false) : void
      {
         if(!this.§0#l§.§62§)
         {
            this.§6$5§(param1);
            return;
         }
         this.§4"P§ = param1;
         this.§0#l§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§;#'§.setVisibility(true);
         if(param1 && this.§0#l§)
         {
            this.§6$5§(this.§3"j§());
         }
         else
         {
            this.§4"$§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§7$<§ = null;
         if(param1 && this.§0#l§)
         {
            _loc3_ = new §7$<§();
            _loc3_.startLabel = §3#r§.§7#%§();
            _loc3_.§0#-§ = §3#r§.§5!H§;
            _loc3_.§&$D§ = §3#r§.§ case§;
            _loc3_.type = §7$<§.§=#C§;
            _loc3_.stageQuality = this.§3""§;
            this.§6G§(_loc3_,param2);
         }
         else
         {
            this.§"!c§();
            this.§[o§();
         }
      }
      
      protected function §""Y§(param1:§?$B§) : void
      {
         if(this.§0#l§ && this.§["C§ != §7$<§.§3h§)
         {
            this.§0#l§.run(param1.§'!A§);
         }
      }
      
      protected function §-"'§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §>#'§() : void
      {
         this.dispose();
         dispatchEvent(new §7!^§(§7!^§.§;""§,this));
      }
      
      public function §-u§() : void
      {
      }
   }
}
