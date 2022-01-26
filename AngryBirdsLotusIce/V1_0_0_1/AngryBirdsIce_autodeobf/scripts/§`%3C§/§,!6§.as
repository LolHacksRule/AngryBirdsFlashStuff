package §`<§
{
   import §'m§.§^S§;
   import §87§.§]T§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import §in§.§%K§;
   
   public class §,!6§
   {
      
      public static const §[c§:int = 60;
      
      public static const §#4§:String = "dummyState";
      
      public static const §5I§:int = 0;
      
      public static const §[!B§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §#G§:Object = null;
       
      
      public var §7V§:Boolean = false;
      
      public var §57§:Boolean = false;
      
      public var mName:String;
      
      public var §8H§:Boolean = false;
      
      public var §'!5§:Boolean = false;
      
      public var §<o§:§]T§;
      
      public var §8d§:Array;
      
      public var mNextState:String = "";
      
      public var §+x§:Sprite = null;
      
      public var §#!E§:§7^§ = null;
      
      public function §,!6§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§8d§ = new Array();
         this.§+x§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §`e§(param1:String) : String
      {
         if(§#G§)
         {
            return §#G§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§7V§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§]T§ = null;
         if(!this.§7V§)
         {
            this.init();
         }
         if(this.§<o§)
         {
            this.§+x§.addChild(this.§<o§);
            this.§<o§.§'X§();
         }
         for each(_loc1_ in this.§8d§)
         {
            this.§+x§.addChild(_loc1_);
            _loc1_.§=!B§();
         }
         this.mNextState = "";
         this.§57§ = true;
      }
      
      public function §6?§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§]T§ = null;
         if(this.§<o§)
         {
            this.§<o§.§=!B§();
            this.§+x§.removeChild(this.§<o§);
         }
         for each(_loc1_ in this.§8d§)
         {
            _loc1_.§=!B§();
            this.§+x§.removeChild(_loc1_);
         }
         if(!this.§57§)
         {
            if(this.§'!5§)
            {
               this.cleanup();
            }
            return;
         }
         this.§57§ = false;
         if(this.§'!5§)
         {
            this.cleanup();
         }
      }
      
      public function §;k§(param1:Boolean) : void
      {
         this.§'!5§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§7V§)
         {
            return;
         }
         if(this.§<o§)
         {
            this.§<o§.clear();
            this.§<o§ = null;
         }
         while(this.§8d§.length > 0)
         {
            (this.§8d§.pop() as §]T§).clear();
         }
         if(this.§57§)
         {
            this.deActivate();
         }
         this.§7V§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§7V§)
         {
            §^S§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §5I§;
         }
         if(!this.§57§)
         {
            §^S§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §[!B§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8H§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
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
      
      public function §]k§(param1:§]T§) : void
      {
         this.§8d§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§+x§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§+x§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§+x§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§#!E§)
         {
            return this.§#!E§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§#!E§)
         {
            return this.§#!E§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§<o§)
         {
            this.§<o§.viewWidth = param1;
            this.§<o§.viewHeight = param2;
         }
      }
      
      public function §]<§() : int
      {
         return §[c§;
      }
   }
}
