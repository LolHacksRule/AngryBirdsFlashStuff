package §1!s§
{
   import §!R§.§#!L§;
   import §&!I§.§8!@§;
   import §&!I§.§9!C§;
   import §&"6§.§;G§;
   import §'"&§.§4!2§;
   import §4Y§.§%n§;
   import §7"6§.§?m§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §]'§.§'"+§;
   import §]'§.§5B§;
   import §]'§.§?!?§;
   import §]'§.§]!n§;
   import §`!s§.§3"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §+!y§, §?m§
   {
       
      
      protected var §;"#§:§%n§;
      
      private var §!!g§:MovieClip;
      
      private var §]O§:MovieClip;
      
      protected var §9"-§:XML;
      
      protected var §#!;§:int;
      
      protected var §9P§:int;
      
      protected var §?!j§:String;
      
      protected var §,b§:String = "none";
      
      protected var §4`§:String = "best";
      
      protected var §[!?§:Boolean = true;
      
      protected var §0!Z§:§?!?§;
      
      protected var §^!^§:Vector.<String>;
      
      protected var §=!?§:§'"+§;
      
      protected var §%E§:§^!_§;
      
      protected var §1!!§:§4!2§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§#!;§ = param1;
         this.§9P§ = param2;
         this.§9"-§ = param3 || <xml></xml>;
         this.§?!j§ = param4;
      }
      
      public function get id() : String
      {
         return this.§?!j§;
      }
      
      public function get §0;§() : int
      {
         return this.§#!;§;
      }
      
      public function get priority() : int
      {
         return this.§9P§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§9P§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§0!Z§ && this.§0!Z§.§>+§ && (this.§,b§ == §'"+§.§85§ || this.§,b§ == §'"+§.§+U§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§;"#§.removeEventListener(§9!C§.§;!F§,this.§<!%§);
         this.§`!n§();
         if(this.§0!Z§)
         {
            this.§0!Z§.dispose();
            this.§0!Z§ = null;
         }
         this.§;"#§.clear();
         if(this.§;"#§.mClip && this.§;"#§.mClip.parent && this.§;"#§.mClip.parent == this.§]O§)
         {
            this.§]O§.removeChild(this.§;"#§.mClip);
         }
         if(this.§]O§ && this.§]O§.parent && this.§]O§.parent == this.§!!g§)
         {
            this.§!!g§.removeChild(this.§]O§);
         }
         this.§!!g§ = null;
         this.§;"#§ = null;
         if(this.§%E§)
         {
            this.§%E§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§;"#§.viewHeight = param2;
         this.§;"#§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§^!_§, param3:§4!2§, param4:Boolean = false) : void
      {
         this.§%E§ = param2;
         this.§1!!§ = param3;
         this.initialize(param1);
         this.§9c§();
         this.init();
         this.§]",§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§;"#§)
         {
            this.§;"#§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§!!g§ = param1;
         this.§;"#§ = new §%n§(this.§9"-§,null,null,null);
         this.§;"#§.addEventListener(§9!C§.§;!F§,this.§<!%§);
         this.§;"#§.setVisibility(true);
         this.§;"#§.setActiveStatus(true);
         this.§]O§ = new MovieClip();
         this.§]O§.addChild(this.§;"#§.mClip);
         this.§!!g§.addChild(this.§]O§);
         this.§;"#§.mClip.name = "Container_" + this.§;"#§.mClip.name;
         this.§^!^§ = new Vector.<String>();
      }
      
      protected function §<!%§(param1:§9!C§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§switch§,param1.§7W§,param1.§>j§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §4!@§.§`!w§("close_popup_button_click");
               dispatchEvent(new §;G§(§;G§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§%E§.addLocalizationTarget(this);
      }
      
      protected function §9c§() : void
      {
         this.§^!^§.push(§5B§.§3!=§());
         this.§^!^§.push(§5B§.§@!Z§());
         this.§^!^§.push(§5B§.§5!^§());
         this.§^!^§.push(§5B§.§]o§());
         this.§^!^§.push(§5B§.§&!M§());
         this.§^!^§.push(§5B§.§<Z§);
         this.§^!^§.push(§5B§.§#!2§);
      }
      
      protected function §]",§() : void
      {
         if(this.§;"#§ == null || this.§;"#§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§]O§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §3"&§.§`!i§(_loc1_,this.§^!^§,_loc2_,§3"&§.§4!_§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§`!n§();
         this.§0!Z§ = new §]!n§(param1,this.§;"#§.mClip.stage);
      }
      
      protected function §0!w§() : §'"+§
      {
         return new §'"+§(§5B§.§3!=§(),§5B§.§#!2§,§5B§.§<Z§,§'"+§.§4!k§,this.§[!?§,this.§4`§);
      }
      
      protected function §6!-§() : §'"+§
      {
         var _loc1_:§'"+§ = new §'"+§();
         _loc1_.§%§ = §5B§.§#!2§;
         _loc1_.§9!M§ = §5B§.§<Z§;
         _loc1_.startLabel = §5B§.§]o§();
         _loc1_.type = §'"+§.§85§;
         _loc1_.stageQuality = this.§4`§;
         return _loc1_;
      }
      
      private function §8c§(param1:Event) : void
      {
         switch(this.§,b§)
         {
            case §'"+§.§4!k§:
               this.§%!#§();
               break;
            case §'"+§.§85§:
               this.§@!M§();
               break;
            case §'"+§.§+U§:
               this.§#"8§();
         }
      }
      
      protected function §@!M§() : void
      {
         var _loc1_:String = this.§,b§;
         this.§`!n§();
         this.onTransitionComplete(_loc1_);
         this.§[!P§(this.§0!w§());
      }
      
      protected function §%!#§() : void
      {
         this.onTransitionComplete(this.§,b§);
         if(this.§=!?§)
         {
            this.§[!P§(this.§=!?§);
            this.§=!?§ = null;
         }
      }
      
      protected function §#"8§() : void
      {
         this.§`!n§();
         this.onTransitionComplete(this.§,b§);
         this.§;"#§.setVisibility(false);
         this.§'!Z§();
      }
      
      protected function §[!P§(param1:§'"+§) : void
      {
         this.§`!n§();
         if(this.§0!Z§ && param1.type != §'"+§.§49§)
         {
            this.§,b§ = param1.type;
            this.§0!Z§.addEventListener(Event.COMPLETE,this.§8c§);
            this.§0!Z§.start(param1);
            this.onTransitionStart(this.§,b§);
            if(this.§1!!§)
            {
               this.§1!!§.addEventListener(§8!@§.§-!P§,this.runTransition);
            }
         }
      }
      
      protected function §`!n§() : void
      {
         if(this.§0!Z§)
         {
            this.§0!Z§.removeEventListener(Event.COMPLETE,this.§8c§);
            this.§0!Z§.stop();
         }
         this.§,b§ = §'"+§.§49§;
         if(this.§1!!§)
         {
            this.§1!!§.removeEventListener(§8!@§.§-!P§,this.runTransition);
         }
      }
      
      protected function §&E§(param1:§'"+§, param2:Boolean = false) : void
      {
         if(!this.§0!Z§.§>+§)
         {
            this.§[!P§(param1);
            return;
         }
         this.§=!?§ = param1;
         this.§0!Z§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§;"#§.setVisibility(true);
         if(param1 && this.§0!Z§)
         {
            this.§[!P§(this.§6!-§());
         }
         else
         {
            this.§@!M§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§'"+§ = null;
         if(param1 && this.§0!Z§)
         {
            _loc3_ = new §'"+§();
            _loc3_.startLabel = §5B§.§&!M§();
            _loc3_.§%§ = §5B§.§#!2§;
            _loc3_.§9!M§ = §5B§.§<Z§;
            _loc3_.type = §'"+§.§+U§;
            _loc3_.stageQuality = this.§4`§;
            this.§&E§(_loc3_,param2);
         }
         else
         {
            this.§`!n§();
            this.§#"8§();
         }
      }
      
      protected function runTransition(param1:§8!@§) : void
      {
         if(this.§0!Z§ && this.§,b§ != §'"+§.§49§)
         {
            this.§0!Z§.run(param1.§^!'§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §'!Z§() : void
      {
         this.dispose();
         dispatchEvent(new §;G§(§;G§.§6"3§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
