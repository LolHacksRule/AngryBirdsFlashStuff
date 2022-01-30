package §5u§
{
   import § ,§.§ !F§;
   import § ,§.§>u§;
   import §&<§.§^!#§;
   import §0K§.§#-§;
   import §0K§.§&"§;
   import §0K§.§3w§;
   import §0K§.§7!J§;
   import §2W§.§1!6§;
   import §3"!§.§&U§;
   import §6!^§.§1!7§;
   import §8,§.§8!h§;
   import §8,§.§?J§;
   import §@!6§.§3!5§;
   import §[!F§.§3j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §<!k§, § !F§
   {
       
      
      protected var §[!<§:§3j§;
      
      private var §,8§:MovieClip;
      
      private var §4y§:MovieClip;
      
      protected var §]"+§:XML;
      
      protected var §&D§:int;
      
      protected var §1!S§:int;
      
      protected var §,p§:String;
      
      protected var §2!Z§:String = "none";
      
      protected var §+",§:String = "best";
      
      protected var §8!0§:Boolean = true;
      
      protected var §`!?§:§7!J§;
      
      protected var §0!F§:Vector.<String>;
      
      protected var §5F§:§&"§;
      
      protected var §2e§:§>u§;
      
      protected var §&X§:§1!7§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§&D§ = param1;
         this.§1!S§ = param2;
         this.§]"+§ = param3 || <xml></xml>;
         this.§,p§ = param4;
      }
      
      public function get id() : String
      {
         return this.§,p§;
      }
      
      public function get §`'§() : int
      {
         return this.§&D§;
      }
      
      public function get priority() : int
      {
         return this.§1!S§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§1!S§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§`!?§ && this.§`!?§.§"Z§ && (this.§2!Z§ == §&"§.§0!S§ || this.§2!Z§ == §&"§.§<_§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§[!<§.removeEventListener(§8!h§.§>2§,this.§'!<§);
         this.§;Q§();
         if(this.§`!?§)
         {
            this.§`!?§.dispose();
            this.§`!?§ = null;
         }
         this.§[!<§.clear();
         if(this.§[!<§.mClip && this.§[!<§.mClip.parent && this.§[!<§.mClip.parent == this.§4y§)
         {
            this.§4y§.removeChild(this.§[!<§.mClip);
         }
         if(this.§4y§ && this.§4y§.parent && this.§4y§.parent == this.§,8§)
         {
            this.§,8§.removeChild(this.§4y§);
         }
         this.§,8§ = null;
         this.§[!<§ = null;
         if(this.§2e§)
         {
            this.§2e§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§[!<§.viewHeight = param2;
         this.§[!<§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§>u§, param3:§1!7§, param4:Boolean = false) : void
      {
         this.§2e§ = param2;
         this.§&X§ = param3;
         this.initialize(param1);
         this.§5-§();
         this.init();
         this.§#" §();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§[!<§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§,8§ = param1;
         this.§[!<§ = new §3j§(this.§]"+§,null,null,null);
         this.§[!<§.addEventListener(§8!h§.§>2§,this.§'!<§);
         this.§[!<§.setVisibility(true);
         this.§[!<§.setActiveStatus(true);
         this.§4y§ = new MovieClip();
         this.§4y§.addChild(this.§[!<§.mClip);
         this.§,8§.addChild(this.§4y§);
         this.§[!<§.mClip.name = "Container_" + this.§[!<§.mClip.name;
         this.§0!F§ = new Vector.<String>();
      }
      
      protected function §'!<§(param1:§8!h§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§ Y§,param1.§[!X§,param1.§ H§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §3!5§.§<!9§("close_popup_button_click");
               dispatchEvent(new §&U§(§&U§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§2e§.addLocalizationTarget(this);
      }
      
      protected function §5-§() : void
      {
         this.§0!F§.push(§3w§.§ if§());
         this.§0!F§.push(§3w§.§!1§());
         this.§0!F§.push(§3w§.§@!n§());
         this.§0!F§.push(§3w§.§&!`§());
         this.§0!F§.push(§3w§.§2r§());
         this.§0!F§.push(§3w§.§]L§);
         this.§0!F§.push(§3w§.§;"0§);
      }
      
      protected function §#" §() : void
      {
         if(this.§[!<§ == null || this.§[!<§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§4y§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §1!6§.§?7§(_loc1_,this.§0!F§,_loc2_,§1!6§.§"1§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§;Q§();
         this.§`!?§ = new §#-§(param1,this.§[!<§.mClip.stage);
      }
      
      protected function §?§() : §&"§
      {
         return new §&"§(§3w§.§ if§(),§3w§.§;"0§,§3w§.§]L§,§&"§.§-"$§,this.§8!0§,this.§+",§);
      }
      
      protected function §!!e§() : §&"§
      {
         var _loc1_:§&"§ = new §&"§();
         _loc1_.§,!%§ = §3w§.§;"0§;
         _loc1_.§<b§ = §3w§.§]L§;
         _loc1_.startLabel = §3w§.§&!`§();
         _loc1_.type = §&"§.§0!S§;
         _loc1_.stageQuality = this.§+",§;
         return _loc1_;
      }
      
      private function §%-§(param1:Event) : void
      {
         switch(this.§2!Z§)
         {
            case §&"§.§-"$§:
               this.§1a§();
               break;
            case §&"§.§0!S§:
               this.§-!m§();
               break;
            case §&"§.§<_§:
               this.§3!Q§();
         }
      }
      
      protected function §-!m§() : void
      {
         var _loc1_:String = this.§2!Z§;
         this.§;Q§();
         this.onTransitionComplete(_loc1_);
         this.§%§(this.§?§());
      }
      
      protected function §1a§() : void
      {
         this.onTransitionComplete(this.§2!Z§);
         if(this.§5F§)
         {
            this.§%§(this.§5F§);
            this.§5F§ = null;
         }
      }
      
      protected function §3!Q§() : void
      {
         this.§;Q§();
         this.onTransitionComplete(this.§2!Z§);
         this.§[!<§.setVisibility(false);
         this.§ try§();
      }
      
      protected function §%§(param1:§&"§) : void
      {
         this.§;Q§();
         if(this.§`!?§ && param1.type != §&"§.§-!j§)
         {
            this.§2!Z§ = param1.type;
            this.§`!?§.addEventListener(Event.COMPLETE,this.§%-§);
            this.§`!?§.start(param1);
            this.onTransitionStart(this.§2!Z§);
            if(this.§&X§)
            {
               this.§&X§.addEventListener(§?J§.§0H§,this.runTransition);
            }
         }
      }
      
      protected function §;Q§() : void
      {
         if(this.§`!?§)
         {
            this.§`!?§.removeEventListener(Event.COMPLETE,this.§%-§);
            this.§`!?§.stop();
         }
         this.§2!Z§ = §&"§.§-!j§;
         if(this.§&X§)
         {
            this.§&X§.removeEventListener(§?J§.§0H§,this.runTransition);
         }
      }
      
      protected function §with§(param1:§&"§, param2:Boolean = false) : void
      {
         if(!this.§`!?§.§"Z§)
         {
            this.§%§(param1);
            return;
         }
         this.§5F§ = param1;
         this.§`!?§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§[!<§.setVisibility(true);
         if(param1 && this.§`!?§)
         {
            this.§%§(this.§!!e§());
         }
         else
         {
            this.§-!m§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§&"§ = null;
         if(param1 && this.§`!?§)
         {
            _loc3_ = new §&"§();
            _loc3_.startLabel = §3w§.§2r§();
            _loc3_.§,!%§ = §3w§.§;"0§;
            _loc3_.§<b§ = §3w§.§]L§;
            _loc3_.type = §&"§.§<_§;
            _loc3_.stageQuality = this.§+",§;
            this.§with§(_loc3_,param2);
         }
         else
         {
            this.§;Q§();
            this.§3!Q§();
         }
      }
      
      protected function runTransition(param1:§?J§) : void
      {
         if(this.§`!?§ && this.§2!Z§ != §&"§.§-!j§)
         {
            this.§`!?§.run(param1.§"!g§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function § try§() : void
      {
         this.dispose();
         dispatchEvent(new §&U§(§&U§.§5e§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
