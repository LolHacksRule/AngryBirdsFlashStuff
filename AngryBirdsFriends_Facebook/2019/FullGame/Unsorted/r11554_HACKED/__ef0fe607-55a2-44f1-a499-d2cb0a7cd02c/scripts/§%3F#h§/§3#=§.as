package §?#h§
{
   import § "q§.§&Q§;
   import § "q§.§5!?§;
   import § "q§.§=$'§;
   import § "q§.§@!'§;
   import §%#v§.§?!F§;
   import §+#B§.§#q§;
   import §3"G§.§1!N§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §9#K§.§=#f§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §3#=§ implements §1!N§
   {
      
      public static const §6!E§:int = 60;
      
      public static const §&#N§:String = "dummyState";
      
      public static const §4#<§:int = 0;
      
      public static const §'"G§:int = 1;
      
      public static const §<#4§:int = 2;
      
      public static const §6#z§:int = 3;
      
      public static var §+y§:Object = null;
       
      
      private var §;#O§:Boolean = false;
      
      private var §;#c§:Boolean = false;
      
      public var §-!O§:String;
      
      public var §^H§:Boolean = false;
      
      protected var §@#F§:String = "none";
      
      protected var §##6§:§@!'§;
      
      protected var §[$2§:§5!?§;
      
      protected var §+#R§:String;
      
      protected var §[!w§:Boolean = false;
      
      protected var §'#h§:Boolean = true;
      
      protected var §0x§:String = "best";
      
      public var §'"2§:Boolean = false;
      
      public var §1"<§:Boolean = true;
      
      private var §+$<§:Vector.<String>;
      
      protected var §!D§:Vector.<String>;
      
      public var §5s§:Boolean = false;
      
      public var §<"`§:§?!F§;
      
      public var §?#H§:Array;
      
      private var §9;§:String = "";
      
      private var §6"h§:String = "";
      
      public var § U§:Sprite = null;
      
      public var §,#>§:§1!j§ = null;
      
      protected var §1#@§:§16§;
      
      public function §3#=§(param1:Boolean, param2:String, param3:§16§)
      {
         super();
         this.§-!O§ = param2;
         this.§?#H§ = new Array();
         this.§ U§ = new Sprite();
         this.§1#@§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §9!]§(param1:String) : String
      {
         if(§+y§)
         {
            return §+y§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§6"h§;
      }
      
      public function get nextState() : String
      {
         return this.§9;§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§;#O§;
      }
      
      public function get §6$%§() : Boolean
      {
         return this.§;#c§;
      }
      
      private function initialize() : void
      {
         this.§+$<§ = new Vector.<String>();
         this.§!D§ = new Vector.<String>();
         this.§%"7§();
         this.init();
         this.§;$B§();
         this.§>!n§();
         this.§;#O§ = true;
      }
      
      protected function §%"7§() : void
      {
         this.§+$<§.push(§&Q§.§'"p§());
         this.§+$<§.push(§&Q§.§0$E§());
         this.§+$<§.push(§&Q§.§^!0§());
         this.§+$<§.push(§&Q§.§&#v§());
         this.§+$<§.push(§&Q§.§6#5§());
         this.§+$<§.push(§&Q§.§]#r§);
         this.§+$<§.push(§&Q§.§8"w§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §>!n§() : void
      {
      }
      
      private function §;$B§() : void
      {
         if(this.§<"`§ == null || this.§<"`§.container == null || this.§<"`§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§<"`§.container.mClip;
         var _loc2_:Vector.<String> = this.§+$<§.concat(this.§!D§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §#q§.§`#"§(_loc1_,_loc2_,_loc3_,§#q§.§%"+§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§[$2§ = new §=$'§(param1,this.§ U§.stage);
      }
      
      private function §="%§(param1:MouseEvent) : void
      {
         this.§>#j§(false);
         if(this.§@#F§ == §@!'§.§ !H§)
         {
            this.§'"2§ = true;
         }
         this.§[$2§.stop(false);
      }
      
      private function §>#j§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ U§.addEventListener(MouseEvent.CLICK,this.§="%§);
         }
         else
         {
            this.§ U§.removeEventListener(MouseEvent.CLICK,this.§="%§);
         }
         this.§ U§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§?!F§ = null;
         this.§6"h§ = param1;
         if(!this.§;#O§)
         {
            this.initialize();
         }
         if(this.§<"`§)
         {
            this.§ U§.addChild(this.§<"`§);
            this.§<"`§.activateView();
         }
         for each(_loc2_ in this.§?#H§)
         {
            this.§ U§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§9;§ = "";
         this.§;#c§ = true;
      }
      
      public function §6l§(param1:Boolean) : void
      {
         var _loc2_:§@!'§ = null;
         if(this.§[!w§ && !param1)
         {
            _loc2_ = new §@!'§();
            _loc2_.§[#_§ = §&Q§.§8"w§;
            _loc2_.§`$A§ = §&Q§.§]#r§;
            _loc2_.startLabel = §&Q§.§&#v§(this.§6"h§);
            _loc2_.type = §@!'§.§1"V§;
            _loc2_.stageQuality = this.§0x§;
            this.§""7§(_loc2_);
         }
         else
         {
            this.§6N§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§?!F§ = null;
         this.§-#q§();
         if(this.§<"`§)
         {
            this.§<"`§.deactivateView();
            this.§ U§.removeChild(this.§<"`§);
         }
         for each(_loc1_ in this.§?#H§)
         {
            _loc1_.deactivateView();
            this.§ U§.removeChild(_loc1_);
         }
         if(!this.§;#c§)
         {
            if(this.§5s§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;#c§ = false;
         if(this.§5s§)
         {
            this.cleanup();
         }
      }
      
      private function §""7§(param1:§@!'§) : void
      {
         this.§-#q§();
         if(this.§[$2§ && param1.type != §@!'§.§,u§)
         {
            this.§@#F§ = param1.type;
            this.§8n§(param1);
            this.§[$2§.addEventListener(Event.COMPLETE,this.§ !1§);
            this.§[$2§.start(param1);
            if(this.§@#F§ == §@!'§.§1"V§ || this.§@#F§ == §@!'§.§ !H§)
            {
               if(this.§1"<§)
               {
                  this.§>#j§(true);
               }
            }
            this.onTransitionStart(this.§@#F§);
         }
      }
      
      protected function §8n§(param1:§@!'§) : void
      {
      }
      
      private function §-#q§() : void
      {
         if(this.§[$2§)
         {
            this.§[$2§.removeEventListener(Event.COMPLETE,this.§ !1§);
            this.§[$2§.stop();
         }
         this.§@#F§ = §@!'§.§,u§;
         this.§>#j§(false);
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
      
      private function §,"y§() : void
      {
         this.§8!Q§(this.§@#F§);
         if(this.§##6§)
         {
            this.§""7§(this.§##6§);
            this.§##6§ = null;
         }
      }
      
      private function §0#,§() : void
      {
         this.§8!Q§(this.§@#F§);
         this.§-#q§();
         this.§9;§ = this.§+#R§;
         this.§+#R§ = "";
      }
      
      private function §6N§() : void
      {
         this.§8!Q§(this.§@#F§);
         this.§-#q§();
         this.§""7§(this.§[o§());
      }
      
      protected function §[o§() : §@!'§
      {
         return new §@!'§(§&Q§.§'"p§(),§&Q§.§8"w§,§&Q§.§]#r§,§@!'§.§ F§,this.§'#h§,this.§0x§);
      }
      
      protected function §8!Q§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
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
      
      protected function §%D§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§@!'§ = null;
         if(param2)
         {
            (_loc4_ = new §@!'§()).startLabel = §&Q§.§6#5§(param1);
            _loc4_.§[#_§ = §&Q§.§8"w§;
            _loc4_.§`$A§ = §&Q§.§]#r§;
            _loc4_.type = §@!'§.§ !H§;
            _loc4_.stageQuality = this.§0x§;
            this.§^#z§(_loc4_,param3);
            this.§+#R§ = param1;
         }
         else
         {
            this.§-#q§();
            this.§+#R§ = "";
            this.§9;§ = param1;
         }
      }
      
      public function §6#S§(param1:Boolean) : void
      {
         this.§5s§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§;#O§)
         {
            return;
         }
         if(this.§<"`§)
         {
            this.§<"`§.clear();
            this.§<"`§ = null;
         }
         while(this.§?#H§.length > 0)
         {
            (this.§?#H§.pop() as §?!F§).clear();
         }
         if(this.§;#c§)
         {
            this.deActivate();
         }
         this.§;#O§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§;#O§)
         {
            §=#f§.log("WARNING: State -> run() method is called when state is not ready: " + this.§-!O§);
            return §4#<§;
         }
         if(!this.§;#c§)
         {
            §=#f§.log("WARNING: State -> run() method is called when state is not active: " + this.§-!O§);
            return §'"G§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§9;§ != "")
         {
            return §6#z§;
         }
         return §<#4§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§[$2§ && this.§@#F§ != §@!'§.§,u§)
         {
            this.§[$2§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§^H§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§'!,§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§[$2§ && this.§[$2§.§="+§ && (this.§@#F§ == §@!'§.§1"V§ || this.§@#F§ == §@!'§.§ !H§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
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
      
      public function §7#m§(param1:§?!F§) : void
      {
         this.§?#H§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§ U§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§ U§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§ U§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§,#>§)
         {
            return this.§,#>§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§,#>§)
         {
            return this.§,#>§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§<"`§)
         {
            this.§<"`§.viewWidth = param1;
            this.§<"`§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §6!E§;
      }
      
      public function §#0§() : void
      {
      }
   }
}
