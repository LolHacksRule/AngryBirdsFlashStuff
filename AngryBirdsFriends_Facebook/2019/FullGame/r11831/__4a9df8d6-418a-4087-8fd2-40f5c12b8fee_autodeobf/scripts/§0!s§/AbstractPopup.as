package §0!s§
{
   import § !j§.§1"_§;
   import § !j§.§4#c§;
   import §!"'§.§0"Z§;
   import §!"'§.§2"?§;
   import §#,§.§ "o§;
   import §#,§.§]$+§;
   import §&!_§.§'"G§;
   import §&m§.§#U§;
   import §'M§.§"Z§;
   import §,!Q§.§6"n§;
   import §8#K§.§3Z§;
   import §?"Q§.§+"Q§;
   import §?"Q§.§2!Z§;
   import §?"Q§.§5"@§;
   import §?"Q§.§;$=§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §5!-§, §1"_§
   {
       
      
      protected var §&!M§:§]$+§;
      
      private var §6#`§:MovieClip;
      
      private var §[6§:MovieClip;
      
      protected var §8#f§:XML;
      
      protected var §&"'§:int;
      
      protected var §&#a§:int;
      
      protected var mId:String;
      
      protected var §"#f§:String = "none";
      
      protected var §^!,§:String = "best";
      
      protected var §6!^§:Boolean = true;
      
      protected var §5!?§:§5"@§;
      
      protected var §"!!§:Vector.<String>;
      
      protected var §&4§:§2!Z§;
      
      protected var §+" §:§4#c§;
      
      protected var §0"L§:§#U§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§&"'§ = param1;
         this.§&#a§ = param2;
         this.§8#f§ = param3 || <xml></xml>;
         this.mId = param4;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §^#l§() : int
      {
         return this.§&"'§;
      }
      
      public function get priority() : int
      {
         return this.§&#a§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§&#a§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§5!?§ && this.§5!?§.§!!A§ && (this.§"#f§ == §2!Z§.§%$§ || this.§"#f§ == §2!Z§.§@K§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§&!M§.removeEventListener(§0"Z§.§0#,§,this.§;"[§);
         this.§6'§();
         if(this.§5!?§)
         {
            this.§5!?§.dispose();
            this.§5!?§ = null;
         }
         this.§&!M§.clear();
         if(this.§&!M§.mClip && this.§&!M§.mClip.parent && this.§&!M§.mClip.parent == this.§[6§)
         {
            this.§[6§.removeChild(this.§&!M§.mClip);
         }
         if(this.§[6§ && this.§[6§.parent && this.§[6§.parent == this.§6#`§)
         {
            this.§6#`§.removeChild(this.§[6§);
         }
         this.§6#`§ = null;
         this.§&!M§ = null;
         if(this.§+" §)
         {
            this.§+" §.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§&!M§.viewHeight = param2;
         this.§&!M§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§4#c§, param3:§#U§, param4:Boolean = false) : void
      {
         this.§+" § = param2;
         this.§0"L§ = param3;
         this.initialize(param1);
         this.§''§();
         this.init();
         this.§2$>§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(this.§&!M§)
         {
            if(param2)
            {
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
            }
            this.§&!M§.setEnabled(false);
            this.hide(param1);
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§6#`§ = param1;
         this.§&!M§ = § "o§.§>!<§(this.§8#f§,null,null,null);
         this.§&!M§.addEventListener(§0"Z§.§0#,§,this.§;"[§);
         this.§&!M§.setVisibility(true);
         this.§&!M§.setActiveStatus(true);
         this.§[6§ = new MovieClip();
         this.§[6§.addChild(this.§&!M§.mClip);
         this.§6#`§.addChild(this.§[6§);
         this.§&!M§.mClip.name = "Container_" + this.§&!M§.mClip.name;
         this.§"!!§ = new Vector.<String>();
         this.§6#`§.tabChildren = false;
      }
      
      protected function §;"[§(param1:§0"Z§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.eventIndex,param1.eventName,param1.component);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               dispatchEvent(new §"Z§(§"Z§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§+" §.addLocalizationTarget(this);
      }
      
      protected function §''§() : void
      {
         this.§"!!§.push(§+"Q§.§+#[§());
         this.§"!!§.push(§+"Q§.§+!h§());
         this.§"!!§.push(§+"Q§.§,"z§());
         this.§"!!§.push(§+"Q§.§,H§());
         this.§"!!§.push(§+"Q§.§8>§());
         this.§"!!§.push(§+"Q§.§5i§);
         this.§"!!§.push(§+"Q§.§!!9§);
      }
      
      protected function §2$>§() : void
      {
         if(this.§&!M§ == null || this.§&!M§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§[6§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §'"G§.§]"A§(_loc1_,this.§"!!§,_loc2_,§'"G§.§&!!§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§6'§();
         this.§5!?§ = new §;$=§(param1,this.§&!M§.mClip.stage);
      }
      
      protected function §"#s§() : §2!Z§
      {
         return new §2!Z§(§+"Q§.§+#[§(),§+"Q§.§!!9§,§+"Q§.§5i§,§2!Z§.§1M§,this.§6!^§,this.§^!,§);
      }
      
      protected function §%"b§() : §2!Z§
      {
         var _loc1_:§2!Z§ = new §2!Z§();
         _loc1_.§5";§ = §+"Q§.§!!9§;
         _loc1_.§1$"§ = §+"Q§.§5i§;
         _loc1_.startLabel = §+"Q§.§,H§();
         _loc1_.type = §2!Z§.§%$§;
         _loc1_.stageQuality = this.§^!,§;
         return _loc1_;
      }
      
      private function §"!t§(param1:Event) : void
      {
         switch(this.§"#f§)
         {
            case §2!Z§.§1M§:
               this.§5!c§();
               break;
            case §2!Z§.§%$§:
               this.§3!Z§();
               break;
            case §2!Z§.§@K§:
               this.§`!2§();
         }
      }
      
      protected function §3!Z§() : void
      {
         var _loc1_:String = this.§"#f§;
         this.§6'§();
         this.§=#B§(_loc1_);
         this.§4"b§(this.§"#s§());
         dispatchEvent(new §"Z§(§"Z§.§?!D§,this));
      }
      
      protected function §5!c§() : void
      {
         this.§=#B§(this.§"#f§);
         if(this.§&4§)
         {
            this.§4"b§(this.§&4§);
            this.§&4§ = null;
         }
      }
      
      protected function §`!2§() : void
      {
         this.§6'§();
         this.§=#B§(this.§"#f§);
         this.§&!M§.setVisibility(false);
         this.§ #,§();
      }
      
      protected function §4"b§(param1:§2!Z§) : void
      {
         this.§6'§();
         if(this.§5!?§ && param1.type != §2!Z§.§7"4§)
         {
            this.§"#f§ = param1.type;
            this.§5!?§.addEventListener(Event.COMPLETE,this.§"!t§);
            this.§5!?§.start(param1);
            this.onTransitionStart(this.§"#f§);
            if(this.§0"L§)
            {
               this.§0"L§.addEventListener(§2"?§.§?#Y§,this.§-$=§);
            }
         }
      }
      
      protected function §6'§() : void
      {
         if(this.§5!?§)
         {
            this.§5!?§.removeEventListener(Event.COMPLETE,this.§"!t§);
            this.§5!?§.stop();
         }
         this.§"#f§ = §2!Z§.§7"4§;
         if(this.§0"L§)
         {
            this.§0"L§.removeEventListener(§2"?§.§?#Y§,this.§-$=§);
         }
      }
      
      protected function §]x§(param1:§2!Z§, param2:Boolean = false) : void
      {
         if(!this.§5!?§.§!!A§)
         {
            this.§4"b§(param1);
            return;
         }
         this.§&4§ = param1;
         this.§5!?§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§&!M§.setVisibility(true);
         if(param1 && this.§5!?§)
         {
            this.§4"b§(this.§%"b§());
         }
         else
         {
            this.§3!Z§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§2!Z§ = null;
         if(param1 && this.§5!?§)
         {
            _loc3_ = new §2!Z§();
            _loc3_.startLabel = §+"Q§.§8>§();
            _loc3_.§5";§ = §+"Q§.§!!9§;
            _loc3_.§1$"§ = §+"Q§.§5i§;
            _loc3_.type = §2!Z§.§@K§;
            _loc3_.stageQuality = this.§^!,§;
            this.§]x§(_loc3_,param2);
         }
         else
         {
            this.§6'§();
            this.§`!2§();
         }
      }
      
      protected function §-$=§(param1:§2"?§) : void
      {
         if(this.§5!?§ && this.§"#f§ != §2!Z§.§7"4§)
         {
            this.§5!?§.run(param1.§ #N§);
         }
      }
      
      protected function §=#B§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function § #,§() : void
      {
         this.dispose();
         dispatchEvent(new §"Z§(§"Z§.§=#m§,this));
      }
      
      public function §1!S§() : void
      {
      }
   }
}
