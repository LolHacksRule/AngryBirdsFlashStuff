package §7!H§
{
   import § !Y§.§",§;
   import §#!b§.§'y§;
   import §%!r§.§1`§;
   import §%!r§.§3!'§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §77§.§ ",§;
   import §<!X§.§09§;
   import §<!X§.§7C§;
   import §<!X§.§;"8§;
   import §<!X§.§]d§;
   import §<W§.§!!u§;
   import §<W§.§]"+§;
   import §^r§.§@!T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §3z§, §1`§
   {
       
      
      protected var §[S§:§ ",§;
      
      private var §,!w§:MovieClip;
      
      private var §5E§:MovieClip;
      
      protected var §6J§:XML;
      
      protected var §?"<§:int;
      
      protected var §6z§:int;
      
      protected var §[!o§:String;
      
      protected var §0§:String = "none";
      
      protected var §?"G§:String = "best";
      
      protected var §#!j§:Boolean = true;
      
      protected var §-!w§:§09§;
      
      protected var §9i§:Vector.<String>;
      
      protected var §"f§:§7C§;
      
      protected var §7Z§:§3!'§;
      
      protected var §3!+§:§'y§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super();
         this.§?"<§ = param1;
         this.§6z§ = param2;
         this.§6J§ = param3 || <xml></xml>;
         this.§[!o§ = param4;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function get §<!]§() : int
      {
         return this.§?"<§;
      }
      
      public function get priority() : int
      {
         return this.§6z§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§6z§ = param1;
      }
      
      public function get isTransitioning() : Boolean
      {
         if(this.§-!w§ && this.§-!w§.§=!"§ && (this.§0§ == §7C§.§?x§ || this.§0§ == §7C§.§>">§))
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         this.§[S§.removeEventListener(§]"+§.§`!C§,this.§;'§);
         this.§#'§();
         if(this.§-!w§)
         {
            this.§-!w§.dispose();
            this.§-!w§ = null;
         }
         this.§[S§.clear();
         if(this.§[S§.mClip && this.§[S§.mClip.parent && this.§[S§.mClip.parent == this.§5E§)
         {
            this.§5E§.removeChild(this.§[S§.mClip);
         }
         if(this.§5E§ && this.§5E§.parent && this.§5E§.parent == this.§,!w§)
         {
            this.§,!w§.removeChild(this.§5E§);
         }
         this.§,!w§ = null;
         this.§[S§ = null;
         if(this.§7Z§)
         {
            this.§7Z§.removeLocalizationTarget(this);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§[S§.viewHeight = param2;
         this.§[S§.viewWidth = param1;
      }
      
      public final function open(param1:MovieClip, param2:§3!'§, param3:§'y§, param4:Boolean = false) : void
      {
         this.§7Z§ = param2;
         this.§3!+§ = param3;
         this.initialize(param1);
         this.§["4§();
         this.init();
         this.§2f§();
         this.show(param4);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         this.§[S§.setEnabled(false);
         this.hide(param1);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         this.§,!w§ = param1;
         this.§[S§ = new § ",§(this.§6J§,null,null,null);
         this.§[S§.addEventListener(§]"+§.§`!C§,this.§;'§);
         this.§[S§.setVisibility(true);
         this.§[S§.setActiveStatus(true);
         this.§5E§ = new MovieClip();
         this.§5E§.addChild(this.§[S§.mClip);
         this.§,!w§.addChild(this.§5E§);
         this.§[S§.mClip.name = "Container_" + this.§[S§.mClip.name;
         this.§9i§ = new Vector.<String>();
      }
      
      protected function §;'§(param1:§]"+§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1.§ !e§,param1.§9X§,param1.§"!X§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2.toUpperCase())
         {
            case "CLOSE":
               §<!O§.playSound("close_popup_button_click");
               dispatchEvent(new §@!T§(§@!T§.CLOSE,this));
         }
      }
      
      protected function init() : void
      {
         this.§7Z§.addLocalizationTarget(this);
      }
      
      protected function §["4§() : void
      {
         this.§9i§.push(§]d§.§>"=§());
         this.§9i§.push(§]d§.§%"<§());
         this.§9i§.push(§]d§.§>!u§());
         this.§9i§.push(§]d§.§7L§());
         this.§9i§.push(§]d§.§ P§());
         this.§9i§.push(§]d§.§"!3§);
         this.§9i§.push(§]d§.§1q§);
      }
      
      protected function §2f§() : void
      {
         if(this.§[S§ == null || this.§[S§.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§5E§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §",§.§80§(_loc1_,this.§9i§,_loc2_,§",§.§0!'§);
         if(_loc2_.length == 0)
         {
            return;
         }
         this.createTransition(_loc2_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§#'§();
         this.§-!w§ = new §;"8§(param1,this.§[S§.mClip.stage);
      }
      
      protected function §9^§() : §7C§
      {
         return new §7C§(§]d§.§>"=§(),§]d§.§1q§,§]d§.§"!3§,§7C§.§@!=§,this.§#!j§,this.§?"G§);
      }
      
      protected function §>!X§() : §7C§
      {
         var _loc1_:§7C§ = new §7C§();
         _loc1_.§%!D§ = §]d§.§1q§;
         _loc1_.§>!F§ = §]d§.§"!3§;
         _loc1_.startLabel = §]d§.§7L§();
         _loc1_.type = §7C§.§?x§;
         _loc1_.stageQuality = this.§?"G§;
         return _loc1_;
      }
      
      private function §0"2§(param1:Event) : void
      {
         switch(this.§0§)
         {
            case §7C§.§@!=§:
               this.§5w§();
               break;
            case §7C§.§?x§:
               this.§3"9§();
               break;
            case §7C§.§>">§:
               this.§9"B§();
         }
      }
      
      protected function §3"9§() : void
      {
         var _loc1_:String = this.§0§;
         this.§#'§();
         this.onTransitionComplete(_loc1_);
         this.§;!5§(this.§9^§());
      }
      
      protected function §5w§() : void
      {
         this.onTransitionComplete(this.§0§);
         if(this.§"f§)
         {
            this.§;!5§(this.§"f§);
            this.§"f§ = null;
         }
      }
      
      protected function §9"B§() : void
      {
         this.§#'§();
         this.onTransitionComplete(this.§0§);
         this.§[S§.setVisibility(false);
         this.§9"7§();
      }
      
      protected function §;!5§(param1:§7C§) : void
      {
         this.§#'§();
         if(this.§-!w§ && param1.type != §7C§.§-!Z§)
         {
            this.§0§ = param1.type;
            this.§-!w§.addEventListener(Event.COMPLETE,this.§0"2§);
            this.§-!w§.start(param1,true);
            this.onTransitionStart(this.§0§);
            if(this.§3!+§)
            {
               this.§3!+§.addEventListener(§!!u§.§8!Q§,this.runTransition);
            }
         }
      }
      
      protected function §#'§() : void
      {
         if(this.§-!w§)
         {
            this.§-!w§.removeEventListener(Event.COMPLETE,this.§0"2§);
            this.§-!w§.stop();
         }
         this.§0§ = §7C§.§-!Z§;
         if(this.§3!+§)
         {
            this.§3!+§.removeEventListener(§!!u§.§8!Q§,this.runTransition);
         }
      }
      
      protected function §>S§(param1:§7C§, param2:Boolean = false) : void
      {
         if(!this.§-!w§.§=!"§)
         {
            this.§;!5§(param1);
            return;
         }
         this.§"f§ = param1;
         this.§-!w§.stop(param2);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         this.§[S§.setVisibility(true);
         if(param1 && this.§-!w§)
         {
            this.§;!5§(this.§>!X§());
         }
         else
         {
            this.§3"9§();
         }
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§7C§ = null;
         if(param1 && this.§-!w§)
         {
            _loc3_ = new §7C§();
            _loc3_.startLabel = §]d§.§ P§();
            _loc3_.§%!D§ = §]d§.§1q§;
            _loc3_.§>!F§ = §]d§.§"!3§;
            _loc3_.type = §7C§.§>">§;
            _loc3_.stageQuality = this.§?"G§;
            this.§>S§(_loc3_,param2);
         }
         else
         {
            this.§#'§();
            this.§9"B§();
         }
      }
      
      protected function runTransition(param1:§!!u§) : void
      {
         if(this.§-!w§ && this.§0§ != §7C§.§-!Z§)
         {
            this.§-!w§.run(param1.§^;§);
         }
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §9"7§() : void
      {
         this.dispose();
         dispatchEvent(new §@!T§(§@!T§.§7!l§,this));
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
