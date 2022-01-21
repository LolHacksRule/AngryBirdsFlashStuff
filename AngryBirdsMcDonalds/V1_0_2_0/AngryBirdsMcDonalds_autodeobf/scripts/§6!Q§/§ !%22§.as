package §6!Q§
{
   import §"%§.§,!n§;
   import §=<§.§1+§;
   import §@`§.§>!S§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class § !"§
   {
      
      public static const §3!^§:int = 60;
      
      public static const §+!4§:String = "dummyState";
      
      public static const §[9§:int = 0;
      
      public static const §!x§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §'!"§:Object = null;
       
      
      public var §^U§:Boolean = false;
      
      public var §@!`§:Boolean = false;
      
      public var mName:String;
      
      public var §5!5§:Boolean = false;
      
      public var §]!E§:Boolean = false;
      
      public var mUIView:§>!S§;
      
      public var §-C§:Array;
      
      public var mNextState:String = "";
      
      public var §`n§:Sprite = null;
      
      public var §]t§:§"!H§ = null;
      
      public function § !"§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§-C§ = new Array();
         this.§`n§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §'!a§(param1:String) : String
      {
         if(§'!"§)
         {
            return §'!"§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§^U§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§>!S§ = null;
         if(!this.§^U§)
         {
            this.init();
         }
         if(this.mUIView)
         {
            this.§`n§.addChild(this.mUIView);
            this.mUIView.§<!L§();
         }
         for each(_loc1_ in this.§-C§)
         {
            this.§`n§.addChild(_loc1_);
            _loc1_.§6!b§();
         }
         this.mNextState = "";
         this.§@!`§ = true;
      }
      
      public function §6"§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§>!S§ = null;
         if(this.mUIView)
         {
            this.mUIView.§6!b§();
            this.§`n§.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.§-C§)
         {
            _loc1_.§6!b§();
            this.§`n§.removeChild(_loc1_);
         }
         if(!this.§@!`§)
         {
            if(this.§]!E§)
            {
               this.cleanup();
            }
            return;
         }
         this.§@!`§ = false;
         if(this.§]!E§)
         {
            this.cleanup();
         }
      }
      
      public function §8w§(param1:Boolean) : void
      {
         this.§]!E§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§^U§)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.§-C§.length > 0)
         {
            (this.§-C§.pop() as §>!S§).clear();
         }
         if(this.§@!`§)
         {
            this.deActivate();
         }
         this.§^U§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§^U§)
         {
            §1+§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §[9§;
         }
         if(!this.§@!`§)
         {
            §1+§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §!x§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§5!5§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
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
      
      public function §6;§(param1:§>!S§) : void
      {
         this.§-C§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§`n§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§`n§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§`n§.contains(param1);
      }
      
      public function §4P§() : int
      {
         if(this.§]t§)
         {
            return this.§]t§.§4P§();
         }
         return 0;
      }
      
      public function §^n§() : int
      {
         if(this.§]t§)
         {
            return this.§]t§.§^n§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.mUIView)
         {
            this.mUIView.viewWidth = param1;
            this.mUIView.viewHeight = param2;
         }
      }
      
      public function §1f§() : int
      {
         return §3!^§;
      }
   }
}
