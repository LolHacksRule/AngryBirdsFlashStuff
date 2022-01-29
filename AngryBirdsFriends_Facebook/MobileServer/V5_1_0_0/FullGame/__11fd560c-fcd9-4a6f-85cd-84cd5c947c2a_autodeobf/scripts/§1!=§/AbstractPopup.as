package §1!=§
{
   import §!$;§.§8#F§;
   import §3"I§.§ E§;
   import §3"I§.§?#N§;
   import §3#T§.§'§;
   import §5P§.§""C§;
   import §5P§.§6#j§;
   import §<h§.§<!a§;
   import §<h§.§[#K§;
   import §?"f§.§!Y§;
   import §?"f§.§0!+§;
   import §?"f§.§2x§;
   import §?"f§.§7"3§;
   import §@!M§.§!"p§;
   import §@l§.§6$9§;
   import §`7§.§+#b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §%#;§, §6#j§
   {
       
      
      protected var §,#2§:§[#K§;
      
      private var §4"y§:MovieClip;
      
      private var §0s§:MovieClip;
      
      protected var §["[§:XML;
      
      protected var §7$9§:int;
      
      protected var §7#G§:int;
      
      protected var mId:String;
      
      protected var §7"q§:String = "none";
      
      protected var §&r§:String = "best";
      
      protected var §?#5§:Boolean = true;
      
      protected var §2#R§:§0!+§;
      
      protected var §8$-§:Vector.<String>;
      
      protected var §?"c§:§!Y§;
      
      protected var §1a§:§""C§;
      
      protected var §'#g§:§6$9§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§7$9§ = param1;
         this.§7#G§ = param2;
         this.§["[§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §&!=§() : int
      {
         return this.§7$9§;
      }
      
      public function get priority() : int
      {
         return this.§7#G§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§7#G§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§2#R§ && this.§2#R§.§=#0§ && (this.§7"q§ == §!Y§.§6[§ || this.§7"q§ == §!Y§.§>$?§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§,#2§.removeEventListener(§ E§.§=$1§,this.§=%§);
         this.§0$@§();
         if(this.§2#R§)
         {
            this.§2#R§.dispose();
            this.§2#R§ = null;
         }
         this.§,#2§.clear();
         if(this.§,#2§.mClip && this.§,#2§.mClip.parent && this.§,#2§.mClip.parent == this.§0s§)
         {
            this.§0s§.removeChild(this.§,#2§.mClip);
         }
         if(this.§0s§ && this.§0s§.parent && this.§0s§.parent == this.§4"y§)
         {
            this.§4"y§.removeChild(this.§0s§);
         }
         this.§4"y§ = null;
         this.§,#2§ = null;
         if(this.§1a§)
         {
            this.§1a§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§,#2§.viewHeight = param2;
         this.§,#2§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§""C§, param3:§6$9§, param4:Boolean = false) : void
      {
         this.§1a§ = param2;
         this.§'#g§ = param3;
         this.initialize(param1);
         this.§<"J§();
         this.init();
         this.§"!R§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§,#2§)
         {
            if(param2)
            {
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
            }
            this.§,#2§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§4"y§ = param1;
         this.§,#2§ = §<!a§.§=#,§(this.§["[§,null,null,null);
         this.§,#2§.addEventListener(§ E§.§=$1§,this.§=%§);
         this.§,#2§.setVisibility(true);
         this.§,#2§.setActiveStatus(true);
         this.§0s§ = new MovieClip();
         this.§0s§.addChild(this.§,#2§.mClip);
         this.§4"y§.addChild(this.§0s§);
         this.§,#2§.mClip.name = "Container_" + this.§,#2§.mClip.name;
         this.§8$-§ = new Vector.<String>();
         this.§4"y§.tabChildren = false;
      }
      
      protected function §=%§(param1:§ E§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §8#F§(§8#F§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§1a§.addLocalizationTarget(this);
      }
      
      protected function §<"J§() : void
      {
         this.§8$-§.push(§7"3§.§7>§());
         this.§8$-§.push(§7"3§.§3#%§());
         this.§8$-§.push(§7"3§.§ !%§());
         this.§8$-§.push(§7"3§.§[+§());
         this.§8$-§.push(§7"3§.§66§());
         this.§8$-§.push(§7"3§.§`"§);
         this.§8$-§.push(§7"3§.§]0§);
      }
      
      protected function §"!R§() : void
      {
         if(this.§,#2§ == null || this.§,#2§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§0s§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §+#b§.§+"v§(_loc1_,this.§8$-§,_loc2_,§+#b§.§1!3§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§0$@§();
         this.§2#R§ = new §2x§(param1,this.§,#2§.mClip.stage);
      }
      
      protected function §?"4§() : §!Y§
      {
         return new §!Y§(§7"3§.§7>§(),§7"3§.§]0§,§7"3§.§`"§,§!Y§.§[,§,this.§?#5§,this.§&r§);
      }
      
      protected function §[u§() : §!Y§
      {
         var _loc1_:§!Y§ = new §!Y§();
         _loc1_.§9_§ = §7"3§.§]0§;
         _loc1_.§8v§ = §7"3§.§`"§;
         _loc1_.startLabel = §7"3§.§[+§();
         _loc1_.type = §!Y§.§6[§;
         _loc1_.stageQuality = this.§&r§;
         return _loc1_;
      }
      
      private function §@"x§(param1:Event) : void
      {
         switch(this.§7"q§)
         {
            case §!Y§.§[,§:
               this.§9^§();
               break;
            case §!Y§.§6[§:
               this.§@o§();
               break;
            case §!Y§.§>$?§:
               this.§3f§();
         }
      }
      
      protected function §@o§() : void
      {
         var _loc1_:String = this.§7"q§;
         this.§0$@§();
         this.§%X§(_loc1_);
         this.§?"F§(this.§?"4§());
         dispatchEvent(new §8#F§(§8#F§.§;^§,this));
      }
      
      protected function §9^§() : void
      {
         this.§%X§(this.§7"q§);
         if(this.§?"c§)
         {
            this.§?"F§(this.§?"c§);
            this.§?"c§ = null;
         }
      }
      
      protected function §3f§() : void
      {
         this.§0$@§();
         this.§%X§(this.§7"q§);
         this.§,#2§.setVisibility(false);
         this.§<#y§();
      }
      
      protected function §?"F§(param1:§!Y§) : void
      {
         this.§0$@§();
         if(this.§2#R§ && param1.type != §!Y§.§9?§)
         {
            this.§7"q§ = param1.type;
            this.§2#R§.addEventListener(Event.COMPLETE,this.§@"x§);
            this.§2#R§.start(param1);
            this.onTransitionStart(this.§7"q§);
            if(this.§'#g§)
            {
               this.§'#g§.addEventListener(§?#N§.§1!I§,this.§&"G§);
            }
         }
      }
      
      protected function §0$@§() : void
      {
         if(this.§2#R§)
         {
            this.§2#R§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§2#R§.stop();
         }
         this.§7"q§ = §!Y§.§9?§;
         if(this.§'#g§)
         {
            this.§'#g§.removeEventListener(§?#N§.§1!I§,this.§&"G§);
         }
      }
      
      protected function §5!7§(param1:§!Y§, param2:Boolean = false) : void
      {
         if(!this.§2#R§.§=#0§)
         {
            this.§?"F§(param1);
            return;
         }
         this.§?"c§ = param1;
         this.§2#R§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§,#2§.setVisibility(true);
         if(param1 && this.§2#R§)
         {
            this.§?"F§(this.§[u§());
         }
         else
         {
            this.§@o§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§!Y§ = null;
         if(param1 && this.§2#R§)
         {
            _loc3_ = new §!Y§();
            _loc3_.startLabel = §7"3§.§66§();
            _loc3_.§9_§ = §7"3§.§]0§;
            _loc3_.§8v§ = §7"3§.§`"§;
            _loc3_.type = §!Y§.§>$?§;
            _loc3_.stageQuality = this.§&r§;
            this.§5!7§(_loc3_,param2);
         }
         else
         {
            this.§0$@§();
            this.§3f§();
         }
      }
      
      protected function §&"G§(param1:§?#N§) : void
      {
         if(this.§2#R§ && this.§7"q§ != §!Y§.§9?§)
         {
            this.§2#R§.run(param1.§8!^§);
         }
      }
      
      protected function §%X§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §<#y§() : void
      {
         this.dispose();
         dispatchEvent(new §8#F§(§8#F§.§^$4§,this));
      }
      
      public function §3"!§() : void
      {
      }
   }
}
