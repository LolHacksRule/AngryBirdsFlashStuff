package § S§
{
   import §"!G§.§'"!§;
   import §"!G§.§3!f§;
   import §#A§.§!!'§;
   import §#A§.§&%§;
   import §#A§.§,!;§;
   import §#A§.§,!>§;
   import §%f§.§2h§;
   import §0P§.§+!l§;
   import §8q§.§]d§;
   import §;"+§.§^!i§;
   import §<" §.§@!H§;
   import §<" §.§]!g§;
   import §>P§.§,3§;
   import §@!i§.§!!Y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §?!`§, §'"!§
   {
       
      
      protected var §@!U§:§^!i§;
      
      private var §[_§:MovieClip;
      
      private var § 1§:MovieClip;
      
      protected var §7n§:XML;
      
      protected var §+!j§:int;
      
      protected var §4,§:int;
      
      protected var §3!J§:String;
      
      protected var §switch§:String = "none";
      
      protected var §-!K§:String = "best";
      
      protected var §>"3§:Boolean = true;
      
      protected var §2`§:§&%§;
      
      protected var §9B§:Vector.<String>;
      
      protected var §>!F§:§,!;§;
      
      protected var §>!L§:§3!f§;
      
      protected var §>!t§:§+!l§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§+!j§ = param1;
         this.§4,§ = param2;
         this.§7n§ = param3 || <xml></xml>;
         this.§3!J§ = param4;
      }
      
      public function get id() : String
      {
         return this.§3!J§;
      }
      
      public function get §8!-§() : int
      {
         return this.§+!j§;
      }
      
      public function get priority() : int
      {
         return this.§4,§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§4,§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§2`§ && this.§2`§.§;!t§ && (this.§switch§ == §,!;§.§-"1§ || this.§switch§ == §,!;§.§?!q§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§@!U§.removeEventListener(§]!g§.§&u§,this.§>q§);
         this.§finally§();
         if(this.§2`§)
         {
            this.§2`§.dispose();
            this.§2`§ = null;
         }
         this.§@!U§.clear();
         if(this.§@!U§.mClip && this.§@!U§.mClip.parent && this.§@!U§.mClip.parent == this.§ 1§)
         {
            this.§ 1§.removeChild(this.§@!U§.mClip);
         }
         if(this.§ 1§ && this.§ 1§.parent && this.§ 1§.parent == this.§[_§)
         {
            this.§[_§.removeChild(this.§ 1§);
         }
         this.§[_§ = null;
         this.§@!U§ = null;
         if(this.§>!L§)
         {
            this.§>!L§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§@!U§.viewHeight = param2;
         this.§@!U§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§3!f§, param3:§+!l§, param4:Boolean = false) : void
      {
         this.§>!L§ = param2;
         this.§>!t§ = param3;
         this.initialize(param1);
         this.§!!S§();
         this.init();
         this.§^<§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         if(this.§@!U§)
         {
            this.§@!U§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§[_§ = param1;
         this.§@!U§ = new §^!i§(this.§7n§,null,null,null);
         this.§@!U§.addEventListener(§]!g§.§&u§,this.§>q§);
         this.§@!U§.setVisibility(true);
         this.§@!U§.setActiveStatus(true);
         this.§ 1§ = new MovieClip();
         this.§ 1§.addChild(this.§@!U§.mClip);
         this.§[_§.addChild(this.§ 1§);
         this.§@!U§.mClip.name = "Container_" + this.§@!U§.mClip.name;
         this.§9B§ = new Vector.<String>();
      }
      
      protected function §>q§(param1:§]!g§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§'%§,param1.§=P§,param1.§;;§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §]d§.§^!J§("close_popup_button_click");
               dispatchEvent(new §!!Y§(§!!Y§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§>!L§.addLocalizationTarget(this);
      }
      
      protected function §!!S§() : void
      {
         this.§9B§.push(§!!'§.§4"$§());
         this.§9B§.push(§!!'§.§5?§());
         this.§9B§.push(§!!'§.§7V§());
         this.§9B§.push(§!!'§.§5w§());
         this.§9B§.push(§!!'§.§2!^§());
         this.§9B§.push(§!!'§.§"!0§);
         this.§9B§.push(§!!'§.§<j§);
      }
      
      protected function §^<§() : void
      {
         if(this.§@!U§ == null || this.§@!U§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§ 1§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §2h§.§4!#§(_loc1_,this.§9B§,_loc2_,§2h§.§=!"§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§finally§();
         this.§2`§ = new §,!>§(param1,this.§@!U§.mClip.stage);
      }
      
      protected function §0!w§() : §,!;§
      {
         return new §,!;§(§!!'§.§4"$§(),§!!'§.§<j§,§!!'§.§"!0§,§,!;§.§>6§,this.§>"3§,this.§-!K§);
      }
      
      protected function §8!^§() : §,!;§
      {
         var _loc1_:§,!;§ = new §,!;§();
         _loc1_.§#!c§ = §!!'§.§<j§;
         _loc1_.§3!;§ = §!!'§.§"!0§;
         _loc1_.startLabel = §!!'§.§5w§();
         _loc1_.type = §,!;§.§-"1§;
         _loc1_.stageQuality = this.§-!K§;
         return _loc1_;
      }
      
      private function §9!O§(param1:Event) : void
      {
         switch(this.§switch§)
         {
            case §,!;§.§>6§:
               this.§,a§();
               break;
            case §,!;§.§-"1§:
               this.§!O§();
               break;
            case §,!;§.§?!q§:
               this.§0!u§();
         }
      }
      
      protected function §!O§() : void
      {
         var _loc1_:String = this.§switch§;
         this.§finally§();
         this.onTransitionComplete(_loc1_);
         this.§!Q§(this.§0!w§());
      }
      
      protected function §,a§() : void
      {
         this.onTransitionComplete(this.§switch§);
         if(this.§>!F§)
         {
            this.§!Q§(this.§>!F§);
            this.§>!F§ = null;
         }
      }
      
      protected function §0!u§() : void
      {
         this.§finally§();
         this.onTransitionComplete(this.§switch§);
         this.§@!U§.setVisibility(false);
         this.§8!]§();
      }
      
      protected function §!Q§(param1:§,!;§) : void
      {
         this.§finally§();
         if(this.§2`§ && param1.type != §,!;§.§!!"§)
         {
            this.§switch§ = param1.type;
            this.§2`§.addEventListener(Event.COMPLETE,this.§9!O§);
            this.§2`§.start(param1);
            this.onTransitionStart(this.§switch§);
            if(this.§>!t§)
            {
               this.§>!t§.addEventListener(§@!H§.§;I§,this.runTransition);
            }
         }
      }
      
      protected function §finally§() : void
      {
         if(this.§2`§)
         {
            this.§2`§.removeEventListener(Event.COMPLETE,this.§9!O§);
            this.§2`§.stop();
         }
         this.§switch§ = §,!;§.§!!"§;
         if(this.§>!t§)
         {
            this.§>!t§.removeEventListener(§@!H§.§;I§,this.runTransition);
         }
      }
      
      protected function §@!A§(param1:§,!;§, param2:Boolean = false) : void
      {
         if(!this.§2`§.§;!t§)
         {
            this.§!Q§(param1);
            return;
         }
         this.§>!F§ = param1;
         this.§2`§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§@!U§.setVisibility(true);
         if(param1 && this.§2`§)
         {
            this.§!Q§(this.§8!^§());
         }
         else
         {
            this.§!O§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§,!;§ = null;
         if(param1 && this.§2`§)
         {
            _loc3_ = new §,!;§();
            _loc3_.startLabel = §!!'§.§2!^§();
            _loc3_.§#!c§ = §!!'§.§<j§;
            _loc3_.§3!;§ = §!!'§.§"!0§;
            _loc3_.type = §,!;§.§?!q§;
            _loc3_.stageQuality = this.§-!K§;
            this.§@!A§(_loc3_,param2);
         }
         else
         {
            this.§finally§();
            this.§0!u§();
         }
      }
      
      protected function runTransition(param1:§@!H§) : void
      {
         if(this.§2`§ && this.§switch§ != §,!;§.§!!"§)
         {
            this.§2`§.run(param1.§7%§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §8!]§() : void
      {
         this.dispose();
         dispatchEvent(new §!!Y§(§!!Y§.§7A§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
