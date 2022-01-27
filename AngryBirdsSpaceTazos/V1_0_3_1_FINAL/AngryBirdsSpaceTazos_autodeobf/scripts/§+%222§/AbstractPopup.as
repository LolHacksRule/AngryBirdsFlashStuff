package §+"2§
{
   import §'!k§.§>!P§;
   import §'!n§.§7"9§;
   import §+=§.§5h§;
   import §+=§.§?!Q§;
   import §,!7§.§5!k§;
   import §0I§.§6A§;
   import §0I§.§;!0§;
   import §0I§.§<i§;
   import §0I§.§^U§;
   import §6B§.§?"2§;
   import §71§.§%`§;
   import §71§.§;l§;
   import §=!"§.§2"&§;
   import §>"!§.§@!9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §<!X§, §%`§
   {
       
      
      protected var § 1§:§5!k§;
      
      private var §6!I§:MovieClip;
      
      private var §;"&§:MovieClip;
      
      protected var §@N§:XML;
      
      protected var §=!y§:int;
      
      protected var §&!"§:int;
      
      protected var §?I§:String;
      
      protected var §+T§:String = "none";
      
      protected var §%!]§:String = "best";
      
      protected var §>m§:Boolean = true;
      
      protected var §&!E§:§6A§;
      
      protected var §#W§:Vector.<String>;
      
      protected var §@E§:§<i§;
      
      protected var §3"%§:§;l§;
      
      protected var §1s§:§>!P§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§=!y§ = param1;
         this.§&!"§ = param2;
         this.§@N§ = param3 || <xml></xml>;
         this.§?I§ = param4;
      }
      
      public function get id() : String
      {
         return this.§?I§;
      }
      
      public function get §#N§() : int
      {
         return this.§=!y§;
      }
      
      public function get priority() : int
      {
         return this.§&!"§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§&!"§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§&!E§ && this.§&!E§.§6!3§ && (this.§+T§ == §<i§.§+!i§ || this.§+T§ == §<i§.§4!>§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§ 1§.removeEventListener(§?!Q§.§ set§,this.§4"4§);
         this.§4#§();
         if(this.§&!E§)
         {
            this.§&!E§.dispose();
            this.§&!E§ = null;
         }
         this.§ 1§.clear();
         if(this.§ 1§.mClip && this.§ 1§.mClip.parent && this.§ 1§.mClip.parent == this.§;"&§)
         {
            this.§;"&§.removeChild(this.§ 1§.mClip);
         }
         if(this.§;"&§ && this.§;"&§.parent && this.§;"&§.parent == this.§6!I§)
         {
            this.§6!I§.removeChild(this.§;"&§);
         }
         this.§6!I§ = null;
         this.§ 1§ = null;
         if(this.§3"%§)
         {
            this.§3"%§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§ 1§.viewHeight = param2;
         this.§ 1§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§;l§, param3:§>!P§, param4:Boolean = false) : void
      {
         this.§3"%§ = param2;
         this.§1s§ = param3;
         this.initialize(param1);
         this.§[!8§();
         this.init();
         this.§7!>§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§ 1§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§6!I§ = param1;
         this.§ 1§ = new §5!k§(this.§@N§,null,null,null);
         this.§ 1§.addEventListener(§?!Q§.§ set§,this.§4"4§);
         this.§ 1§.setVisibility(true);
         this.§ 1§.setActiveStatus(true);
         this.§;"&§ = new MovieClip();
         this.§;"&§.addChild(this.§ 1§.mClip);
         this.§6!I§.addChild(this.§;"&§);
         this.§ 1§.mClip.name = "Container_" + this.§ 1§.mClip.name;
         this.§#W§ = new Vector.<String>();
      }
      
      protected function §4"4§(param1:§?!Q§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§6!-§,param1.§&"8§,param1.§ "7§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §@!9§.playSound("close_popup_button_click");
               dispatchEvent(new §2"&§(§2"&§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§3"%§.addLocalizationTarget(this);
      }
      
      protected function §[!8§() : void
      {
         this.§#W§.push(§^U§.§ "2§());
         this.§#W§.push(§^U§.§"!+§());
         this.§#W§.push(§^U§.§7!K§());
         this.§#W§.push(§^U§.§^v§());
         this.§#W§.push(§^U§.§ !G§());
         this.§#W§.push(§^U§.§ !2§);
         this.§#W§.push(§^U§.§]!i§);
      }
      
      protected function §7!>§() : void
      {
         if(this.§ 1§ == null || this.§ 1§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§;"&§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §7"9§.§[A§(_loc1_,this.§#W§,_loc2_,§7"9§.§^4§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§4#§();
         this.§&!E§ = new §;!0§(param1,this.§ 1§.mClip.stage);
      }
      
      protected function §%[§() : §<i§
      {
         return new §<i§(§^U§.§ "2§(),§^U§.§]!i§,§^U§.§ !2§,§<i§.§5]§,this.§>m§,this.§%!]§);
      }
      
      protected function §0!E§() : §<i§
      {
         var _loc1_:§<i§ = new §<i§();
         _loc1_.§0!f§ = §^U§.§]!i§;
         _loc1_.§@!K§ = §^U§.§ !2§;
         _loc1_.startLabel = §^U§.§^v§();
         _loc1_.type = §<i§.§+!i§;
         _loc1_.stageQuality = this.§%!]§;
         return _loc1_;
      }
      
      private function §`!D§(param1:Event) : void
      {
         switch(this.§+T§)
         {
            case §<i§.§5]§:
               this.§5!$§();
               break;
            case §<i§.§+!i§:
               this.§&T§();
               break;
            case §<i§.§4!>§:
               this.§!i§();
         }
      }
      
      protected function §&T§() : void
      {
         var _loc1_:String = this.§+T§;
         this.§4#§();
         this.onTransitionComplete(_loc1_);
         this.§+o§(this.§%[§());
      }
      
      protected function §5!$§() : void
      {
         this.onTransitionComplete(this.§+T§);
         if(this.§@E§)
         {
            this.§+o§(this.§@E§);
            this.§@E§ = null;
         }
      }
      
      protected function §!i§() : void
      {
         this.§4#§();
         this.onTransitionComplete(this.§+T§);
         this.§ 1§.setVisibility(false);
         this.§5!W§();
      }
      
      protected function §+o§(param1:§<i§) : void
      {
         this.§4#§();
         if(this.§&!E§ && param1.type != §<i§.§9,§)
         {
            this.§+T§ = param1.type;
            this.§&!E§.addEventListener(Event.COMPLETE,this.§`!D§);
            this.§&!E§.start(param1);
            this.onTransitionStart(this.§+T§);
            if(this.§1s§)
            {
               this.§1s§.addEventListener(§5h§.§ P§,this.runTransition);
            }
         }
      }
      
      protected function §4#§() : void
      {
         if(this.§&!E§)
         {
            this.§&!E§.removeEventListener(Event.COMPLETE,this.§`!D§);
            this.§&!E§.stop();
         }
         this.§+T§ = §<i§.§9,§;
         if(this.§1s§)
         {
            this.§1s§.removeEventListener(§5h§.§ P§,this.runTransition);
         }
      }
      
      protected function §^j§(param1:§<i§, param2:Boolean = false) : void
      {
         if(!this.§&!E§.§6!3§)
         {
            this.§+o§(param1);
            return;
         }
         this.§@E§ = param1;
         this.§&!E§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§ 1§.setVisibility(true);
         if(param1 && this.§&!E§)
         {
            this.§+o§(this.§0!E§());
         }
         else
         {
            this.§&T§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§<i§ = null;
         if(param1 && this.§&!E§)
         {
            _loc3_ = new §<i§();
            _loc3_.startLabel = §^U§.§ !G§();
            _loc3_.§0!f§ = §^U§.§]!i§;
            _loc3_.§@!K§ = §^U§.§ !2§;
            _loc3_.type = §<i§.§4!>§;
            _loc3_.stageQuality = this.§%!]§;
            this.§^j§(_loc3_,param2);
         }
         else
         {
            this.§4#§();
            this.§!i§();
         }
      }
      
      protected function runTransition(param1:§5h§) : void
      {
         if(this.§&!E§ && this.§+T§ != §<i§.§9,§)
         {
            this.§&!E§.run(param1.§%!G§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §5!W§() : void
      {
         this.dispose();
         dispatchEvent(new §2"&§(§2"&§.§6!4§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
