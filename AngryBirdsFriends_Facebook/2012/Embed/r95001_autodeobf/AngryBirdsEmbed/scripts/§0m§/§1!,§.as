package §0m§
{
   import §0u§.§&]§;
   import §6!,§.§[H§;
   import §9H§.§@M§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §1!,§
   {
      
      public static const §^o§:int = 60;
      
      public static const §+g§:String = "dummyState";
      
      public static const §]Y§:int = 0;
      
      public static const §4^§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §#s§:Object = null;
       
      
      public var §7+§:Boolean = false;
      
      public var §`!C§:Boolean = false;
      
      public var mName:String;
      
      public var §6!#§:Boolean = false;
      
      public var §?L§:Boolean = false;
      
      public var §`k§:§[H§;
      
      public var §7I§:Array;
      
      public var mNextState:String = "";
      
      public var §8!!§:Sprite = null;
      
      public var §-!"§:§"!9§ = null;
      
      public function §1!,§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§7I§ = new Array();
         this.§8!!§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §`-§(param1:String) : String
      {
         if(§#s§)
         {
            return §#s§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§7+§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§[H§ = null;
         if(!this.§7+§)
         {
            this.init();
         }
         if(this.§`k§)
         {
            this.§8!!§.addChild(this.§`k§);
            this.§`k§.§"!B§();
         }
         for each(_loc1_ in this.§7I§)
         {
            this.§8!!§.addChild(_loc1_);
            _loc1_.§'y§();
         }
         this.mNextState = "";
         this.§`!C§ = true;
      }
      
      public function §<!&§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§[H§ = null;
         if(this.§`k§)
         {
            this.§`k§.§'y§();
            this.§8!!§.removeChild(this.§`k§);
         }
         for each(_loc1_ in this.§7I§)
         {
            _loc1_.§'y§();
            this.§8!!§.removeChild(_loc1_);
         }
         if(!this.§`!C§)
         {
            if(this.§?L§)
            {
               this.cleanup();
            }
            return;
         }
         this.§`!C§ = false;
         if(this.§?L§)
         {
            this.cleanup();
         }
      }
      
      public function §,!6§(param1:Boolean) : void
      {
         this.§?L§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§7+§)
         {
            return;
         }
         if(this.§`k§)
         {
            this.§`k§.clear();
            this.§`k§ = null;
         }
         while(this.§7I§.length > 0)
         {
            (this.§7I§.pop() as §[H§).clear();
         }
         if(this.§`!C§)
         {
            this.deActivate();
         }
         this.§7+§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§7+§)
         {
            §@M§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §]Y§;
         }
         if(!this.§`!C§)
         {
            §@M§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §4^§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§6!#§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
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
      
      public function §<'§(param1:§[H§) : void
      {
         this.§7I§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§8!!§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§8!!§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8!!§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§-!"§)
         {
            return this.§-!"§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§-!"§)
         {
            return this.§-!"§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`k§)
         {
            this.§`k§.viewWidth = param1;
            this.§`k§.viewHeight = param2;
         }
      }
      
      public function §2Y§() : int
      {
         return §^o§;
      }
   }
}
