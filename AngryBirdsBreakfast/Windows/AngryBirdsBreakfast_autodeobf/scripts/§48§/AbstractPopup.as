package §48§
{
   import §"n§.§`!u§;
   import §,L§.§6!W§;
   import §-!;§.§>!B§;
   import §-!;§.§^!!§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §9!`§.§;g§;
   import §;0§.§ !s§;
   import §;0§.§6h§;
   import §>1§.§"!w§;
   import §>1§.§2B§;
   import §>1§.§7a§;
   import §>1§.§;=§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §["#§, § !s§
   {
       
      
      protected var §@'§:§"!a§;
      
      private var §!O§:MovieClip;
      
      private var §0s§:MovieClip;
      
      protected var §&"$§:XML;
      
      protected var §7!`§:int;
      
      protected var §@G§:int;
      
      protected var §>6§:String;
      
      protected var §]P§:String = "none";
      
      protected var §7%§:String = "best";
      
      protected var §%!v§:Boolean = true;
      
      protected var §#1§:§;=§;
      
      protected var §9!"§:Vector.<String>;
      
      protected var §8!!§:§2B§;
      
      protected var §-!]§:§6h§;
      
      protected var §6!c§:§6!A§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§7!`§ = param1;
         this.§@G§ = param2;
         this.§&"$§ = param3 || <xml></xml>;
         this.§>6§ = param4;
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function get §<4§() : int
      {
         return this.§7!`§;
      }
      
      public function get priority() : int
      {
         return this.§@G§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§@G§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§#1§ && this.§#1§.§`!m§ && (this.§]P§ == §2B§.§"<§ || this.§]P§ == §2B§.§-!S§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§@'§.removeEventListener(§>!B§.§7"&§,this.§[6§);
         this.§6!8§();
         if(this.§#1§)
         {
            this.§#1§.dispose();
            this.§#1§ = null;
         }
         this.§@'§.clear();
         if(this.§@'§.mClip && this.§@'§.mClip.parent && this.§@'§.mClip.parent == this.§0s§)
         {
            this.§0s§.removeChild(this.§@'§.mClip);
         }
         if(this.§0s§ && this.§0s§.parent && this.§0s§.parent == this.§!O§)
         {
            this.§!O§.removeChild(this.§0s§);
         }
         this.§!O§ = null;
         this.§@'§ = null;
         if(this.§-!]§)
         {
            this.§-!]§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§@'§.viewHeight = param2;
         this.§@'§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§6h§, param3:§6!A§, param4:Boolean = false) : void
      {
         this.§-!]§ = param2;
         this.§6!c§ = param3;
         this.initialize(param1);
         this.§+8§();
         this.init();
         this.§7A§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§@'§)
         {
            this.§@'§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§!O§ = param1;
         this.§@'§ = new §"!a§(this.§&"$§,null,null,null);
         this.§@'§.addEventListener(§>!B§.§7"&§,this.§[6§);
         this.§@'§.setVisibility(true);
         this.§@'§.setActiveStatus(true);
         this.§0s§ = new MovieClip();
         this.§0s§.addChild(this.§@'§.mClip);
         this.§!O§.addChild(this.§0s§);
         this.§@'§.mClip.name = "Container_" + this.§@'§.mClip.name;
         this.§9!"§ = new Vector.<String>();
      }
      
      protected function §[6§(param1:§>!B§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§3o§,param1.§3!C§,param1.§@! §);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §'!c§.§3!f§("close_popup_button_click");
               dispatchEvent(new §;g§(§;g§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§-!]§.addLocalizationTarget(this);
      }
      
      protected function §+8§() : void
      {
         this.§9!"§.push(§7a§.§0-§());
         this.§9!"§.push(§7a§.§;!W§());
         this.§9!"§.push(§7a§.§!7§());
         this.§9!"§.push(§7a§.§%!H§());
         this.§9!"§.push(§7a§.§9h§());
         this.§9!"§.push(§7a§.§5z§);
         this.§9!"§.push(§7a§.§=A§);
      }
      
      protected function §7A§() : void
      {
         if(this.§@'§ == null || this.§@'§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§0s§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §`!u§.§>V§(_loc1_,this.§9!"§,_loc2_,§`!u§.§>!b§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§6!8§();
         this.§#1§ = new §"!w§(param1,this.§@'§.mClip.stage);
      }
      
      protected function §1!%§() : §2B§
      {
         return new §2B§(§7a§.§0-§(),§7a§.§=A§,§7a§.§5z§,§2B§.§+!_§,this.§%!v§,this.§7%§);
      }
      
      protected function §6c§() : §2B§
      {
         var _loc1_:§2B§ = new §2B§();
         _loc1_.§'!J§ = §7a§.§=A§;
         _loc1_.§1!p§ = §7a§.§5z§;
         _loc1_.startLabel = §7a§.§%!H§();
         _loc1_.type = §2B§.§"<§;
         _loc1_.stageQuality = this.§7%§;
         return _loc1_;
      }
      
      private function §2!9§(param1:Event) : void
      {
         switch(this.§]P§)
         {
            case §2B§.§+!_§:
               this.§0!t§();
               break;
            case §2B§.§"<§:
               this.§00§();
               break;
            case §2B§.§-!S§:
               this.§<3§();
         }
      }
      
      protected function §00§() : void
      {
         var _loc1_:String = this.§]P§;
         this.§6!8§();
         this.onTransitionComplete(_loc1_);
         this.§[!y§(this.§1!%§());
      }
      
      protected function §0!t§() : void
      {
         this.onTransitionComplete(this.§]P§);
         if(this.§8!!§)
         {
            this.§[!y§(this.§8!!§);
            this.§8!!§ = null;
         }
      }
      
      protected function §<3§() : void
      {
         this.§6!8§();
         this.onTransitionComplete(this.§]P§);
         this.§@'§.setVisibility(false);
         this.§9;§();
      }
      
      protected function §[!y§(param1:§2B§) : void
      {
         this.§6!8§();
         if(this.§#1§ && param1.type != §2B§.§0!&§)
         {
            this.§]P§ = param1.type;
            this.§#1§.addEventListener(Event.COMPLETE,this.§2!9§);
            this.§#1§.start(param1);
            this.onTransitionStart(this.§]P§);
            if(this.§6!c§)
            {
               this.§6!c§.addEventListener(§^!!§.§&o§,this.§!" §);
            }
         }
      }
      
      protected function §6!8§() : void
      {
         if(this.§#1§)
         {
            this.§#1§.removeEventListener(Event.COMPLETE,this.§2!9§);
            this.§#1§.stop();
         }
         this.§]P§ = §2B§.§0!&§;
         if(this.§6!c§)
         {
            this.§6!c§.removeEventListener(§^!!§.§&o§,this.§!" §);
         }
      }
      
      protected function § !m§(param1:§2B§, param2:Boolean = false) : void
      {
         if(!this.§#1§.§`!m§)
         {
            this.§[!y§(param1);
            return;
         }
         this.§8!!§ = param1;
         this.§#1§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§@'§.setVisibility(true);
         if(param1 && this.§#1§)
         {
            this.§[!y§(this.§6c§());
         }
         else
         {
            this.§00§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§2B§ = null;
         if(param1 && this.§#1§)
         {
            _loc3_ = new §2B§();
            _loc3_.startLabel = §7a§.§9h§();
            _loc3_.§'!J§ = §7a§.§=A§;
            _loc3_.§1!p§ = §7a§.§5z§;
            _loc3_.type = §2B§.§-!S§;
            _loc3_.stageQuality = this.§7%§;
            this.§ !m§(_loc3_,param2);
         }
         else
         {
            this.§6!8§();
            this.§<3§();
         }
      }
      
      protected function §!" §(param1:§^!!§) : void
      {
         if(this.§#1§ && this.§]P§ != §2B§.§0!&§)
         {
            this.§#1§.run(param1.§%!b§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §9;§() : void
      {
         this.dispose();
         dispatchEvent(new §;g§(§;g§.§?C§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
