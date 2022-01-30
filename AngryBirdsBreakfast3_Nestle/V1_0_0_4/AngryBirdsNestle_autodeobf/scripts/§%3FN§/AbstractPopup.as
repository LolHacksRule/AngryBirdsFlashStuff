package §?N§
{
   import §"m§.§,g§;
   import §&!>§.§3!k§;
   import §;!b§.§#!x§;
   import §;!b§.§%>§;
   import §<!9§.§'"$§;
   import §<!9§.§0R§;
   import §<!9§.§@!`§;
   import §<!9§.§^!o§;
   import §?!4§.§6"&§;
   import §?!4§.§^!S§;
   import §?Z§.§5-§;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import §`6§.§8!]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §;!E§, §#!x§
   {
       
      
      protected var §0+§:§9!'§;
      
      private var §?5§:MovieClip;
      
      private var §8%§:MovieClip;
      
      protected var §5!d§:XML;
      
      protected var §<u§:int;
      
      protected var §[!j§:int;
      
      protected var §[![§:String;
      
      protected var §%!0§:String = "none";
      
      protected var §<e§:String = "best";
      
      protected var §=!O§:Boolean = true;
      
      protected var §42§:§0R§;
      
      protected var §2!s§:Vector.<String>;
      
      protected var §3Z§:§^!o§;
      
      protected var §"q§:§%>§;
      
      protected var §9!1§:§,g§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§<u§ = param1;
         this.§[!j§ = param2;
         this.§5!d§ = param3 || <xml></xml>;
         this.§[![§ = param4;
      }
      
      public function get id() : String
      {
         return this.§[![§;
      }
      
      public function get §--§() : int
      {
         return this.§<u§;
      }
      
      public function get priority() : int
      {
         return this.§[!j§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§[!j§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§42§ && this.§42§.§6E§ && (this.§%!0§ == §^!o§.§+"4§ || this.§%!0§ == §^!o§.§"g§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§0+§.removeEventListener(§^!S§.§?!p§,this.§%!&§);
         this.§^t§();
         if(this.§42§)
         {
            this.§42§.dispose();
            this.§42§ = null;
         }
         this.§0+§.clear();
         if(this.§0+§.mClip && this.§0+§.mClip.parent && this.§0+§.mClip.parent == this.§8%§)
         {
            this.§8%§.removeChild(this.§0+§.mClip);
         }
         if(this.§8%§ && this.§8%§.parent && this.§8%§.parent == this.§?5§)
         {
            this.§?5§.removeChild(this.§8%§);
         }
         this.§?5§ = null;
         this.§0+§ = null;
         if(this.§"q§)
         {
            this.§"q§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§0+§.viewHeight = param2;
         this.§0+§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§%>§, param3:§,g§, param4:Boolean = false) : void
      {
         this.§"q§ = param2;
         this.§9!1§ = param3;
         this.initialize(param1);
         this.§=;§();
         this.init();
         this.§?;§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§0+§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§?5§ = param1;
         this.§0+§ = new §9!'§(this.§5!d§,null,null,null);
         this.§0+§.addEventListener(§^!S§.§?!p§,this.§%!&§);
         this.§0+§.setVisibility(true);
         this.§0+§.setActiveStatus(true);
         this.§8%§ = new MovieClip();
         this.§8%§.addChild(this.§0+§.mClip);
         this.§?5§.addChild(this.§8%§);
         this.§0+§.mClip.name = "Container_" + this.§0+§.mClip.name;
         this.§2!s§ = new Vector.<String>();
      }
      
      protected function §%!&§(param1:§^!S§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§7t§,param1.§'"3§,param1.§`!]§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §3!k§.§]"4§("close_popup_button_click");
               dispatchEvent(new §5-§(§5-§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§"q§.addLocalizationTarget(this);
      }
      
      protected function §=;§() : void
      {
         this.§2!s§.push(§'"$§.§%!C§());
         this.§2!s§.push(§'"$§.§9!y§());
         this.§2!s§.push(§'"$§.§?!i§());
         this.§2!s§.push(§'"$§.§@K§());
         this.§2!s§.push(§'"$§.§@B§());
         this.§2!s§.push(§'"$§.§9E§);
         this.§2!s§.push(§'"$§.§0!F§);
      }
      
      protected function §?;§() : void
      {
         if(this.§0+§ == null || this.§0+§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§8%§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §8!]§.§7!2§(_loc1_,this.§2!s§,_loc2_,§8!]§.§=$§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§^t§();
         this.§42§ = new §@!`§(param1,this.§0+§.mClip.stage);
      }
      
      protected function §%N§() : §^!o§
      {
         return new §^!o§(§'"$§.§%!C§(),§'"$§.§0!F§,§'"$§.§9E§,§^!o§.§>!u§,this.§=!O§,this.§<e§);
      }
      
      protected function §>!h§() : §^!o§
      {
         var _loc1_:§^!o§ = new §^!o§();
         _loc1_.§[;§ = §'"$§.§0!F§;
         _loc1_.§'e§ = §'"$§.§9E§;
         _loc1_.startLabel = §'"$§.§@K§();
         _loc1_.type = §^!o§.§+"4§;
         _loc1_.stageQuality = this.§<e§;
         return _loc1_;
      }
      
      private function §,"&§(param1:Event) : void
      {
         switch(this.§%!0§)
         {
            case §^!o§.§>!u§:
               this.§0[§();
               break;
            case §^!o§.§+"4§:
               this.§1&§();
               break;
            case §^!o§.§"g§:
               this.§,e§();
         }
      }
      
      protected function §1&§() : void
      {
         var _loc1_:String = this.§%!0§;
         this.§^t§();
         this.onTransitionComplete(_loc1_);
         this.§-M§(this.§%N§());
      }
      
      protected function §0[§() : void
      {
         this.onTransitionComplete(this.§%!0§);
         if(this.§3Z§)
         {
            this.§-M§(this.§3Z§);
            this.§3Z§ = null;
         }
      }
      
      protected function §,e§() : void
      {
         this.§^t§();
         this.onTransitionComplete(this.§%!0§);
         this.§0+§.setVisibility(false);
         this.§;"2§();
      }
      
      protected function §-M§(param1:§^!o§) : void
      {
         this.§^t§();
         if(this.§42§ && param1.type != §^!o§.§7!W§)
         {
            this.§%!0§ = param1.type;
            this.§42§.addEventListener(Event.COMPLETE,this.§,"&§);
            this.§42§.start(param1);
            this.onTransitionStart(this.§%!0§);
            if(this.§9!1§)
            {
               this.§9!1§.addEventListener(§6"&§.§"!w§,this.runTransition);
            }
         }
      }
      
      protected function §^t§() : void
      {
         if(this.§42§)
         {
            this.§42§.removeEventListener(Event.COMPLETE,this.§,"&§);
            this.§42§.stop();
         }
         this.§%!0§ = §^!o§.§7!W§;
         if(this.§9!1§)
         {
            this.§9!1§.removeEventListener(§6"&§.§"!w§,this.runTransition);
         }
      }
      
      protected function §="5§(param1:§^!o§, param2:Boolean = false) : void
      {
         if(!this.§42§.§6E§)
         {
            this.§-M§(param1);
            return;
         }
         this.§3Z§ = param1;
         this.§42§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§0+§.setVisibility(true);
         if(param1 && this.§42§)
         {
            this.§-M§(this.§>!h§());
         }
         else
         {
            this.§1&§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§^!o§ = null;
         if(param1 && this.§42§)
         {
            _loc3_ = new §^!o§();
            _loc3_.startLabel = §'"$§.§@B§();
            _loc3_.§[;§ = §'"$§.§0!F§;
            _loc3_.§'e§ = §'"$§.§9E§;
            _loc3_.type = §^!o§.§"g§;
            _loc3_.stageQuality = this.§<e§;
            this.§="5§(_loc3_,param2);
         }
         else
         {
            this.§^t§();
            this.§,e§();
         }
      }
      
      protected function runTransition(param1:§6"&§) : void
      {
         if(this.§42§ && this.§%!0§ != §^!o§.§7!W§)
         {
            this.§42§.run(param1.§'!f§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §;"2§() : void
      {
         this.dispose();
         dispatchEvent(new §5-§(§5-§.§&C§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
