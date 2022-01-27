package §4;§
{
   import §%!$§.§[Z§;
   import §7!X§.§7g§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import §var§.§+!^§;
   
   public class §,h§
   {
      
      public static const §=a§:int = 60;
      
      public static const §!!<§:String = "dummyState";
      
      public static const §^_§:int = 0;
      
      public static const §5!;§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § !C§:Object = null;
       
      
      public var §#!1§:Boolean = false;
      
      public var §2X§:Boolean = false;
      
      public var mName:String;
      
      public var §%A§:Boolean = false;
      
      public var §@!B§:Boolean = false;
      
      public var §2!M§:§7g§;
      
      public var §&!-§:Array;
      
      public var mNextState:String = "";
      
      public var §0b§:Sprite = null;
      
      public var §;!A§:§^]§ = null;
      
      public function §,h§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§&!-§ = new Array();
         this.§0b§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §'S§(param1:String) : String
      {
         if(§ !C§)
         {
            return § !C§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§#!1§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§7g§ = null;
         if(!this.§#!1§)
         {
            this.init();
         }
         if(this.§2!M§)
         {
            this.§0b§.addChild(this.§2!M§);
            this.§2!M§.§^"§();
         }
         for each(_loc1_ in this.§&!-§)
         {
            this.§0b§.addChild(_loc1_);
            _loc1_.§9!7§();
         }
         this.mNextState = "";
         this.§2X§ = true;
      }
      
      public function §3!D§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§7g§ = null;
         if(this.§2!M§)
         {
            this.§2!M§.§9!7§();
            this.§0b§.removeChild(this.§2!M§);
         }
         for each(_loc1_ in this.§&!-§)
         {
            _loc1_.§9!7§();
            this.§0b§.removeChild(_loc1_);
         }
         if(!this.§2X§)
         {
            if(this.§@!B§)
            {
               this.cleanup();
            }
            return;
         }
         this.§2X§ = false;
         if(this.§@!B§)
         {
            this.cleanup();
         }
      }
      
      public function § p§(param1:Boolean) : void
      {
         this.§@!B§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§#!1§)
         {
            return;
         }
         if(this.§2!M§)
         {
            this.§2!M§.clear();
            this.§2!M§ = null;
         }
         while(this.§&!-§.length > 0)
         {
            (this.§&!-§.pop() as §7g§).clear();
         }
         if(this.§2X§)
         {
            this.deActivate();
         }
         this.§#!1§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§#!1§)
         {
            §[Z§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §^_§;
         }
         if(!this.§2X§)
         {
            §[Z§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §5!;§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§%A§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
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
      
      public function §7[§(param1:§7g§) : void
      {
         this.§&!-§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§0b§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§0b§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§0b§.contains(param1);
      }
      
      public function §3m§() : int
      {
         if(this.§;!A§)
         {
            return this.§;!A§.§3m§();
         }
         return 0;
      }
      
      public function §3Y§() : int
      {
         if(this.§;!A§)
         {
            return this.§;!A§.§3Y§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2!M§)
         {
            this.§2!M§.viewWidth = param1;
            this.§2!M§.viewHeight = param2;
         }
      }
      
      public function §9u§() : int
      {
         return §=a§;
      }
   }
}
