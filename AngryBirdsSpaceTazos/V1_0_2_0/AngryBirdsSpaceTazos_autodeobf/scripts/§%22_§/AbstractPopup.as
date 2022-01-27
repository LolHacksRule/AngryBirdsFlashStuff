package §"_§
{
   import §!i§.§1s§;
   import §"!>§.§,"§;
   import §"!>§.§<!o§;
   import §%"7§.§+"C§;
   import §'#§.§;!!§;
   import §4!t§.§95§;
   import §9!G§.§"!S§;
   import §;!,§.§"q§;
   import §<!#§.§""§;
   import §<!#§.§3"%§;
   import §@"D§.§#d§;
   import §@"D§.§,!l§;
   import §@"D§.§5"E§;
   import §@"D§.§]"8§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §0"1§, §,"§
   {
       
      
      protected var §&#§:§1s§;
      
      private var §3!C§:MovieClip;
      
      private var §=!O§:MovieClip;
      
      protected var §`!F§:XML;
      
      protected var §%u§:int;
      
      protected var §;l§:int;
      
      protected var §1!q§:String;
      
      protected var §0"D§:String = "none";
      
      protected var §'!E§:String = "best";
      
      protected var §@"1§:Boolean = true;
      
      protected var §,"4§:§]"8§;
      
      protected var §7"7§:Vector.<String>;
      
      protected var §@e§:§#d§;
      
      protected var §4!T§:§<!o§;
      
      protected var §+!#§:§"q§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§%u§ = param1;
         this.§;l§ = param2;
         this.§`!F§ = param3 || <xml></xml>;
         this.§1!q§ = param4;
      }
      
      public function get id() : String
      {
         return this.§1!q§;
      }
      
      public function get § !o§() : int
      {
         return this.§%u§;
      }
      
      public function get priority() : int
      {
         return this.§;l§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§;l§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§,"4§ && this.§,"4§.§?"E§ && (this.§0"D§ == §#d§.§>@§ || this.§0"D§ == §#d§.§5"D§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§&#§.removeEventListener(§""§.§#!J§,this.§1T§);
         this.§5!^§();
         if(this.§,"4§)
         {
            this.§,"4§.dispose();
            this.§,"4§ = null;
         }
         this.§&#§.clear();
         if(this.§&#§.mClip && this.§&#§.mClip.parent && this.§&#§.mClip.parent == this.§=!O§)
         {
            this.§=!O§.removeChild(this.§&#§.mClip);
         }
         if(this.§=!O§ && this.§=!O§.parent && this.§=!O§.parent == this.§3!C§)
         {
            this.§3!C§.removeChild(this.§=!O§);
         }
         this.§3!C§ = null;
         this.§&#§ = null;
         if(this.§4!T§)
         {
            this.§4!T§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§&#§.viewHeight = param2;
         this.§&#§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§<!o§, param3:§"q§, param4:Boolean = false) : void
      {
         this.§4!T§ = param2;
         this.§+!#§ = param3;
         this.initialize(param1);
         this.§]!d§();
         this.init();
         this.§>!Y§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§&#§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§3!C§ = param1;
         this.§&#§ = new §1s§(this.§`!F§,null,null,null);
         this.§&#§.addEventListener(§""§.§#!J§,this.§1T§);
         this.§&#§.setVisibility(true);
         this.§&#§.setActiveStatus(true);
         this.§=!O§ = new MovieClip();
         this.§=!O§.addChild(this.§&#§.mClip);
         this.§3!C§.addChild(this.§=!O§);
         this.§&#§.mClip.name = "Container_" + this.§&#§.mClip.name;
         this.§7"7§ = new Vector.<String>();
      }
      
      protected function §1T§(param1:§""§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§5!"§,param1.§-!<§,param1.§9!y§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §"!S§.playSound("close_popup_button_click");
               dispatchEvent(new §+"C§(§+"C§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§4!T§.addLocalizationTarget(this);
      }
      
      protected function §]!d§() : void
      {
         this.§7"7§.push(§5"E§.§8k§());
         this.§7"7§.push(§5"E§.§4c§());
         this.§7"7§.push(§5"E§.§6"8§());
         this.§7"7§.push(§5"E§.§0p§());
         this.§7"7§.push(§5"E§.§4H§());
         this.§7"7§.push(§5"E§.§+!v§);
         this.§7"7§.push(§5"E§.§ L§);
      }
      
      protected function §>!Y§() : void
      {
         if(this.§&#§ == null || this.§&#§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§=!O§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §;!!§.§<"§(_loc1_,this.§7"7§,_loc2_,§;!!§.§^!a§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§5!^§();
         this.§,"4§ = new §,!l§(param1,this.§&#§.mClip.stage);
      }
      
      protected function §0$§() : §#d§
      {
         return new §#d§(§5"E§.§8k§(),§5"E§.§ L§,§5"E§.§+!v§,§#d§.§#!y§,this.§@"1§,this.§'!E§);
      }
      
      protected function §;!o§() : §#d§
      {
         var _loc1_:§#d§ = new §#d§();
         _loc1_.§@">§ = §5"E§.§ L§;
         _loc1_.§7!f§ = §5"E§.§+!v§;
         _loc1_.startLabel = §5"E§.§0p§();
         _loc1_.type = §#d§.§>@§;
         _loc1_.stageQuality = this.§'!E§;
         return _loc1_;
      }
      
      private function §`!"§(param1:Event) : void
      {
         switch(this.§0"D§)
         {
            case §#d§.§#!y§:
               this.§6!D§();
               break;
            case §#d§.§>@§:
               this.§%[§();
               break;
            case §#d§.§5"D§:
               this.§7! §();
         }
      }
      
      protected function §%[§() : void
      {
         var _loc1_:String = this.§0"D§;
         this.§5!^§();
         this.onTransitionComplete(_loc1_);
         this.§2!§(this.§0$§());
      }
      
      protected function §6!D§() : void
      {
         this.onTransitionComplete(this.§0"D§);
         if(this.§@e§)
         {
            this.§2!§(this.§@e§);
            this.§@e§ = null;
         }
      }
      
      protected function §7! §() : void
      {
         this.§5!^§();
         this.onTransitionComplete(this.§0"D§);
         this.§&#§.setVisibility(false);
         this.§5O§();
      }
      
      protected function §2!§(param1:§#d§) : void
      {
         this.§5!^§();
         if(this.§,"4§ && param1.type != §#d§.§'C§)
         {
            this.§0"D§ = param1.type;
            this.§,"4§.addEventListener(Event.COMPLETE,this.§`!"§);
            this.§,"4§.start(param1,true);
            this.onTransitionStart(this.§0"D§);
            if(this.§+!#§)
            {
               this.§+!#§.addEventListener(§3"%§.§9!w§,this.runTransition);
            }
         }
      }
      
      protected function §5!^§() : void
      {
         if(this.§,"4§)
         {
            this.§,"4§.removeEventListener(Event.COMPLETE,this.§`!"§);
            this.§,"4§.stop();
         }
         this.§0"D§ = §#d§.§'C§;
         if(this.§+!#§)
         {
            this.§+!#§.removeEventListener(§3"%§.§9!w§,this.runTransition);
         }
      }
      
      protected function §%m§(param1:§#d§, param2:Boolean = false) : void
      {
         if(!this.§,"4§.§?"E§)
         {
            this.§2!§(param1);
            return;
         }
         this.§@e§ = param1;
         this.§,"4§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§&#§.setVisibility(true);
         if(param1 && this.§,"4§)
         {
            this.§2!§(this.§;!o§());
         }
         else
         {
            this.§%[§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§#d§ = null;
         if(param1 && this.§,"4§)
         {
            _loc3_ = new §#d§();
            _loc3_.startLabel = §5"E§.§4H§();
            _loc3_.§@">§ = §5"E§.§ L§;
            _loc3_.§7!f§ = §5"E§.§+!v§;
            _loc3_.type = §#d§.§5"D§;
            _loc3_.stageQuality = this.§'!E§;
            this.§%m§(_loc3_,param2);
         }
         else
         {
            this.§5!^§();
            this.§7! §();
         }
      }
      
      protected function runTransition(param1:§3"%§) : void
      {
         if(this.§,"4§ && this.§0"D§ != §#d§.§'C§)
         {
            this.§,"4§.run(param1.§ !F§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §5O§() : void
      {
         this.dispose();
         dispatchEvent(new §+"C§(§+"C§.§6D§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
