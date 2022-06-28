package §8!H§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §9![§
   {
      
      public static const §+I§:int = 60;
      
      public static const §4h§:String = "dummyState";
      
      public static const §^J§:int = 0;
      
      public static const §7!_§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §?!4§:Object = null;
       
      
      public var §]!E§:Boolean = false;
      
      public var §7!#§:Boolean = false;
      
      public var mName:String;
      
      public var §-O§:Boolean = false;
      
      public var §#! §:Boolean = false;
      
      public var §'!Q§:§&!G§;
      
      public var §4v§:Array;
      
      public var mNextState:String = "";
      
      public var §]2§:Sprite = null;
      
      public var §>!X§:§6!o§ = null;
      
      public function §9![§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§4v§ = new Array();
         this.§]2§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §+!1§(param1:String) : String
      {
         if(§?!4§)
         {
            return §?!4§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§]!E§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§&!G§ = null;
         if(!this.§]!E§)
         {
            this.init();
         }
         if(this.§'!Q§)
         {
            this.§]2§.addChild(this.§'!Q§);
            this.§'!Q§.activateView();
         }
         for each(_loc1_ in this.§4v§)
         {
            this.§]2§.addChild(_loc1_);
            _loc1_.§^!M§();
         }
         this.mNextState = "";
         this.§7!#§ = true;
      }
      
      public function §4B§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§&!G§ = null;
         if(this.§'!Q§)
         {
            this.§'!Q§.§^!M§();
            this.§]2§.removeChild(this.§'!Q§);
         }
         for each(_loc1_ in this.§4v§)
         {
            _loc1_.§^!M§();
            this.§]2§.removeChild(_loc1_);
         }
         if(!this.§7!#§)
         {
            if(this.§#! §)
            {
               this.cleanup();
            }
            return;
         }
         this.§7!#§ = false;
         if(this.§#! §)
         {
            this.cleanup();
         }
      }
      
      public function §8^§(param1:Boolean) : void
      {
         this.§#! § = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§]!E§)
         {
            return;
         }
         if(this.§'!Q§)
         {
            this.§'!Q§.clear();
            this.§'!Q§ = null;
         }
         while(this.§4v§.length > 0)
         {
            (this.§4v§.pop() as §&!G§).clear();
         }
         if(this.§7!#§)
         {
            this.deActivate();
         }
         this.§]!E§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§]!E§)
         {
            §<m§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §^J§;
         }
         if(!this.§7!#§)
         {
            §<m§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §7!_§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§-O§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
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
      
      public function §95§(param1:§&!G§) : void
      {
         this.§4v§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]2§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]2§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]2§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§>!X§)
         {
            return this.§>!X§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§>!X§)
         {
            return this.§>!X§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§'!Q§)
         {
            this.§'!Q§.viewWidth = param1;
            this.§'!Q§.viewHeight = param2;
         }
      }
      
      public function §@!;§() : int
      {
         return §+I§;
      }
   }
}
