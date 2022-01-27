package §[!m§
{
   import §+D§.§ #^§;
   import §+D§.§"-§;
   import §0!=§.§]"3§;
   import §1!i§.§<"&§;
   import §1#R§.§+#[§;
   import §;"Y§.§&#X§;
   import §<w§.§6#'§;
   import §<w§.§^!q§;
   import §="2§.§?!r§;
   import §>@§.§#y§;
   import §>@§.§5"H§;
   import §]!$§.§6y§;
   import §]!$§.§>!!§;
   import §]!$§.§`!]§;
   import §]!$§.§`#?§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §[!j§, §#y§
   {
       
      
      protected var §^c§:§ #^§;
      
      private var §=#=§:MovieClip;
      
      private var §^!s§:MovieClip;
      
      protected var §%4§:XML;
      
      protected var §1`§:int;
      
      protected var §4B§:int;
      
      protected var §6##§:String;
      
      protected var §`"B§:String = "none";
      
      protected var §^!`§:String = "best";
      
      protected var §+#=§:Boolean = true;
      
      protected var §7!=§:§>!!§;
      
      protected var §<!%§:Vector.<String>;
      
      protected var §?!O§:§6y§;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§1`§ = param1;
         this.§4B§ = param2;
         this.§%4§ = param3 || <xml></xml>;
         this.§6##§ = param4;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §^!F§() : int
      {
         return this.§1`§;
      }
      
      public function get priority() : int
      {
         return this.§4B§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§4B§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§7!=§ && this.§7!=§.isRunning && (this.§`"B§ == §6y§.§>]§ || this.§`"B§ == §6y§.§;X§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§^c§.removeEventListener(§6#'§.§+!>§,this.uIInteractionHandler);
         this.§^!d§();
         if(this.§7!=§)
         {
            this.§7!=§.dispose();
            this.§7!=§ = null;
         }
         this.§^c§.clear();
         if(this.§^c§.mClip && this.§^c§.mClip.parent && this.§^c§.mClip.parent == this.§^!s§)
         {
            this.§^!s§.removeChild(this.§^c§.mClip);
         }
         if(this.§^!s§ && this.§^!s§.parent && this.§^!s§.parent == this.§=#=§)
         {
            this.§=#=§.removeChild(this.§^!s§);
         }
         this.§=#=§ = null;
         this.§^c§ = null;
         if(this.§^"N§)
         {
            this.§^"N§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§^c§.viewHeight = param2;
         this.§^c§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§5"H§, param3:§]"3§, param4:Boolean = false) : void
      {
         this.§^"N§ = param2;
         this.§;D§ = param3;
         this.initialize(param1);
         this.createTransitionLabels();
         this.init();
         this.§?"-§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§^c§)
         {
            this.§^c§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§=#=§ = param1;
         this.§^c§ = §"-§.§=#T§(this.§%4§,null,null,null);
         this.§^c§.addEventListener(§6#'§.§+!>§,this.uIInteractionHandler);
         this.§^c§.setVisibility(true);
         this.§^c§.setActiveStatus(true);
         this.§^!s§ = new MovieClip();
         this.§^!s§.addChild(this.§^c§.mClip);
         this.§=#=§.addChild(this.§^!s§);
         this.§^c§.mClip.name = "Container_" + this.§^c§.mClip.name;
         this.§<!%§ = new Vector.<String>();
      }
      
      protected function uIInteractionHandler(param1:§6#'§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§@#8§,param1.§=!k§,param1.§^"r§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §?!r§.§"#_§("close_popup_button_click");
               dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§^"N§.addLocalizationTarget(this);
      }
      
      protected function createTransitionLabels() : void
      {
         this.§<!%§.push(§`#?§.§[! §());
         this.§<!%§.push(§`#?§.§9!-§());
         this.§<!%§.push(§`#?§.§`J§());
         this.§<!%§.push(§`#?§.§@!!§());
         this.§<!%§.push(§`#?§.§8#@§());
         this.§<!%§.push(§`#?§.§;!&§);
         this.§<!%§.push(§`#?§.§1#$§);
      }
      
      protected function §?"-§() : void
      {
         if(this.§^c§ == null || this.§^c§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§^!s§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §<"&§.§6!t§(_loc1_,this.§<!%§,_loc2_,§<"&§.§?"5§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§^!d§();
         this.§7!=§ = new §`!]§(param1,this.§^c§.mClip.stage);
      }
      
      protected function getRunTransitionData() : §6y§
      {
         return new §6y§(§`#?§.§[! §(),§`#?§.§1#$§,§`#?§.§;!&§,§6y§.§5z§,this.§+#=§,this.§^!`§);
      }
      
      protected function getTransitionInData() : §6y§
      {
         var _loc1_:§6y§ = new §6y§();
         _loc1_.§%#N§ = §`#?§.§1#$§;
         _loc1_.§`"i§ = §`#?§.§;!&§;
         _loc1_.startLabel = §`#?§.§@!!§();
         _loc1_.type = §6y§.§>]§;
         _loc1_.stageQuality = this.§^!`§;
         return _loc1_;
      }
      
      private function §]!p§(param1:Event) : void
      {
         switch(this.§`"B§)
         {
            case §6y§.§5z§:
               this.§,!7§();
               break;
            case §6y§.§>]§:
               this.onTransitionInComplete();
               break;
            case §6y§.§;X§:
               this.onTransitionOutComplete();
         }
      }
      
      protected function onTransitionInComplete() : void
      {
         var _loc1_:String = this.§`"B§;
         this.§^!d§();
         this.onTransitionComplete(_loc1_);
         this.§%!K§(this.getRunTransitionData());
      }
      
      protected function §,!7§() : void
      {
         this.onTransitionComplete(this.§`"B§);
         if(this.§?!O§)
         {
            this.§%!K§(this.§?!O§);
            this.§?!O§ = null;
         }
      }
      
      protected function onTransitionOutComplete() : void
      {
         this.§^!d§();
         this.onTransitionComplete(this.§`"B§);
         this.§^c§.setVisibility(false);
         this.§>" §();
      }
      
      protected function §%!K§(param1:§6y§) : void
      {
         this.§^!d§();
         if(this.§7!=§ && param1.type != §6y§.§8"@§)
         {
            this.§`"B§ = param1.type;
            this.§7!=§.addEventListener(Event.COMPLETE,this.§]!p§);
            this.§7!=§.start(param1);
            this.onTransitionStart(this.§`"B§);
            if(this.§;D§)
            {
               this.§;D§.addEventListener(§^!q§.§1c§,this.runTransition);
            }
         }
      }
      
      protected function §^!d§() : void
      {
         if(this.§7!=§)
         {
            this.§7!=§.removeEventListener(Event.COMPLETE,this.§]!p§);
            this.§7!=§.stop();
         }
         this.§`"B§ = §6y§.§8"@§;
         if(this.§;D§)
         {
            this.§;D§.removeEventListener(§^!q§.§1c§,this.runTransition);
         }
      }
      
      protected function §2"z§(param1:§6y§, param2:Boolean = false) : void
      {
         if(!this.§7!=§.isRunning)
         {
            this.§%!K§(param1);
            return;
         }
         this.§?!O§ = param1;
         this.§7!=§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§^c§.setVisibility(true);
         if(param1 && this.§7!=§)
         {
            this.§%!K§(this.getTransitionInData());
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§6y§ = null;
         if(param1 && this.§7!=§)
         {
            _loc3_ = new §6y§();
            _loc3_.startLabel = §`#?§.§8#@§();
            _loc3_.§%#N§ = §`#?§.§1#$§;
            _loc3_.§`"i§ = §`#?§.§;!&§;
            _loc3_.type = §6y§.§;X§;
            _loc3_.stageQuality = this.§^!`§;
            this.§2"z§(_loc3_,param2);
         }
         else
         {
            this.§^!d§();
            this.onTransitionOutComplete();
         }
      }
      
      protected function runTransition(param1:§^!q§) : void
      {
         if(this.§7!=§ && this.§`"B§ != §6y§.§8"@§)
         {
            this.§7!=§.run(param1.§3+§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §>" §() : void
      {
         this.dispose();
         dispatchEvent(new §+#[§(§+#[§.§[%§,this));
      }
      
      public function §9!J§() : void
      {
      }
   }
}
