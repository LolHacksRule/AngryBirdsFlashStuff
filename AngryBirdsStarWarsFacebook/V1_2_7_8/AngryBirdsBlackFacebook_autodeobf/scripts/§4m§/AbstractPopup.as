package §4m§
{
   import §""d§.§,m§;
   import §#!k§.§4!4§;
   import §#!k§.§`L§;
   import §#<§.§8!j§;
   import §'+§.§+!9§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §1G§.§8!a§;
   import §4##§.§7!B§;
   import §7!@§.§""s§;
   import §7!@§.§,"R§;
   import §7!@§.§6"§;
   import §7!@§.§[`§;
   import §7A§.§""n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §5!R§, §+!9§
   {
       
      
      protected var §,r§:§,m§;
      
      private var §=5§:MovieClip;
      
      private var §@"E§:MovieClip;
      
      protected var §,6§:XML;
      
      protected var §5S§:int;
      
      protected var §^F§:int;
      
      protected var §[7§:String;
      
      protected var §#"f§:String = "none";
      
      protected var §?m§:String = "best";
      
      protected var §,!7§:Boolean = true;
      
      protected var §,_§:§,"R§;
      
      protected var §3$§:Vector.<String>;
      
      protected var §<7§:§6"§;
      
      protected var §8-§:§="B§;
      
      protected var §[!Y§:§8!a§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§5S§ = param1;
         this.§^F§ = param2;
         this.§,6§ = param3 || <xml></xml>;
         this.§[7§ = param4;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function get §+a§() : int
      {
         return this.§5S§;
      }
      
      public function get priority() : int
      {
         return this.§^F§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§^F§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§,_§ && this.§,_§.isRunning && (this.§#"f§ == §6"§.§,#2§ || this.§#"f§ == §6"§.§9!j§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§,r§.removeEventListener(§4!4§.§="n§,this.uIInteractionHandler);
         this.§=!7§();
         if(this.§,_§)
         {
            this.§,_§.dispose();
            this.§,_§ = null;
         }
         this.§,r§.clear();
         if(this.§,r§.mClip && this.§,r§.mClip.parent && this.§,r§.mClip.parent == this.§@"E§)
         {
            this.§@"E§.removeChild(this.§,r§.mClip);
         }
         if(this.§@"E§ && this.§@"E§.parent && this.§@"E§.parent == this.§=5§)
         {
            this.§=5§.removeChild(this.§@"E§);
         }
         this.§=5§ = null;
         this.§,r§ = null;
         if(this.§8-§)
         {
            this.§8-§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§,r§.viewHeight = param2;
         this.§,r§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§="B§, param3:§8!a§, param4:Boolean = false) : void
      {
         this.§8-§ = param2;
         this.§[!Y§ = param3;
         this.initialize(param1);
         this.createTransitionLabels();
         this.init();
         this.§0!1§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§,r§)
         {
            this.§,r§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§=5§ = param1;
         this.§,r§ = new §,m§(this.§,6§,null,null,null);
         this.§,r§.addEventListener(§4!4§.§="n§,this.uIInteractionHandler);
         this.§,r§.setVisibility(true);
         this.§,r§.setActiveStatus(true);
         this.§@"E§ = new MovieClip();
         this.§@"E§.addChild(this.§,r§.mClip);
         this.§=5§.addChild(this.§@"E§);
         this.§,r§.mClip.name = "Container_" + this.§,r§.mClip.name;
         this.§3$§ = new Vector.<String>();
      }
      
      protected function uIInteractionHandler(param1:§4!4§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§6$§,param1.§84§,param1.§-w§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §@§.§=Y§("close_popup_button_click");
               dispatchEvent(new §8!j§(§8!j§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§8-§.addLocalizationTarget(this);
      }
      
      protected function createTransitionLabels() : void
      {
         this.§3$§.push(§[`§.§]L§());
         this.§3$§.push(§[`§.§1!R§());
         this.§3$§.push(§[`§.§='§());
         this.§3$§.push(§[`§.§%!]§());
         this.§3$§.push(§[`§.§^"f§());
         this.§3$§.push(§[`§.§!Y§);
         this.§3$§.push(§[`§.§-"y§);
      }
      
      protected function §0!1§() : void
      {
         if(this.§,r§ == null || this.§,r§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§@"E§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §""n§.§<"h§(_loc1_,this.§3$§,_loc2_,§""n§.§`!=§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§=!7§();
         this.§,_§ = new §""s§(param1,this.§,r§.mClip.stage);
      }
      
      protected function getRunTransitionData() : §6"§
      {
         return new §6"§(§[`§.§]L§(),§[`§.§-"y§,§[`§.§!Y§,§6"§.§+"n§,this.§,!7§,this.§?m§);
      }
      
      protected function getTransitionInData() : §6"§
      {
         var _loc1_:§6"§ = new §6"§();
         _loc1_.§>"$§ = §[`§.§-"y§;
         _loc1_.§!"X§ = §[`§.§!Y§;
         _loc1_.startLabel = §[`§.§%!]§();
         _loc1_.type = §6"§.§,#2§;
         _loc1_.stageQuality = this.§?m§;
         return _loc1_;
      }
      
      private function §3!w§(param1:Event) : void
      {
         switch(this.§#"f§)
         {
            case §6"§.§+"n§:
               this.§]a§();
               break;
            case §6"§.§,#2§:
               this.onTransitionInComplete();
               break;
            case §6"§.§9!j§:
               this.onTransitionOutComplete();
         }
      }
      
      protected function onTransitionInComplete() : void
      {
         var _loc1_:String = this.§#"f§;
         this.§=!7§();
         this.onTransitionComplete(_loc1_);
         this.§?<§(this.getRunTransitionData());
      }
      
      protected function §]a§() : void
      {
         this.onTransitionComplete(this.§#"f§);
         if(this.§<7§)
         {
            this.§?<§(this.§<7§);
            this.§<7§ = null;
         }
      }
      
      protected function onTransitionOutComplete() : void
      {
         this.§=!7§();
         this.onTransitionComplete(this.§#"f§);
         this.§,r§.setVisibility(false);
         this.§`I§();
      }
      
      protected function §?<§(param1:§6"§) : void
      {
         this.§=!7§();
         if(this.§,_§ && param1.type != §6"§.§5![§)
         {
            this.§#"f§ = param1.type;
            this.§,_§.addEventListener(Event.COMPLETE,this.§3!w§);
            this.§,_§.start(param1);
            this.onTransitionStart(this.§#"f§);
            if(this.§[!Y§)
            {
               this.§[!Y§.addEventListener(§`L§.§4f§,this.runTransition);
            }
         }
      }
      
      protected function §=!7§() : void
      {
         if(this.§,_§)
         {
            this.§,_§.removeEventListener(Event.COMPLETE,this.§3!w§);
            this.§,_§.stop();
         }
         this.§#"f§ = §6"§.§5![§;
         if(this.§[!Y§)
         {
            this.§[!Y§.removeEventListener(§`L§.§4f§,this.runTransition);
         }
      }
      
      protected function §@d§(param1:§6"§, param2:Boolean = false) : void
      {
         if(!this.§,_§.isRunning)
         {
            this.§?<§(param1);
            return;
         }
         this.§<7§ = param1;
         this.§,_§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§,r§.setVisibility(true);
         if(param1 && this.§,_§)
         {
            this.§?<§(this.getTransitionInData());
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§6"§ = null;
         if(param1 && this.§,_§)
         {
            _loc3_ = new §6"§();
            _loc3_.startLabel = §[`§.§^"f§();
            _loc3_.§>"$§ = §[`§.§-"y§;
            _loc3_.§!"X§ = §[`§.§!Y§;
            _loc3_.type = §6"§.§9!j§;
            _loc3_.stageQuality = this.§?m§;
            this.§@d§(_loc3_,param2);
         }
         else
         {
            this.§=!7§();
            this.onTransitionOutComplete();
         }
      }
      
      protected function runTransition(param1:§`L§) : void
      {
         if(this.§,_§ && this.§#"f§ != §6"§.§5![§)
         {
            this.§,_§.run(param1.§<!V§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §`I§() : void
      {
         this.dispose();
         dispatchEvent(new §8!j§(§8!j§.§`!f§,this));
      }
      
      public function §7!R§() : void
      {
      }
   }
}
