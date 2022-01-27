package §6O§
{
   import §'!n§.§7"9§;
   import §+k§.§0"4§;
   import §0I§.§6A§;
   import §0I§.§;!0§;
   import §0I§.§<i§;
   import §0I§.§^U§;
   import §6!C§.§6E§;
   import §6B§.§?"2§;
   import §71§.§%`§;
   import §71§.§;l§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §6!x§ implements §%`§
   {
      
      public static const §<"5§:int = 60;
      
      public static const §7!-§:String = "dummyState";
      
      public static const §=!x§:int = 0;
      
      public static const §+"<§:int = 1;
      
      public static const §24§:int = 2;
      
      public static const §>!Y§:int = 3;
      
      public static var §]%§:Object = null;
       
      
      private var §5$§:Boolean = false;
      
      private var §!"&§:Boolean = false;
      
      public var mName:String;
      
      public var §5"-§:Boolean = false;
      
      protected var §+T§:String = "none";
      
      protected var §@E§:§<i§;
      
      protected var §&!E§:§6A§;
      
      protected var §]!Q§:String;
      
      protected var §,r§:Boolean = false;
      
      protected var §>m§:Boolean = true;
      
      protected var §%!]§:String = "best";
      
      public var §=D§:Boolean = false;
      
      public var §9"E§:Boolean = true;
      
      private var §#W§:Vector.<String>;
      
      protected var §,!%§:Vector.<String>;
      
      public var §-!s§:Boolean = false;
      
      public var §6!J§:§0"4§;
      
      public var §`&§:Array;
      
      private var §=^§:String = "";
      
      private var §=!u§:String = "";
      
      public var §9A§:Sprite = null;
      
      public var §49§:§@!w§ = null;
      
      protected var §3"%§:§;l§;
      
      public function §6!x§(param1:Boolean, param2:String, param3:§;l§)
      {
         super();
         this.mName = param2;
         this.§`&§ = new Array();
         this.§9A§ = new Sprite();
         this.§3"%§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §1!6§(param1:String) : String
      {
         if(§]%§)
         {
            return §]%§[param1];
         }
         return null;
      }
      
      public function get §<!C§() : String
      {
         return this.§=!u§;
      }
      
      public function get nextState() : String
      {
         return this.§=^§;
      }
      
      public function get §>!t§() : Boolean
      {
         return this.§5$§;
      }
      
      public function get §=Y§() : Boolean
      {
         return this.§!"&§;
      }
      
      private function initialize() : void
      {
         this.§#W§ = new Vector.<String>();
         this.§,!%§ = new Vector.<String>();
         this.§[c§();
         this.init();
         this.§7!>§();
         this.§`"!§();
         this.§5$§ = true;
      }
      
      protected function §[c§() : void
      {
         this.§#W§.push(§^U§.§ "2§());
         this.§#W§.push(§^U§.§"!+§());
         this.§#W§.push(§^U§.§7!K§());
         this.§#W§.push(§^U§.§^v§());
         this.§#W§.push(§^U§.§ !G§());
         this.§#W§.push(§^U§.§ !2§);
         this.§#W§.push(§^U§.§]!i§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §`"!§() : void
      {
      }
      
      private function §7!>§() : void
      {
         if(this.§6!J§ == null || this.§6!J§.container == null || this.§6!J§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§6!J§.container.mClip;
         var _loc2_:Vector.<String> = this.§#W§.concat(this.§,!%§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §7"9§.§[A§(_loc1_,_loc2_,_loc3_,§7"9§.§^4§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§&!E§ = new §;!0§(param1,this.§9A§.stage);
      }
      
      private function §!!n§(param1:MouseEvent) : void
      {
         this.§3!c§(false);
         if(this.§+T§ == §<i§.§4!>§)
         {
            this.§=D§ = true;
         }
         this.§&!E§.stop(false);
      }
      
      private function §3!c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9A§.addEventListener(MouseEvent.CLICK,this.§!!n§);
         }
         else
         {
            this.§9A§.removeEventListener(MouseEvent.CLICK,this.§!!n§);
         }
         this.§9A§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§0"4§ = null;
         this.§=!u§ = param1;
         if(!this.§5$§)
         {
            this.initialize();
         }
         if(this.§6!J§)
         {
            this.§9A§.addChild(this.§6!J§);
            this.§6!J§.§="6§();
         }
         for each(_loc2_ in this.§`&§)
         {
            this.§9A§.addChild(_loc2_);
            _loc2_.§>n§();
         }
         this.§=^§ = "";
         this.§!"&§ = true;
      }
      
      public function § 5§(param1:Boolean) : void
      {
         var _loc2_:§<i§ = null;
         if(this.§,r§ && !param1)
         {
            _loc2_ = new §<i§();
            _loc2_.§0!f§ = §^U§.§]!i§;
            _loc2_.§@!K§ = §^U§.§ !2§;
            _loc2_.startLabel = §^U§.§^v§(this.§=!u§);
            _loc2_.type = §<i§.§+!i§;
            _loc2_.stageQuality = this.§%!]§;
            this.§+o§(_loc2_);
         }
         else
         {
            this.§&T§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§0"4§ = null;
         this.§4#§();
         if(this.§6!J§)
         {
            this.§6!J§.§>n§();
            this.§9A§.removeChild(this.§6!J§);
         }
         for each(_loc1_ in this.§`&§)
         {
            _loc1_.§>n§();
            this.§9A§.removeChild(_loc1_);
         }
         if(!this.§!"&§)
         {
            if(this.§-!s§)
            {
               this.cleanup();
            }
            return;
         }
         this.§!"&§ = false;
         if(this.§-!s§)
         {
            this.cleanup();
         }
      }
      
      private function §+o§(param1:§<i§) : void
      {
         this.§4#§();
         if(this.§&!E§ && param1.type != §<i§.§9,§)
         {
            this.§+T§ = param1.type;
            this.§&!E§.addEventListener(Event.COMPLETE,this.§`!D§);
            this.§&!E§.start(param1);
            if(this.§+T§ == §<i§.§+!i§ || this.§+T§ == §<i§.§4!>§)
            {
               if(this.§9"E§)
               {
                  this.§3!c§(true);
               }
            }
            this.onTransitionStart(this.§+T§);
         }
      }
      
      private function §4#§() : void
      {
         if(this.§&!E§)
         {
            this.§&!E§.removeEventListener(Event.COMPLETE,this.§`!D§);
            this.§&!E§.stop();
         }
         this.§+T§ = §<i§.§9,§;
         this.§3!c§(false);
      }
      
      private function §`!D§(param1:Event) : void
      {
         switch(this.§+T§)
         {
            case §<i§.§5]§:
               this.§5!$§();
               break;
            case §<i§.§+!i§:
               this.§&T§();
               break;
            case §<i§.§4!>§:
               this.§!i§();
         }
      }
      
      private function §5!$§() : void
      {
         this.onTransitionComplete(this.§+T§);
         if(this.§@E§)
         {
            this.§+o§(this.§@E§);
            this.§@E§ = null;
         }
      }
      
      private function §!i§() : void
      {
         this.onTransitionComplete(this.§+T§);
         this.§4#§();
         this.§=^§ = this.§]!Q§;
         this.§]!Q§ = "";
      }
      
      private function §&T§() : void
      {
         this.onTransitionComplete(this.§+T§);
         this.§4#§();
         var _loc1_:§<i§ = new §<i§(§^U§.§ "2§(),§^U§.§]!i§,§^U§.§ !2§,§<i§.§5]§,this.§>m§,this.§%!]§);
         this.§+o§(_loc1_);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §^j§(param1:§<i§, param2:Boolean = false) : void
      {
         if(!this.§&!E§.§6!3§)
         {
            this.§+o§(param1);
            return;
         }
         this.§@E§ = param1;
         this.§&!E§.stop(param2);
      }
      
      protected final function §'Q§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§<i§ = null;
         if(param2)
         {
            (_loc4_ = new §<i§()).startLabel = §^U§.§ !G§(param1);
            _loc4_.§0!f§ = §^U§.§]!i§;
            _loc4_.§@!K§ = §^U§.§ !2§;
            _loc4_.type = §<i§.§4!>§;
            _loc4_.stageQuality = this.§%!]§;
            this.§^j§(_loc4_,param3);
            this.§]!Q§ = param1;
         }
         else
         {
            this.§4#§();
            this.§]!Q§ = "";
            this.§=^§ = param1;
         }
      }
      
      public function §+!5§(param1:Boolean) : void
      {
         this.§-!s§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§5$§)
         {
            return;
         }
         if(this.§6!J§)
         {
            this.§6!J§.clear();
            this.§6!J§ = null;
         }
         while(this.§`&§.length > 0)
         {
            (this.§`&§.pop() as §0"4§).clear();
         }
         if(this.§!"&§)
         {
            this.deActivate();
         }
         this.§5$§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§5$§)
         {
            §6E§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §=!x§;
         }
         if(!this.§!"&§)
         {
            §6E§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §+"<§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§=^§ != "")
         {
            return §>!Y§;
         }
         return §24§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§&!E§ && this.§+T§ != §<i§.§9,§)
         {
            this.§&!E§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§5"-§;
      }
      
      public final function §>!f§(param1:int, param2:String, param3:§?"2§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§&!E§ && this.§&!E§.§6!3§ && (this.§+T§ == §<i§.§+!i§ || this.§+T§ == §<i§.§4!>§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function §#"A§(param1:§0"4§) : void
      {
         this.§`&§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§9A§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§9A§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§9A§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§49§)
         {
            return this.§49§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§49§)
         {
            return this.§49§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§6!J§)
         {
            this.§6!J§.viewWidth = param1;
            this.§6!J§.viewHeight = param2;
         }
      }
      
      public function §,!3§() : int
      {
         return §<"5§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
