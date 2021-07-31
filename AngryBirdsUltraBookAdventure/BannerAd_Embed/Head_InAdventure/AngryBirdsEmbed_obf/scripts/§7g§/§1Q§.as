package §7g§
{
   import §-!D§.§4!,§;
   import §0!#§.§-P§;
   import §3a§.§7!+§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §1Q§
   {
      
      public static const §;!<§:int = 60;
      
      public static const §5+§:String = "dummyState";
      
      public static const §`K§:int = 0;
      
      public static const §1!6§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §%!8§:Object = null;
       
      
      public var §+_§:Boolean = false;
      
      public var §`!L§:Boolean = false;
      
      public var mName:String;
      
      public var §>M§:Boolean = false;
      
      public var §,!A§:Boolean = false;
      
      public var §]F§:§4!,§;
      
      public var §=!"§:Array;
      
      public var mNextState:String = "";
      
      public var §,!7§:Sprite = null;
      
      public var §<1§:§`!8§ = null;
      
      public function §1Q§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§=!"§ = new Array();
         this.§,!7§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §'a§(param1:String) : String
      {
         if(§%!8§)
         {
            return §%!8§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§+_§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§4!,§ = null;
         if(!this.§+_§)
         {
            this.init();
         }
         if(this.§]F§)
         {
            this.§,!7§.addChild(this.§]F§);
            this.§]F§.§@2§();
         }
         for each(_loc1_ in this.§=!"§)
         {
            this.§,!7§.addChild(_loc1_);
            _loc1_.§^!§();
         }
         this.mNextState = "";
         this.§`!L§ = true;
      }
      
      public function §^7§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§4!,§ = null;
         if(this.§]F§)
         {
            this.§]F§.§^!§();
            this.§,!7§.removeChild(this.§]F§);
         }
         for each(_loc1_ in this.§=!"§)
         {
            _loc1_.§^!§();
            this.§,!7§.removeChild(_loc1_);
         }
         if(!this.§`!L§)
         {
            if(this.§,!A§)
            {
               this.cleanup();
            }
            return;
         }
         this.§`!L§ = false;
         if(this.§,!A§)
         {
            this.cleanup();
         }
      }
      
      public function §#!L§(param1:Boolean) : void
      {
         this.§,!A§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§+_§)
         {
            return;
         }
         if(this.§]F§)
         {
            this.§]F§.clear();
            this.§]F§ = null;
         }
         while(this.§=!"§.length > 0)
         {
            (this.§=!"§.pop() as §4!,§).clear();
         }
         if(this.§`!L§)
         {
            this.deActivate();
         }
         this.§+_§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§+_§)
         {
            §7!+§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §`K§;
         }
         if(!this.§`!L§)
         {
            §7!+§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §1!6§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§>M§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
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
      
      public function §<!>§(param1:§4!,§) : void
      {
         this.§=!"§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§,!7§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§,!7§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§,!7§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§<1§)
         {
            return this.§<1§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§<1§)
         {
            return this.§<1§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§]F§)
         {
            this.§]F§.viewWidth = param1;
            this.§]F§.viewHeight = param2;
         }
      }
      
      public function §"!§() : int
      {
         return §;!<§;
      }
   }
}
