package §;$5§
{
   import § "q§.§&Q§;
   import § "q§.§5!?§;
   import § "q§.§=$'§;
   import § "q§.§@!'§;
   import §+#B§.§#q§;
   import §3"G§.§1!N§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §5!$§.§ #A§;
   import §5!$§.§<c§;
   import §5"G§.§8"`§;
   import §5"G§.§^"&§;
   import §8#?§.§?#;§;
   import §;w§.§5"_§;
   import §>"9§.§[#%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §@#G§, §1!N§
   {
       
      
      protected var §8#Y§:§<c§;
      
      private var §+!9§:MovieClip;
      
      private var §3"l§:MovieClip;
      
      protected var §"""§:XML;
      
      protected var §%3§:int;
      
      protected var §;"H§:int;
      
      protected var mId:String;
      
      protected var §@#F§:String = "none";
      
      protected var §0x§:String = "best";
      
      protected var §'#h§:Boolean = true;
      
      protected var §[$2§:§5!?§;
      
      protected var §+$<§:Vector.<String>;
      
      protected var §##6§:§@!'§;
      
      protected var §1#@§:§16§;
      
      protected var §<"u§:§?#;§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§%3§ = param1;
         this.§;"H§ = param2;
         this.§"""§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §9#I§() : int
      {
         return this.§%3§;
      }
      
      public function get priority() : int
      {
         return this.§;"H§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§;"H§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§[$2§ && this.§[$2§.§="+§ && (this.§@#F§ == §@!'§.§1"V§ || this.§@#F§ == §@!'§.§ !H§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§8#Y§.removeEventListener(§8"`§.§,$A§,this.§=N§);
         this.§-#q§();
         if(this.§[$2§)
         {
            this.§[$2§.dispose();
            this.§[$2§ = null;
         }
         this.§8#Y§.clear();
         if(this.§8#Y§.mClip && this.§8#Y§.mClip.parent && this.§8#Y§.mClip.parent == this.§3"l§)
         {
            this.§3"l§.removeChild(this.§8#Y§.mClip);
         }
         if(this.§3"l§ && this.§3"l§.parent && this.§3"l§.parent == this.§+!9§)
         {
            this.§+!9§.removeChild(this.§3"l§);
         }
         this.§+!9§ = null;
         this.§8#Y§ = null;
         if(this.§1#@§)
         {
            this.§1#@§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§8#Y§.viewHeight = param2;
         this.§8#Y§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§16§, param3:§?#;§, param4:Boolean = false) : void
      {
         this.§1#@§ = param2;
         this.§<"u§ = param3;
         this.initialize(param1);
         this.§#!7§();
         this.init();
         this.§;$B§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§8#Y§)
         {
            if(param2)
            {
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
            }
            this.§8#Y§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§+!9§ = param1;
         this.§8#Y§ = § #A§.§8x§(this.§"""§,null,null,null);
         this.§8#Y§.addEventListener(§8"`§.§,$A§,this.§=N§);
         this.§8#Y§.setVisibility(true);
         this.§8#Y§.setActiveStatus(true);
         this.§3"l§ = new MovieClip();
         this.§3"l§.addChild(this.§8#Y§.mClip);
         this.§+!9§.addChild(this.§3"l§);
         this.§8#Y§.mClip.name = "Container_" + this.§8#Y§.mClip.name;
         this.§+$<§ = new Vector.<String>();
         this.§+!9§.tabChildren = false;
      }
      
      protected function §=N§(param1:§8"`§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §5"_§(§5"_§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§1#@§.addLocalizationTarget(this);
      }
      
      protected function §#!7§() : void
      {
         this.§+$<§.push(§&Q§.§'"p§());
         this.§+$<§.push(§&Q§.§0$E§());
         this.§+$<§.push(§&Q§.§^!0§());
         this.§+$<§.push(§&Q§.§&#v§());
         this.§+$<§.push(§&Q§.§6#5§());
         this.§+$<§.push(§&Q§.§]#r§);
         this.§+$<§.push(§&Q§.§8"w§);
      }
      
      protected function §;$B§() : void
      {
         if(this.§8#Y§ == null || this.§8#Y§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§3"l§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §#q§.§`#"§(_loc1_,this.§+$<§,_loc2_,§#q§.§%"+§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§-#q§();
         this.§[$2§ = new §=$'§(param1,this.§8#Y§.mClip.stage);
      }
      
      protected function §[o§() : §@!'§
      {
         return new §@!'§(§&Q§.§'"p§(),§&Q§.§8"w§,§&Q§.§]#r§,§@!'§.§ F§,this.§'#h§,this.§0x§);
      }
      
      protected function §1#Q§() : §@!'§
      {
         var _loc1_:§@!'§ = new §@!'§();
         _loc1_.§[#_§ = §&Q§.§8"w§;
         _loc1_.§`$A§ = §&Q§.§]#r§;
         _loc1_.startLabel = §&Q§.§&#v§();
         _loc1_.type = §@!'§.§1"V§;
         _loc1_.stageQuality = this.§0x§;
         return _loc1_;
      }
      
      private function § !1§(param1:Event) : void
      {
         switch(this.§@#F§)
         {
            case §@!'§.§ F§:
               this.§,"y§();
               break;
            case §@!'§.§1"V§:
               this.§6N§();
               break;
            case §@!'§.§ !H§:
               this.§0#,§();
         }
      }
      
      protected function §6N§() : void
      {
         var _loc1_:String = this.§@#F§;
         this.§-#q§();
         this.§8!Q§(_loc1_);
         this.§""7§(this.§[o§());
         dispatchEvent(new §5"_§(§5"_§.§<2§,this));
      }
      
      protected function §,"y§() : void
      {
         this.§8!Q§(this.§@#F§);
         if(this.§##6§)
         {
            this.§""7§(this.§##6§);
            this.§##6§ = null;
         }
      }
      
      protected function §0#,§() : void
      {
         this.§-#q§();
         this.§8!Q§(this.§@#F§);
         this.§8#Y§.setVisibility(false);
         this.§5"^§();
      }
      
      protected function §""7§(param1:§@!'§) : void
      {
         this.§-#q§();
         if(this.§[$2§ && param1.type != §@!'§.§,u§)
         {
            this.§@#F§ = param1.type;
            this.§[$2§.addEventListener(Event.COMPLETE,this.§ !1§);
            this.§[$2§.start(param1);
            this.onTransitionStart(this.§@#F§);
            if(this.§<"u§)
            {
               this.§<"u§.addEventListener(§^"&§.§>"q§,this.§%y§);
            }
         }
      }
      
      protected function §-#q§() : void
      {
         if(this.§[$2§)
         {
            this.§[$2§.removeEventListener(Event.COMPLETE,this.§ !1§);
            this.§[$2§.stop();
         }
         this.§@#F§ = §@!'§.§,u§;
         if(this.§<"u§)
         {
            this.§<"u§.removeEventListener(§^"&§.§>"q§,this.§%y§);
         }
      }
      
      protected function §^#z§(param1:§@!'§, param2:Boolean = false) : void
      {
         if(!this.§[$2§.§="+§)
         {
            this.§""7§(param1);
            return;
         }
         this.§##6§ = param1;
         this.§[$2§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§8#Y§.setVisibility(true);
         if(param1 && this.§[$2§)
         {
            this.§""7§(this.§1#Q§());
         }
         else
         {
            this.§6N§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§@!'§ = null;
         if(param1 && this.§[$2§)
         {
            _loc3_ = new §@!'§();
            _loc3_.startLabel = §&Q§.§6#5§();
            _loc3_.§[#_§ = §&Q§.§8"w§;
            _loc3_.§`$A§ = §&Q§.§]#r§;
            _loc3_.type = §@!'§.§ !H§;
            _loc3_.stageQuality = this.§0x§;
            this.§^#z§(_loc3_,param2);
         }
         else
         {
            this.§-#q§();
            this.§0#,§();
         }
      }
      
      protected function §%y§(param1:§^"&§) : void
      {
         if(this.§[$2§ && this.§@#F§ != §@!'§.§,u§)
         {
            this.§[$2§.run(param1.§-"S§);
         }
      }
      
      protected function §8!Q§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §5"^§() : void
      {
         this.dispose();
         dispatchEvent(new §5"_§(§5"_§.§4+§,this));
      }
      
      public function §#0§() : void
      {
      }
   }
}
