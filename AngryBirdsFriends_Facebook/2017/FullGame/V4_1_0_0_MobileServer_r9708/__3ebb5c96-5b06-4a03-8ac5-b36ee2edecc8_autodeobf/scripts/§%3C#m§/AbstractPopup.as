package §<#m§
{
   import §%#A§.§4"2§;
   import §%#A§.§]!_§;
   import §&$!§.§+#!§;
   import §&$!§.§[r§;
   import §1#W§.§!#&§;
   import §4$<§.§?§;
   import §6V§.§?#y§;
   import §<"1§.§'"S§;
   import §<"P§.§[#$§;
   import §<o§.§3h§;
   import §<o§.§7"P§;
   import §]@§.§+#Z§;
   import §]@§.§-!l§;
   import §]@§.§6Z§;
   import §]@§.§8"A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §!"<§, §[r§
   {
       
      
      protected var §1"6§:§]!_§;
      
      private var §@!3§:MovieClip;
      
      private var §]p§:MovieClip;
      
      protected var §]!$§:XML;
      
      protected var §;!%§:int;
      
      protected var §'#z§:int;
      
      protected var mId:String;
      
      protected var §%!b§:String = "none";
      
      protected var §'"4§:String = "best";
      
      protected var §9<§:Boolean = true;
      
      protected var § !t§:§6Z§;
      
      protected var §9%§:Vector.<String>;
      
      protected var §0#w§:§8"A§;
      
      protected var §-"Q§:§+#!§;
      
      protected var §8#0§:§[#$§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§;!%§ = param1;
         this.§'#z§ = param2;
         this.§]!$§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §>!s§() : int
      {
         return this.§;!%§;
      }
      
      public function get priority() : int
      {
         return this.§'#z§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§'#z§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§ !t§ && this.§ !t§.§'!D§ && (this.§%!b§ == §8"A§.§+"Z§ || this.§%!b§ == §8"A§.§7?§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§1"6§.removeEventListener(§3h§.§9"L§,this.§^"u§);
         this.§@$&§();
         if(this.§ !t§)
         {
            this.§ !t§.dispose();
            this.§ !t§ = null;
         }
         this.§1"6§.clear();
         if(this.§1"6§.mClip && this.§1"6§.mClip.parent && this.§1"6§.mClip.parent == this.§]p§)
         {
            this.§]p§.removeChild(this.§1"6§.mClip);
         }
         if(this.§]p§ && this.§]p§.parent && this.§]p§.parent == this.§@!3§)
         {
            this.§@!3§.removeChild(this.§]p§);
         }
         this.§@!3§ = null;
         this.§1"6§ = null;
         if(this.§-"Q§)
         {
            this.§-"Q§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§1"6§.viewHeight = param2;
         this.§1"6§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§+#!§, param3:§[#$§, param4:Boolean = false) : void
      {
         this.§-"Q§ = param2;
         this.§8#0§ = param3;
         this.initialize(param1);
         this.§7#C§();
         this.init();
         this.§#!t§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§1"6§)
         {
            if(param2)
            {
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
            }
            this.§1"6§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§@!3§ = param1;
         this.§1"6§ = §4"2§.§ !R§(this.§]!$§,null,null,null);
         this.§1"6§.addEventListener(§3h§.§9"L§,this.§^"u§);
         this.§1"6§.setVisibility(true);
         this.§1"6§.setActiveStatus(true);
         this.§]p§ = new MovieClip();
         this.§]p§.addChild(this.§1"6§.mClip);
         this.§@!3§.addChild(this.§]p§);
         this.§1"6§.mClip.name = "Container_" + this.§1"6§.mClip.name;
         this.§9%§ = new Vector.<String>();
         this.§@!3§.tabChildren = false;
      }
      
      protected function §^"u§(param1:§3h§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §?#7§(§?#7§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§-"Q§.addLocalizationTarget(this);
      }
      
      protected function §7#C§() : void
      {
         this.§9%§.push(§+#Z§.§]#@§());
         this.§9%§.push(§+#Z§.§="-§());
         this.§9%§.push(§+#Z§.§8E§());
         this.§9%§.push(§+#Z§.§0$2§());
         this.§9%§.push(§+#Z§.§3#I§());
         this.§9%§.push(§+#Z§.§>";§);
         this.§9%§.push(§+#Z§.§0#s§);
      }
      
      protected function §#!t§() : void
      {
         if(this.§1"6§ == null || this.§1"6§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§]p§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §?#y§.§-"s§(_loc1_,this.§9%§,_loc2_,§?#y§.§?#F§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§@$&§();
         this.§ !t§ = new §-!l§(param1,this.§1"6§.mClip.stage);
      }
      
      protected function §"!w§() : §8"A§
      {
         return new §8"A§(§+#Z§.§]#@§(),§+#Z§.§0#s§,§+#Z§.§>";§,§8"A§.§+!f§,this.§9<§,this.§'"4§);
      }
      
      protected function §!# §() : §8"A§
      {
         var _loc1_:§8"A§ = new §8"A§();
         _loc1_.§16§ = §+#Z§.§0#s§;
         _loc1_.§2#s§ = §+#Z§.§>";§;
         _loc1_.startLabel = §+#Z§.§0$2§();
         _loc1_.type = §8"A§.§+"Z§;
         _loc1_.stageQuality = this.§'"4§;
         return _loc1_;
      }
      
      private function §`!i§(param1:Event) : void
      {
         switch(this.§%!b§)
         {
            case §8"A§.§+!f§:
               this.§!#c§();
               break;
            case §8"A§.§+"Z§:
               this.§^"o§();
               break;
            case §8"A§.§7?§:
               this.§ #O§();
         }
      }
      
      protected function §^"o§() : void
      {
         var _loc1_:String = this.§%!b§;
         this.§@$&§();
         this.§&"r§(_loc1_);
         this.§"!e§(this.§"!w§());
         dispatchEvent(new §?#7§(§?#7§.§,!v§,this));
      }
      
      protected function §!#c§() : void
      {
         this.§&"r§(this.§%!b§);
         if(this.§0#w§)
         {
            this.§"!e§(this.§0#w§);
            this.§0#w§ = null;
         }
      }
      
      protected function § #O§() : void
      {
         this.§@$&§();
         this.§&"r§(this.§%!b§);
         this.§1"6§.setVisibility(false);
         this.§3#o§();
      }
      
      protected function §"!e§(param1:§8"A§) : void
      {
         this.§@$&§();
         if(this.§ !t§ && param1.type != §8"A§.§^"'§)
         {
            this.§%!b§ = param1.type;
            this.§ !t§.addEventListener(Event.COMPLETE,this.§`!i§);
            this.§ !t§.start(param1);
            this.onTransitionStart(this.§%!b§);
            if(this.§8#0§)
            {
               this.§8#0§.addEventListener(§7"P§.§,"!§,this.§6"f§);
            }
         }
      }
      
      protected function §@$&§() : void
      {
         if(this.§ !t§)
         {
            this.§ !t§.removeEventListener(Event.COMPLETE,this.§`!i§);
            this.§ !t§.stop();
         }
         this.§%!b§ = §8"A§.§^"'§;
         if(this.§8#0§)
         {
            this.§8#0§.removeEventListener(§7"P§.§,"!§,this.§6"f§);
         }
      }
      
      protected function §?$-§(param1:§8"A§, param2:Boolean = false) : void
      {
         if(!this.§ !t§.§'!D§)
         {
            this.§"!e§(param1);
            return;
         }
         this.§0#w§ = param1;
         this.§ !t§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§1"6§.setVisibility(true);
         if(param1 && this.§ !t§)
         {
            this.§"!e§(this.§!# §());
         }
         else
         {
            this.§^"o§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§8"A§ = null;
         if(param1 && this.§ !t§)
         {
            _loc3_ = new §8"A§();
            _loc3_.startLabel = §+#Z§.§3#I§();
            _loc3_.§16§ = §+#Z§.§0#s§;
            _loc3_.§2#s§ = §+#Z§.§>";§;
            _loc3_.type = §8"A§.§7?§;
            _loc3_.stageQuality = this.§'"4§;
            this.§?$-§(_loc3_,param2);
         }
         else
         {
            this.§@$&§();
            this.§ #O§();
         }
      }
      
      protected function §6"f§(param1:§7"P§) : void
      {
         if(this.§ !t§ && this.§%!b§ != §8"A§.§^"'§)
         {
            this.§ !t§.run(param1.§+$;§);
         }
      }
      
      protected function §&"r§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §3#o§() : void
      {
         this.dispose();
         dispatchEvent(new §?#7§(§?#7§.§7#o§,this));
      }
      
      public function §>#k§() : void
      {
      }
   }
}
