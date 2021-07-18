package §^!,§
{
   import §'!U§.§0!?§;
   import §'U§.§6!B§;
   import §'U§.§]#[§;
   import §1"0§.§4$#§;
   import §1#T§.§ #<§;
   import §1#T§.§ #@§;
   import §1#T§.§+L§;
   import §1#T§.§3"+§;
   import §3!T§.§3">§;
   import §3!T§.§5"8§;
   import §6"r§.§#j§;
   import §6"r§.§0"<§;
   import §8§.§#$+§;
   import §<!'§.§ "6§;
   import §>!#§.§?#I§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §8!H§, §6!B§
   {
       
      
      protected var §7!j§:§0"<§;
      
      private var §@#_§:MovieClip;
      
      private var §?!n§:MovieClip;
      
      protected var §+!&§:XML;
      
      protected var §]"E§:int;
      
      protected var §,"H§:int;
      
      protected var mId:String;
      
      protected var §,#^§:String = "none";
      
      protected var §7!X§:String = "best";
      
      protected var §9D§:Boolean = true;
      
      protected var §]!g§:§ #@§;
      
      protected var §]"&§:Vector.<String>;
      
      protected var §8R§:§ #<§;
      
      protected var §'#w§:§]#[§;
      
      protected var §9"h§:§ "6§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§]"E§ = param1;
         this.§,"H§ = param2;
         this.§+!&§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get § $<§() : int
      {
         return this.§]"E§;
      }
      
      public function get priority() : int
      {
         return this.§,"H§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§,"H§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§]!g§ && this.§]!g§.§!f§ && (this.§,#^§ == § #<§.§+"r§ || this.§,#^§ == § #<§.§ #§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§7!j§.removeEventListener(§3">§.§6!3§,this.§>"Z§);
         this.§@!<§();
         if(this.§]!g§)
         {
            this.§]!g§.dispose();
            this.§]!g§ = null;
         }
         this.§7!j§.clear();
         if(this.§7!j§.mClip && this.§7!j§.mClip.parent && this.§7!j§.mClip.parent == this.§?!n§)
         {
            this.§?!n§.removeChild(this.§7!j§.mClip);
         }
         if(this.§?!n§ && this.§?!n§.parent && this.§?!n§.parent == this.§@#_§)
         {
            this.§@#_§.removeChild(this.§?!n§);
         }
         this.§@#_§ = null;
         this.§7!j§ = null;
         if(this.§'#w§)
         {
            this.§'#w§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§7!j§.viewHeight = param2;
         this.§7!j§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§]#[§, param3:§ "6§, param4:Boolean = false) : void
      {
         this.§'#w§ = param2;
         this.§9"h§ = param3;
         this.initialize(param1);
         this.§'0§();
         this.init();
         this.§ F§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§7!j§)
         {
            if(param2)
            {
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
            }
            this.§7!j§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§@#_§ = param1;
         this.§7!j§ = §#j§.§const§(this.§+!&§,null,null,null);
         this.§7!j§.addEventListener(§3">§.§6!3§,this.§>"Z§);
         this.§7!j§.setVisibility(true);
         this.§7!j§.setActiveStatus(true);
         this.§?!n§ = new MovieClip();
         this.§?!n§.addChild(this.§7!j§.mClip);
         this.§@#_§.addChild(this.§?!n§);
         this.§7!j§.mClip.name = "Container_" + this.§7!j§.mClip.name;
         this.§]"&§ = new Vector.<String>();
         this.§@#_§.tabChildren = false;
      }
      
      protected function §>"Z§(param1:§3">§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§##I§,param1.eventName,param1.§##M§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §4$#§(§4$#§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§'#w§.addLocalizationTarget(this);
      }
      
      protected function §'0§() : void
      {
         this.§]"&§.push(§+L§.§&!2§());
         this.§]"&§.push(§+L§.§'F§());
         this.§]"&§.push(§+L§.§"$,§());
         this.§]"&§.push(§+L§.§0I§());
         this.§]"&§.push(§+L§.§7"1§());
         this.§]"&§.push(§+L§.§&W§);
         this.§]"&§.push(§+L§.§-z§);
      }
      
      protected function § F§() : void
      {
         if(this.§7!j§ == null || this.§7!j§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§?!n§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §?#I§.§0^§(_loc1_,this.§]"&§,_loc2_,§?#I§.§+#%§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§@!<§();
         this.§]!g§ = new §3"+§(param1,this.§7!j§.mClip.stage);
      }
      
      protected function §["Y§() : § #<§
      {
         return new § #<§(§+L§.§&!2§(),§+L§.§-z§,§+L§.§&W§,§ #<§.§8#9§,this.§9D§,this.§7!X§);
      }
      
      protected function §if §() : § #<§
      {
         var _loc1_:§ #<§ = new § #<§();
         _loc1_.§!#F§ = §+L§.§-z§;
         _loc1_.§]!y§ = §+L§.§&W§;
         _loc1_.startLabel = §+L§.§0I§();
         _loc1_.type = § #<§.§+"r§;
         _loc1_.stageQuality = this.§7!X§;
         return _loc1_;
      }
      
      private function §&$;§(param1:Event) : void
      {
         switch(this.§,#^§)
         {
            case § #<§.§8#9§:
               this.§?!!§();
               break;
            case § #<§.§+"r§:
               this.§#!>§();
               break;
            case § #<§.§ #§:
               this.§2D§();
         }
      }
      
      protected function §#!>§() : void
      {
         var _loc1_:String = this.§,#^§;
         this.§@!<§();
         this.§2l§(_loc1_);
         this.§^!'§(this.§["Y§());
         dispatchEvent(new §4$#§(§4$#§.§ n§,this));
      }
      
      protected function §?!!§() : void
      {
         this.§2l§(this.§,#^§);
         if(this.§8R§)
         {
            this.§^!'§(this.§8R§);
            this.§8R§ = null;
         }
      }
      
      protected function §2D§() : void
      {
         this.§@!<§();
         this.§2l§(this.§,#^§);
         this.§7!j§.setVisibility(false);
         this.§>"5§();
      }
      
      protected function §^!'§(param1:§ #<§) : void
      {
         this.§@!<§();
         if(this.§]!g§ && param1.type != § #<§.§?`§)
         {
            this.§,#^§ = param1.type;
            this.§]!g§.addEventListener(Event.COMPLETE,this.§&$;§);
            this.§]!g§.start(param1);
            this.onTransitionStart(this.§,#^§);
            if(this.§9"h§)
            {
               this.§9"h§.addEventListener(§5"8§.§>#x§,this.§6"O§);
            }
         }
      }
      
      protected function §@!<§() : void
      {
         if(this.§]!g§)
         {
            this.§]!g§.removeEventListener(Event.COMPLETE,this.§&$;§);
            this.§]!g§.stop();
         }
         this.§,#^§ = § #<§.§?`§;
         if(this.§9"h§)
         {
            this.§9"h§.removeEventListener(§5"8§.§>#x§,this.§6"O§);
         }
      }
      
      protected function §,G§(param1:§ #<§, param2:Boolean = false) : void
      {
         if(!this.§]!g§.§!f§)
         {
            this.§^!'§(param1);
            return;
         }
         this.§8R§ = param1;
         this.§]!g§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§7!j§.setVisibility(true);
         if(param1 && this.§]!g§)
         {
            this.§^!'§(this.§if §());
         }
         else
         {
            this.§#!>§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§ #<§ = null;
         if(param1 && this.§]!g§)
         {
            _loc3_ = new § #<§();
            _loc3_.startLabel = §+L§.§7"1§();
            _loc3_.§!#F§ = §+L§.§-z§;
            _loc3_.§]!y§ = §+L§.§&W§;
            _loc3_.type = § #<§.§ #§;
            _loc3_.stageQuality = this.§7!X§;
            this.§,G§(_loc3_,param2);
         }
         else
         {
            this.§@!<§();
            this.§2D§();
         }
      }
      
      protected function §6"O§(param1:§5"8§) : void
      {
         if(this.§]!g§ && this.§,#^§ != § #<§.§?`§)
         {
            this.§]!g§.run(param1.§8B§);
         }
      }
      
      protected function §2l§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §>"5§() : void
      {
         this.dispose();
         dispatchEvent(new §4$#§(§4$#§.§%#l§,this));
      }
      
      public function §3F§() : void
      {
      }
   }
}
