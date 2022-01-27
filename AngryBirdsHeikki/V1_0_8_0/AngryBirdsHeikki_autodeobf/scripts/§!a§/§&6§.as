package §!a§
{
   import § !3§.§!X§;
   import §#!+§.§"$§;
   import §;!0§.§4!I§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §&6§
   {
      
      public static const §6J§:int = 60;
      
      public static const §]&§:String = "dummyState";
      
      public static const §9`§:int = 0;
      
      public static const §'+§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §7!L§:Object = null;
       
      
      public var §36§:Boolean = false;
      
      public var §@!M§:Boolean = false;
      
      public var mName:String;
      
      public var §<!Z§:Boolean = false;
      
      public var §-!`§:Boolean = false;
      
      public var §[L§:§"$§;
      
      public var §%n§:Array;
      
      public var mNextState:String = "";
      
      public var §"!B§:Sprite = null;
      
      public var §#!Z§:§?v§ = null;
      
      public function §&6§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§%n§ = new Array();
         this.§"!B§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §&I§(param1:String) : String
      {
         if(§7!L§)
         {
            return §7!L§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§36§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§"$§ = null;
         if(!this.§36§)
         {
            this.init();
         }
         if(this.§[L§)
         {
            this.§"!B§.addChild(this.§[L§);
            this.§[L§.§6!P§();
         }
         for each(_loc1_ in this.§%n§)
         {
            this.§"!B§.addChild(_loc1_);
            _loc1_.§&!M§();
         }
         this.mNextState = "";
         this.§@!M§ = true;
      }
      
      public function §-!X§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§"$§ = null;
         if(this.§[L§)
         {
            this.§[L§.§&!M§();
            this.§"!B§.removeChild(this.§[L§);
         }
         for each(_loc1_ in this.§%n§)
         {
            _loc1_.§&!M§();
            this.§"!B§.removeChild(_loc1_);
         }
         if(!this.§@!M§)
         {
            if(this.§-!`§)
            {
               this.cleanup();
            }
            return;
         }
         this.§@!M§ = false;
         if(this.§-!`§)
         {
            this.cleanup();
         }
      }
      
      public function § M§(param1:Boolean) : void
      {
         this.§-!`§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§36§)
         {
            return;
         }
         if(this.§[L§)
         {
            this.§[L§.clear();
            this.§[L§ = null;
         }
         while(this.§%n§.length > 0)
         {
            (this.§%n§.pop() as §"$§).clear();
         }
         if(this.§@!M§)
         {
            this.deActivate();
         }
         this.§36§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§36§)
         {
            §!X§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §9`§;
         }
         if(!this.§@!M§)
         {
            §!X§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §'+§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§<!Z§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
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
      
      public function §6!F§(param1:§"$§) : void
      {
         this.§%n§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§"!B§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§"!B§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§"!B§.contains(param1);
      }
      
      public function §#!&§() : int
      {
         if(this.§#!Z§)
         {
            return this.§#!Z§.§#!&§();
         }
         return 0;
      }
      
      public function §'V§() : int
      {
         if(this.§#!Z§)
         {
            return this.§#!Z§.§'V§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§[L§)
         {
            this.§[L§.viewWidth = param1;
            this.§[L§.viewHeight = param2;
         }
      }
      
      public function §!!Y§() : int
      {
         return §6J§;
      }
   }
}
