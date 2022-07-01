package §[<§
{
   import §!",§.§,!4§;
   import §!",§.§,i§;
   import §!",§.§47§;
   import §!",§.§7!+§;
   import §-!F§.§^!t§;
   import §3!!§.§5" §;
   import §7-§.§8!v§;
   import §9![§.§1!i§;
   import §<R§.§!@§;
   import §>!L§.§-"#§;
   import §>!L§.§?!d§;
   import §@f§.§&!"§;
   import §]!d§.§-!<§;
   import §]!d§.§8!,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §]!R§, §8!,§
   {
       
      
      protected var §#t§:§5" §;
      
      private var §&!e§:MovieClip;
      
      private var §1!V§:MovieClip;
      
      protected var §@r§:XML;
      
      protected var §`y§:int;
      
      protected var § "'§:int;
      
      protected var §]!U§:String;
      
      protected var §+C§:String = "none";
      
      protected var §^G§:String = "best";
      
      protected var §8z§:Boolean = true;
      
      protected var §8"§:§,i§;
      
      protected var §6!!§:Vector.<String>;
      
      protected var §,!w§:§7!+§;
      
      protected var §@d§:§-!<§;
      
      protected var §6R§:§!@§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§`y§ = param1;
         this.§ "'§ = param2;
         this.§@r§ = param3 || <xml></xml>;
         this.§]!U§ = param4;
      }
      
      public function get id() : String
      {
         return this.§]!U§;
      }
      
      public function get §<>§() : int
      {
         return this.§`y§;
      }
      
      public function get priority() : int
      {
         return this.§ "'§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§ "'§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§8"§ && this.§8"§.§@"0§ && (this.§+C§ == §7!+§.§+R§ || this.§+C§ == §7!+§.§1"-§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§#t§.removeEventListener(§?!d§.§@q§,this.§>m§);
         this.§2C§();
         if(this.§8"§)
         {
            this.§8"§.dispose();
            this.§8"§ = null;
         }
         this.§#t§.clear();
         if(this.§#t§.mClip && this.§#t§.mClip.parent && this.§#t§.mClip.parent == this.§1!V§)
         {
            this.§1!V§.removeChild(this.§#t§.mClip);
         }
         if(this.§1!V§ && this.§1!V§.parent && this.§1!V§.parent == this.§&!e§)
         {
            this.§&!e§.removeChild(this.§1!V§);
         }
         this.§&!e§ = null;
         this.§#t§ = null;
         if(this.§@d§)
         {
            this.§@d§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§#t§.viewHeight = param2;
         this.§#t§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§-!<§, param3:§!@§, param4:Boolean = false) : void
      {
         this.§@d§ = param2;
         this.§6R§ = param3;
         this.initialize(param1);
         this.§06§();
         this.init();
         this.§7R§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§#t§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§&!e§ = param1;
         this.§#t§ = new §5" §(this.§@r§,null,null,null);
         this.§#t§.addEventListener(§?!d§.§@q§,this.§>m§);
         this.§#t§.setVisibility(true);
         this.§#t§.setActiveStatus(true);
         this.§1!V§ = new MovieClip();
         this.§1!V§.addChild(this.§#t§.mClip);
         this.§&!e§.addChild(this.§1!V§);
         this.§#t§.mClip.name = "Container_" + this.§#t§.mClip.name;
         this.§6!!§ = new Vector.<String>();
      }
      
      protected function §>m§(param1:§?!d§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§^P§,param1.§&"5§,param1.§8!P§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §1!i§.§+!Y§("close_popup_button_click");
               dispatchEvent(new §8!v§(§8!v§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§@d§.addLocalizationTarget(this);
      }
      
      protected function §06§() : void
      {
         this.§6!!§.push(§47§.§;]§());
         this.§6!!§.push(§47§.§"!3§());
         this.§6!!§.push(§47§.§`H§());
         this.§6!!§.push(§47§.§]!5§());
         this.§6!!§.push(§47§.§+>§());
         this.§6!!§.push(§47§.§5"$§);
         this.§6!!§.push(§47§.§>i§);
      }
      
      protected function §7R§() : void
      {
         if(this.§#t§ == null || this.§#t§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§1!V§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §^!t§.§2!5§(_loc1_,this.§6!!§,_loc2_,§^!t§.§ d§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§2C§();
         this.§8"§ = new §,!4§(param1,this.§#t§.mClip.stage);
      }
      
      protected function §,!p§() : §7!+§
      {
         return new §7!+§(§47§.§;]§(),§47§.§>i§,§47§.§5"$§,§7!+§.§%"5§,this.§8z§,this.§^G§);
      }
      
      protected function §@!l§() : §7!+§
      {
         var _loc1_:§7!+§ = new §7!+§();
         _loc1_.§=>§ = §47§.§>i§;
         _loc1_.§#5§ = §47§.§5"$§;
         _loc1_.startLabel = §47§.§]!5§();
         _loc1_.type = §7!+§.§+R§;
         _loc1_.stageQuality = this.§^G§;
         return _loc1_;
      }
      
      private function §"?§(param1:Event) : void
      {
         switch(this.§+C§)
         {
            case §7!+§.§%"5§:
               this.§`!k§();
               break;
            case §7!+§.§+R§:
               this.§?!M§();
               break;
            case §7!+§.§1"-§:
               this.§4I§();
         }
      }
      
      protected function §?!M§() : void
      {
         var _loc1_:String = this.§+C§;
         this.§2C§();
         this.onTransitionComplete(_loc1_);
         this.§?X§(this.§,!p§());
      }
      
      protected function §`!k§() : void
      {
         this.onTransitionComplete(this.§+C§);
         if(this.§,!w§)
         {
            this.§?X§(this.§,!w§);
            this.§,!w§ = null;
         }
      }
      
      protected function §4I§() : void
      {
         this.§2C§();
         this.onTransitionComplete(this.§+C§);
         this.§#t§.setVisibility(false);
         this.§7"&§();
      }
      
      protected function §?X§(param1:§7!+§) : void
      {
         this.§2C§();
         if(this.§8"§ && param1.type != §7!+§.§4"&§)
         {
            this.§+C§ = param1.type;
            this.§8"§.addEventListener(Event.COMPLETE,this.§"?§);
            this.§8"§.start(param1);
            this.onTransitionStart(this.§+C§);
            if(this.§6R§)
            {
               this.§6R§.addEventListener(§-"#§.§@!t§,this.runTransition);
            }
         }
      }
      
      protected function §2C§() : void
      {
         if(this.§8"§)
         {
            this.§8"§.removeEventListener(Event.COMPLETE,this.§"?§);
            this.§8"§.stop();
         }
         this.§+C§ = §7!+§.§4"&§;
         if(this.§6R§)
         {
            this.§6R§.removeEventListener(§-"#§.§@!t§,this.runTransition);
         }
      }
      
      protected function §[!S§(param1:§7!+§, param2:Boolean = false) : void
      {
         if(!this.§8"§.§@"0§)
         {
            this.§?X§(param1);
            return;
         }
         this.§,!w§ = param1;
         this.§8"§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§#t§.setVisibility(true);
         if(param1 && this.§8"§)
         {
            this.§?X§(this.§@!l§());
         }
         else
         {
            this.§?!M§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§7!+§ = null;
         if(param1 && this.§8"§)
         {
            _loc3_ = new §7!+§();
            _loc3_.startLabel = §47§.§+>§();
            _loc3_.§=>§ = §47§.§>i§;
            _loc3_.§#5§ = §47§.§5"$§;
            _loc3_.type = §7!+§.§1"-§;
            _loc3_.stageQuality = this.§^G§;
            this.§[!S§(_loc3_,param2);
         }
         else
         {
            this.§2C§();
            this.§4I§();
         }
      }
      
      protected function runTransition(param1:§-"#§) : void
      {
         if(this.§8"§ && this.§+C§ != §7!+§.§4"&§)
         {
            this.§8"§.run(param1.§,!-§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §7"&§() : void
      {
         this.dispose();
         dispatchEvent(new §8!v§(§8!v§.§7!a§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
