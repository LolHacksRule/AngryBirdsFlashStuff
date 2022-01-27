package §-!r§
{
   import §#R§.§%!S§;
   import §#R§.§0<§;
   import §%"%§.§2Z§;
   import §%"%§.§@3§;
   import §3!S§.§<5§;
   import §4u§.§='§;
   import §7!6§.§@Y§;
   import §="<§.§,"$§;
   import §>%§.§ "3§;
   import §@u§.§1"&§;
   import §^S§.§,W§;
   import §^S§.§2" §;
   import §^S§.§6u§;
   import §^S§.§;j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §+!B§, §@3§
   {
       
      
      protected var §3!a§:§,"$§;
      
      private var §-!O§:MovieClip;
      
      private var §7!Y§:MovieClip;
      
      protected var §1o§:XML;
      
      protected var §-!w§:int;
      
      protected var §<7§:int;
      
      protected var §""§:String;
      
      protected var §3!D§:String = "none";
      
      protected var §5v§:String = "best";
      
      protected var §@!d§:Boolean = true;
      
      protected var §]! §:§,W§;
      
      protected var §-!J§:Vector.<String>;
      
      protected var §!!s§:§6u§;
      
      protected var § "@§:§2Z§;
      
      protected var §3!L§:§1"&§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§-!w§ = param1;
         this.§<7§ = param2;
         this.§1o§ = param3 || <xml></xml>;
         this.§""§ = param4;
      }
      
      public function get id() : String
      {
         return this.§""§;
      }
      
      public function get §[r§() : int
      {
         return this.§-!w§;
      }
      
      public function get priority() : int
      {
         return this.§<7§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§<7§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§]! § && this.§]! §.§4!,§ && (this.§3!D§ == §6u§.§5!-§ || this.§3!D§ == §6u§.§2!!§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§3!a§.removeEventListener(§%!S§.§0!W§,this.§3!§);
         this.§!!q§();
         if(this.§]! §)
         {
            this.§]! §.dispose();
            this.§]! § = null;
         }
         this.§3!a§.clear();
         if(this.§3!a§.mClip && this.§3!a§.mClip.parent && this.§3!a§.mClip.parent == this.§7!Y§)
         {
            this.§7!Y§.removeChild(this.§3!a§.mClip);
         }
         if(this.§7!Y§ && this.§7!Y§.parent && this.§7!Y§.parent == this.§-!O§)
         {
            this.§-!O§.removeChild(this.§7!Y§);
         }
         this.§-!O§ = null;
         this.§3!a§ = null;
         if(this.§ "@§)
         {
            this.§ "@§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§3!a§.viewHeight = param2;
         this.§3!a§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§2Z§, param3:§1"&§, param4:Boolean = false) : void
      {
         this.§ "@§ = param2;
         this.§3!L§ = param3;
         this.initialize(param1);
         this.§ !t§();
         this.init();
         this.§"§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§3!a§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§-!O§ = param1;
         this.§3!a§ = new §,"$§(this.§1o§,null,null,null);
         this.§3!a§.addEventListener(§%!S§.§0!W§,this.§3!§);
         this.§3!a§.setVisibility(true);
         this.§3!a§.setActiveStatus(true);
         this.§7!Y§ = new MovieClip();
         this.§7!Y§.addChild(this.§3!a§.mClip);
         this.§-!O§.addChild(this.§7!Y§);
         this.§3!a§.mClip.name = "Container_" + this.§3!a§.mClip.name;
         this.§-!J§ = new Vector.<String>();
      }
      
      protected function §3!§(param1:§%!S§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§!"E§,param1.§[!U§,param1.§^"G§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §<5§.playSound("close_popup_button_click");
               dispatchEvent(new § "3§(§ "3§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§ "@§.addLocalizationTarget(this);
      }
      
      protected function § !t§() : void
      {
         this.§-!J§.push(§2" §.§[!-§());
         this.§-!J§.push(§2" §.§2!I§());
         this.§-!J§.push(§2" §.§"u§());
         this.§-!J§.push(§2" §.§+!b§());
         this.§-!J§.push(§2" §.§,!5§());
         this.§-!J§.push(§2" §.§<Z§);
         this.§-!J§.push(§2" §.§ Q§);
      }
      
      protected function §"§() : void
      {
         if(this.§3!a§ == null || this.§3!a§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§7!Y§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §='§.§9a§(_loc1_,this.§-!J§,_loc2_,§='§.§,"B§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§!!q§();
         this.§]! § = new §;j§(param1,this.§3!a§.mClip.stage);
      }
      
      protected function §%"2§() : §6u§
      {
         return new §6u§(§2" §.§[!-§(),§2" §.§ Q§,§2" §.§<Z§,§6u§.§9!w§,this.§@!d§,this.§5v§);
      }
      
      protected function §["C§() : §6u§
      {
         var _loc1_:§6u§ = new §6u§();
         _loc1_.§@%§ = §2" §.§ Q§;
         _loc1_.§?s§ = §2" §.§<Z§;
         _loc1_.startLabel = §2" §.§+!b§();
         _loc1_.type = §6u§.§5!-§;
         _loc1_.stageQuality = this.§5v§;
         return _loc1_;
      }
      
      private function §[!P§(param1:Event) : void
      {
         switch(this.§3!D§)
         {
            case §6u§.§9!w§:
               this.§@!5§();
               break;
            case §6u§.§5!-§:
               this.§2!T§();
               break;
            case §6u§.§2!!§:
               this.§=!f§();
         }
      }
      
      protected function §2!T§() : void
      {
         var _loc1_:String = this.§3!D§;
         this.§!!q§();
         this.onTransitionComplete(_loc1_);
         this.§+=§(this.§%"2§());
      }
      
      protected function §@!5§() : void
      {
         this.onTransitionComplete(this.§3!D§);
         if(this.§!!s§)
         {
            this.§+=§(this.§!!s§);
            this.§!!s§ = null;
         }
      }
      
      protected function §=!f§() : void
      {
         this.§!!q§();
         this.onTransitionComplete(this.§3!D§);
         this.§3!a§.setVisibility(false);
         this.§[S§();
      }
      
      protected function §+=§(param1:§6u§) : void
      {
         this.§!!q§();
         if(this.§]! § && param1.type != §6u§.§-r§)
         {
            this.§3!D§ = param1.type;
            this.§]! §.addEventListener(Event.COMPLETE,this.§[!P§);
            this.§]! §.start(param1);
            this.onTransitionStart(this.§3!D§);
            if(this.§3!L§)
            {
               this.§3!L§.addEventListener(§0<§.§?"8§,this.runTransition);
            }
         }
      }
      
      protected function §!!q§() : void
      {
         if(this.§]! §)
         {
            this.§]! §.removeEventListener(Event.COMPLETE,this.§[!P§);
            this.§]! §.stop();
         }
         this.§3!D§ = §6u§.§-r§;
         if(this.§3!L§)
         {
            this.§3!L§.removeEventListener(§0<§.§?"8§,this.runTransition);
         }
      }
      
      protected function §5!@§(param1:§6u§, param2:Boolean = false) : void
      {
         if(!this.§]! §.§4!,§)
         {
            this.§+=§(param1);
            return;
         }
         this.§!!s§ = param1;
         this.§]! §.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§3!a§.setVisibility(true);
         if(param1 && this.§]! §)
         {
            this.§+=§(this.§["C§());
         }
         else
         {
            this.§2!T§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§6u§ = null;
         if(param1 && this.§]! §)
         {
            _loc3_ = new §6u§();
            _loc3_.startLabel = §2" §.§,!5§();
            _loc3_.§@%§ = §2" §.§ Q§;
            _loc3_.§?s§ = §2" §.§<Z§;
            _loc3_.type = §6u§.§2!!§;
            _loc3_.stageQuality = this.§5v§;
            this.§5!@§(_loc3_,param2);
         }
         else
         {
            this.§!!q§();
            this.§=!f§();
         }
      }
      
      protected function runTransition(param1:§0<§) : void
      {
         if(this.§]! § && this.§3!D§ != §6u§.§-r§)
         {
            this.§]! §.run(param1.§5"?§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §[S§() : void
      {
         this.dispose();
         dispatchEvent(new § "3§(§ "3§.§?!h§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
