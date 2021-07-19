package §1!i§
{
   import §!""§.§1=§;
   import §!""§.§]H§;
   import §'"!§.§+§;
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §,M§.§0V§;
   import §2u§.§,6§;
   import §4!i§.§+![§;
   import §8]§.§7O§;
   import §@3§.§0!'§;
   import §@3§.§7g§;
   import §@3§.§9L§;
   import §@3§.§]K§;
   import §[!Z§.§>D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §?!a§, §0V§
   {
       
      
      protected var §29§:§,6§;
      
      private var §!o§:MovieClip;
      
      private var §="%§:MovieClip;
      
      protected var §7!?§:XML;
      
      protected var §#W§:int;
      
      protected var §1&§:int;
      
      protected var §?0§:String;
      
      protected var §,!f§:String = "none";
      
      protected var §]!`§:String = "best";
      
      protected var §@^§:Boolean = true;
      
      protected var §@"+§:§7g§;
      
      protected var §8!-§:Vector.<String>;
      
      protected var §2K§:§]K§;
      
      protected var §8&§:§+f§;
      
      protected var §-p§:§5O§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§#W§ = param1;
         this.§1&§ = param2;
         this.§7!?§ = param3 || <xml></xml>;
         this.§?0§ = param4;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function get §,!1§() : int
      {
         return this.§#W§;
      }
      
      public function get priority() : int
      {
         return this.§1&§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§1&§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§@"+§ && this.§@"+§.§&J§ && (this.§,!f§ == §]K§.§%x§ || this.§,!f§ == §]K§.§1o§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§29§.removeEventListener(§]H§.§59§,this.§2"3§);
         this.§ !D§();
         if(this.§@"+§)
         {
            this.§@"+§.dispose();
            this.§@"+§ = null;
         }
         this.§29§.clear();
         if(this.§29§.mClip && this.§29§.mClip.parent && this.§29§.mClip.parent == this.§="%§)
         {
            this.§="%§.removeChild(this.§29§.mClip);
         }
         if(this.§="%§ && this.§="%§.parent && this.§="%§.parent == this.§!o§)
         {
            this.§!o§.removeChild(this.§="%§);
         }
         this.§!o§ = null;
         this.§29§ = null;
         if(this.§8&§)
         {
            this.§8&§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§29§.viewHeight = param2;
         this.§29§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§+f§, param3:§5O§, param4:Boolean = false) : void
      {
         this.§8&§ = param2;
         this.§-p§ = param3;
         this.initialize(param1);
         this.§5!=§();
         this.init();
         this.§?!0§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§29§)
         {
            this.§29§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§!o§ = param1;
         this.§29§ = new §,6§(this.§7!?§,null,null,null);
         this.§29§.addEventListener(§]H§.§59§,this.§2"3§);
         this.§29§.setVisibility(true);
         this.§29§.setActiveStatus(true);
         this.§="%§ = new MovieClip();
         this.§="%§.addChild(this.§29§.mClip);
         this.§!o§.addChild(this.§="%§);
         this.§29§.mClip.name = "Container_" + this.§29§.mClip.name;
         this.§8!-§ = new Vector.<String>();
      }
      
      protected function §2"3§(param1:§]H§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§66§,param1.§4o§,param1.§&!m§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §>D§.§9!q§("close_popup_button_click");
               dispatchEvent(new §7O§(§7O§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§8&§.addLocalizationTarget(this);
      }
      
      protected function §5!=§() : void
      {
         this.§8!-§.push(§0!'§.§=N§());
         this.§8!-§.push(§0!'§.§^I§());
         this.§8!-§.push(§0!'§.§7!n§());
         this.§8!-§.push(§0!'§.§-!h§());
         this.§8!-§.push(§0!'§.§4!>§());
         this.§8!-§.push(§0!'§.§1"0§);
         this.§8!-§.push(§0!'§.§8J§);
      }
      
      protected function §?!0§() : void
      {
         if(this.§29§ == null || this.§29§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§="%§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §+![§.§ !N§(_loc1_,this.§8!-§,_loc2_,§+![§.§,"4§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§ !D§();
         this.§@"+§ = new §9L§(param1,this.§29§.mClip.stage);
      }
      
      protected function §+!Z§() : §]K§
      {
         return new §]K§(§0!'§.§=N§(),§0!'§.§8J§,§0!'§.§1"0§,§]K§.§=@§,this.§@^§,this.§]!`§);
      }
      
      protected function §-2§() : §]K§
      {
         var _loc1_:§]K§ = new §]K§();
         _loc1_.§7!r§ = §0!'§.§8J§;
         _loc1_.§1Q§ = §0!'§.§1"0§;
         _loc1_.startLabel = §0!'§.§-!h§();
         _loc1_.type = §]K§.§%x§;
         _loc1_.stageQuality = this.§]!`§;
         return _loc1_;
      }
      
      private function §;'§(param1:Event) : void
      {
         switch(this.§,!f§)
         {
            case §]K§.§=@§:
               this.§]!g§();
               break;
            case §]K§.§%x§:
               this.§2W§();
               break;
            case §]K§.§1o§:
               this.§4!p§();
         }
      }
      
      protected function §2W§() : void
      {
         var _loc1_:String = this.§,!f§;
         this.§ !D§();
         this.onTransitionComplete(_loc1_);
         this.§use §(this.§+!Z§());
      }
      
      protected function §]!g§() : void
      {
         this.onTransitionComplete(this.§,!f§);
         if(this.§2K§)
         {
            this.§use §(this.§2K§);
            this.§2K§ = null;
         }
      }
      
      protected function §4!p§() : void
      {
         this.§ !D§();
         this.onTransitionComplete(this.§,!f§);
         this.§29§.setVisibility(false);
         this.§`!Z§();
      }
      
      protected function §use §(param1:§]K§) : void
      {
         this.§ !D§();
         if(this.§@"+§ && param1.type != §]K§.§,"3§)
         {
            this.§,!f§ = param1.type;
            this.§@"+§.addEventListener(Event.COMPLETE,this.§;'§);
            this.§@"+§.start(param1);
            this.onTransitionStart(this.§,!f§);
            if(this.§-p§)
            {
               this.§-p§.addEventListener(§1=§.§]!l§,this.runTransition);
            }
         }
      }
      
      protected function § !D§() : void
      {
         if(this.§@"+§)
         {
            this.§@"+§.removeEventListener(Event.COMPLETE,this.§;'§);
            this.§@"+§.stop();
         }
         this.§,!f§ = §]K§.§,"3§;
         if(this.§-p§)
         {
            this.§-p§.removeEventListener(§1=§.§]!l§,this.runTransition);
         }
      }
      
      protected function §%!o§(param1:§]K§, param2:Boolean = false) : void
      {
         if(!this.§@"+§.§&J§)
         {
            this.§use §(param1);
            return;
         }
         this.§2K§ = param1;
         this.§@"+§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§29§.setVisibility(true);
         if(param1 && this.§@"+§)
         {
            this.§use §(this.§-2§());
         }
         else
         {
            this.§2W§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§]K§ = null;
         if(param1 && this.§@"+§)
         {
            _loc3_ = new §]K§();
            _loc3_.startLabel = §0!'§.§4!>§();
            _loc3_.§7!r§ = §0!'§.§8J§;
            _loc3_.§1Q§ = §0!'§.§1"0§;
            _loc3_.type = §]K§.§1o§;
            _loc3_.stageQuality = this.§]!`§;
            this.§%!o§(_loc3_,param2);
         }
         else
         {
            this.§ !D§();
            this.§4!p§();
         }
      }
      
      protected function runTransition(param1:§1=§) : void
      {
         if(this.§@"+§ && this.§,!f§ != §]K§.§,"3§)
         {
            this.§@"+§.run(param1.§>"1§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §`!Z§() : void
      {
         this.dispose();
         dispatchEvent(new §7O§(§7O§.§&G§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
