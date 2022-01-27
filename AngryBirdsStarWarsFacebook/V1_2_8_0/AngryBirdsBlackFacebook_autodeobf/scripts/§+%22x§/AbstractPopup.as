package §+"x§
{
   import §&!j§.§5#+§;
   import §&!j§.§6"v§;
   import §'"I§.§1-§;
   import §'"I§.§5"0§;
   import §'"I§.§9"t§;
   import §'"I§.§>!t§;
   import §+d§.§"![§;
   import §7!n§.§>"H§;
   import §8!h§.§-V§;
   import §9&§.§]!`§;
   import §=!4§.§7!@§;
   import §=!4§.§8"U§;
   import §=Z§.§@!8§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §3!§, §6"v§
   {
       
      
      protected var §[#,§:§@!8§;
      
      private var §3!m§:MovieClip;
      
      private var §-!v§:MovieClip;
      
      protected var §+3§:XML;
      
      protected var §%"0§:int;
      
      protected var §0!E§:int;
      
      protected var §]!R§:String;
      
      protected var §,"-§:String = "none";
      
      protected var §^"Z§:String = "best";
      
      protected var §9"o§:Boolean = true;
      
      protected var §[#§:§9"t§;
      
      protected var §%#,§:Vector.<String>;
      
      protected var §;!]§:§1-§;
      
      protected var §-1§:§5#+§;
      
      protected var §4!i§:§]!`§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§%"0§ = param1;
         this.§0!E§ = param2;
         this.§+3§ = param3 || <xml></xml>;
         this.§]!R§ = param4;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function get §0D§() : int
      {
         return this.§%"0§;
      }
      
      public function get priority() : int
      {
         return this.§0!E§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§0!E§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§[#§ && this.§[#§.isRunning && (this.§,"-§ == §1-§.§?j§ || this.§,"-§ == §1-§.§<§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§[#,§.removeEventListener(§8"U§.§`n§,this.uIInteractionHandler);
         this.§^!A§();
         if(this.§[#§)
         {
            this.§[#§.dispose();
            this.§[#§ = null;
         }
         this.§[#,§.clear();
         if(this.§[#,§.mClip && this.§[#,§.mClip.parent && this.§[#,§.mClip.parent == this.§-!v§)
         {
            this.§-!v§.removeChild(this.§[#,§.mClip);
         }
         if(this.§-!v§ && this.§-!v§.parent && this.§-!v§.parent == this.§3!m§)
         {
            this.§3!m§.removeChild(this.§-!v§);
         }
         this.§3!m§ = null;
         this.§[#,§ = null;
         if(this.§-1§)
         {
            this.§-1§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§[#,§.viewHeight = param2;
         this.§[#,§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§5#+§, param3:§]!`§, param4:Boolean = false) : void
      {
         this.§-1§ = param2;
         this.§4!i§ = param3;
         this.initialize(param1);
         this.createTransitionLabels();
         this.init();
         this.§+#"§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§[#,§)
         {
            this.§[#,§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§3!m§ = param1;
         this.§[#,§ = new §@!8§(this.§+3§,null,null,null);
         this.§[#,§.addEventListener(§8"U§.§`n§,this.uIInteractionHandler);
         this.§[#,§.setVisibility(true);
         this.§[#,§.setActiveStatus(true);
         this.§-!v§ = new MovieClip();
         this.§-!v§.addChild(this.§[#,§.mClip);
         this.§3!m§.addChild(this.§-!v§);
         this.§[#,§.mClip.name = "Container_" + this.§[#,§.mClip.name;
         this.§%#,§ = new Vector.<String>();
      }
      
      protected function uIInteractionHandler(param1:§8"U§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§;#6§,param1.§5!u§,param1.§7!k§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §=Q§.§`!A§("close_popup_button_click");
               dispatchEvent(new §>"H§(§>"H§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§-1§.addLocalizationTarget(this);
      }
      
      protected function createTransitionLabels() : void
      {
         this.§%#,§.push(§>!t§.§,"x§());
         this.§%#,§.push(§>!t§.§3O§());
         this.§%#,§.push(§>!t§.§-!,§());
         this.§%#,§.push(§>!t§.§4#&§());
         this.§%#,§.push(§>!t§.§#!e§());
         this.§%#,§.push(§>!t§.§%M§);
         this.§%#,§.push(§>!t§.§?>§);
      }
      
      protected function §+#"§() : void
      {
         if(this.§[#,§ == null || this.§[#,§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§-!v§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §"![§.§#-§(_loc1_,this.§%#,§,_loc2_,§"![§.§]w§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§^!A§();
         this.§[#§ = new §5"0§(param1,this.§[#,§.mClip.stage);
      }
      
      protected function getRunTransitionData() : §1-§
      {
         return new §1-§(§>!t§.§,"x§(),§>!t§.§?>§,§>!t§.§%M§,§1-§.§!o§,this.§9"o§,this.§^"Z§);
      }
      
      protected function getTransitionInData() : §1-§
      {
         var _loc1_:§1-§ = new §1-§();
         _loc1_.§ try§ = §>!t§.§?>§;
         _loc1_.§@"D§ = §>!t§.§%M§;
         _loc1_.startLabel = §>!t§.§4#&§();
         _loc1_.type = §1-§.§?j§;
         _loc1_.stageQuality = this.§^"Z§;
         return _loc1_;
      }
      
      private function §""s§(param1:Event) : void
      {
         switch(this.§,"-§)
         {
            case §1-§.§!o§:
               this.§["T§();
               break;
            case §1-§.§?j§:
               this.onTransitionInComplete();
               break;
            case §1-§.§<§:
               this.onTransitionOutComplete();
         }
      }
      
      protected function onTransitionInComplete() : void
      {
         var _loc1_:String = this.§,"-§;
         this.§^!A§();
         this.onTransitionComplete(_loc1_);
         this.§'U§(this.getRunTransitionData());
      }
      
      protected function §["T§() : void
      {
         this.onTransitionComplete(this.§,"-§);
         if(this.§;!]§)
         {
            this.§'U§(this.§;!]§);
            this.§;!]§ = null;
         }
      }
      
      protected function onTransitionOutComplete() : void
      {
         this.§^!A§();
         this.onTransitionComplete(this.§,"-§);
         this.§[#,§.setVisibility(false);
         this.§=A§();
      }
      
      protected function §'U§(param1:§1-§) : void
      {
         this.§^!A§();
         if(this.§[#§ && param1.type != §1-§.§@B§)
         {
            this.§,"-§ = param1.type;
            this.§[#§.addEventListener(Event.COMPLETE,this.§""s§);
            this.§[#§.start(param1);
            this.onTransitionStart(this.§,"-§);
            if(this.§4!i§)
            {
               this.§4!i§.addEventListener(§7!@§.§6,§,this.runTransition);
            }
         }
      }
      
      protected function §^!A§() : void
      {
         if(this.§[#§)
         {
            this.§[#§.removeEventListener(Event.COMPLETE,this.§""s§);
            this.§[#§.stop();
         }
         this.§,"-§ = §1-§.§@B§;
         if(this.§4!i§)
         {
            this.§4!i§.removeEventListener(§7!@§.§6,§,this.runTransition);
         }
      }
      
      protected function §"R§(param1:§1-§, param2:Boolean = false) : void
      {
         if(!this.§[#§.isRunning)
         {
            this.§'U§(param1);
            return;
         }
         this.§;!]§ = param1;
         this.§[#§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§[#,§.setVisibility(true);
         if(param1 && this.§[#§)
         {
            this.§'U§(this.getTransitionInData());
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§1-§ = null;
         if(param1 && this.§[#§)
         {
            _loc3_ = new §1-§();
            _loc3_.startLabel = §>!t§.§#!e§();
            _loc3_.§ try§ = §>!t§.§?>§;
            _loc3_.§@"D§ = §>!t§.§%M§;
            _loc3_.type = §1-§.§<§;
            _loc3_.stageQuality = this.§^"Z§;
            this.§"R§(_loc3_,param2);
         }
         else
         {
            this.§^!A§();
            this.onTransitionOutComplete();
         }
      }
      
      protected function runTransition(param1:§7!@§) : void
      {
         if(this.§[#§ && this.§,"-§ != §1-§.§@B§)
         {
            this.§[#§.run(param1.§0"q§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §=A§() : void
      {
         this.dispose();
         dispatchEvent(new §>"H§(§>"H§.§6t§,this));
      }
      
      public function §^"u§() : void
      {
      }
   }
}
