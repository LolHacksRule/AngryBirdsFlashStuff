package §9!6§
{
   import § "v§.§4$4§;
   import § #_§.§'0§;
   import § #_§.§?!>§;
   import §&1§.§4""§;
   import §2$;§.§!"e§;
   import §2$;§.§6"$§;
   import §2E§.§'t§;
   import §5"l§.§0!b§;
   import §<8§.§8!g§;
   import §=X§.§3§;
   import §=X§.§`#x§;
   import §>#s§.§-$$§;
   import §>#s§.§4#s§;
   import §>#s§.§@^§;
   import §>#s§.§^!z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §?!y§, §'0§
   {
       
      
      protected var §'o§:§!"e§;
      
      private var §<!§:MovieClip;
      
      private var §5!@§:MovieClip;
      
      protected var §6"G§:XML;
      
      protected var §4!B§:int;
      
      protected var §+x§:int;
      
      protected var mId:String;
      
      protected var §-#K§:String = "none";
      
      protected var §'"3§:String = "best";
      
      protected var §"$3§:Boolean = true;
      
      protected var §]"I§:§4#s§;
      
      protected var §!"4§:Vector.<String>;
      
      protected var §#""§:§@^§;
      
      protected var §,#a§:§?!>§;
      
      protected var §@!y§:§4""§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§4!B§ = param1;
         this.§+x§ = param2;
         this.§6"G§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §<#y§() : int
      {
         return this.§4!B§;
      }
      
      public function get priority() : int
      {
         return this.§+x§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§+x§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§]"I§ && this.§]"I§.§'"-§ && (this.§-#K§ == §@^§.§1!A§ || this.§-#K§ == §@^§.§0K§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§'o§.removeEventListener(§3#6§.§[!$§,this.§3c§);
         this.§!!B§();
         if(this.§]"I§)
         {
            this.§]"I§.dispose();
            this.§]"I§ = null;
         }
         this.§'o§.clear();
         if(this.§'o§.mClip && this.§'o§.mClip.parent && this.§'o§.mClip.parent == this.§5!@§)
         {
            this.§5!@§.removeChild(this.§'o§.mClip);
         }
         if(this.§5!@§ && this.§5!@§.parent && this.§5!@§.parent == this.§<!§)
         {
            this.§<!§.removeChild(this.§5!@§);
         }
         this.§<!§ = null;
         this.§'o§ = null;
         if(this.§,#a§)
         {
            this.§,#a§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§'o§.viewHeight = param2;
         this.§'o§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§?!>§, param3:§4""§, param4:Boolean = false) : void
      {
         this.§,#a§ = param2;
         this.§@!y§ = param3;
         this.initialize(param1);
         this.§>T§();
         this.init();
         this.§-#A§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§'o§)
         {
            if(param2)
            {
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
            }
            this.§'o§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§<!§ = param1;
         this.§'o§ = §6"$§.§<z§(this.§6"G§,null,null,null);
         this.§'o§.addEventListener(§3#6§.§[!$§,this.§3c§);
         this.§'o§.setVisibility(true);
         this.§'o§.setActiveStatus(true);
         this.§5!@§ = new MovieClip();
         this.§5!@§.addChild(this.§'o§.mClip);
         this.§<!§.addChild(this.§5!@§);
         this.§'o§.mClip.name = "Container_" + this.§'o§.mClip.name;
         this.§!"4§ = new Vector.<String>();
         this.§<!§.tabChildren = false;
      }
      
      protected function §3c§(param1:§3#6§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §0!b§(§0!b§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§,#a§.addLocalizationTarget(this);
      }
      
      protected function §>T§() : void
      {
         this.§!"4§.push(§-$$§.§`d§());
         this.§!"4§.push(§-$$§.§"#0§());
         this.§!"4§.push(§-$$§.§%#Z§());
         this.§!"4§.push(§-$$§.§>!'§());
         this.§!"4§.push(§-$$§.§3u§());
         this.§!"4§.push(§-$$§.§0e§);
         this.§!"4§.push(§-$$§.§%#U§);
      }
      
      protected function §-#A§() : void
      {
         if(this.§'o§ == null || this.§'o§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§5!@§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §'t§.§&K§(_loc1_,this.§!"4§,_loc2_,§'t§.§"#[§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§!!B§();
         this.§]"I§ = new §^!z§(param1,this.§'o§.mClip.stage);
      }
      
      protected function §^#7§() : §@^§
      {
         return new §@^§(§-$$§.§`d§(),§-$$§.§%#U§,§-$$§.§0e§,§@^§.§=z§,this.§"$3§,this.§'"3§);
      }
      
      protected function §=C§() : §@^§
      {
         var _loc1_:§@^§ = new §@^§();
         _loc1_.§'3§ = §-$$§.§%#U§;
         _loc1_.§%#f§ = §-$$§.§0e§;
         _loc1_.startLabel = §-$$§.§>!'§();
         _loc1_.type = §@^§.§1!A§;
         _loc1_.stageQuality = this.§'"3§;
         return _loc1_;
      }
      
      private function §1#n§(param1:Event) : void
      {
         switch(this.§-#K§)
         {
            case §@^§.§=z§:
               this.§8$?§();
               break;
            case §@^§.§1!A§:
               this.§=_§();
               break;
            case §@^§.§0K§:
               this.§4N§();
         }
      }
      
      protected function §=_§() : void
      {
         var _loc1_:String = this.§-#K§;
         this.§!!B§();
         this.§4#4§(_loc1_);
         this.§-"R§(this.§^#7§());
         dispatchEvent(new §0!b§(§0!b§.§#!>§,this));
      }
      
      protected function §8$?§() : void
      {
         this.§4#4§(this.§-#K§);
         if(this.§#""§)
         {
            this.§-"R§(this.§#""§);
            this.§#""§ = null;
         }
      }
      
      protected function §4N§() : void
      {
         this.§!!B§();
         this.§4#4§(this.§-#K§);
         this.§'o§.setVisibility(false);
         this.§9#s§();
      }
      
      protected function §-"R§(param1:§@^§) : void
      {
         this.§!!B§();
         if(this.§]"I§ && param1.type != §@^§.§""=§)
         {
            this.§-#K§ = param1.type;
            this.§]"I§.addEventListener(Event.COMPLETE,this.§1#n§);
            this.§]"I§.start(param1);
            this.onTransitionStart(this.§-#K§);
            if(this.§@!y§)
            {
               this.§@!y§.addEventListener(§`#x§.§2"F§,this.§>$2§);
            }
         }
      }
      
      protected function §!!B§() : void
      {
         if(this.§]"I§)
         {
            this.§]"I§.removeEventListener(Event.COMPLETE,this.§1#n§);
            this.§]"I§.stop();
         }
         this.§-#K§ = §@^§.§""=§;
         if(this.§@!y§)
         {
            this.§@!y§.removeEventListener(§`#x§.§2"F§,this.§>$2§);
         }
      }
      
      protected function §>$+§(param1:§@^§, param2:Boolean = false) : void
      {
         if(!this.§]"I§.§'"-§)
         {
            this.§-"R§(param1);
            return;
         }
         this.§#""§ = param1;
         this.§]"I§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§'o§.setVisibility(true);
         if(param1 && this.§]"I§)
         {
            this.§-"R§(this.§=C§());
         }
         else
         {
            this.§=_§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§@^§ = null;
         if(param1 && this.§]"I§)
         {
            _loc3_ = new §@^§();
            _loc3_.startLabel = §-$$§.§3u§();
            _loc3_.§'3§ = §-$$§.§%#U§;
            _loc3_.§%#f§ = §-$$§.§0e§;
            _loc3_.type = §@^§.§0K§;
            _loc3_.stageQuality = this.§'"3§;
            this.§>$+§(_loc3_,param2);
         }
         else
         {
            this.§!!B§();
            this.§4N§();
         }
      }
      
      protected function §>$2§(param1:§`#x§) : void
      {
         if(this.§]"I§ && this.§-#K§ != §@^§.§""=§)
         {
            this.§]"I§.run(param1.§`!w§);
         }
      }
      
      protected function §4#4§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §9#s§() : void
      {
         this.dispose();
         dispatchEvent(new §0!b§(§0!b§.§9"5§,this));
      }
      
      public function §"9§() : void
      {
      }
   }
}
