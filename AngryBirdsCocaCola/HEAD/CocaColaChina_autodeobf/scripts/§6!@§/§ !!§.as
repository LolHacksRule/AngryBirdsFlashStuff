package §6!@§
{
   import §'!G§.§1C§;
   import §7]§.§;T§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class § !!§
   {
      
      public static const §&!S§:int = 60;
      
      public static const §<!3§:String = "dummyState";
      
      public static const §#8§:int = 0;
      
      public static const §<X§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §<!5§:Object = null;
       
      
      public var §#4§:Boolean = false;
      
      public var §'[§:Boolean = false;
      
      public var mName:String;
      
      public var §`7§:Boolean = false;
      
      public var §@!-§:Boolean = false;
      
      public var §5!R§:§^R§;
      
      public var §0B§:Array;
      
      public var mNextState:String = "";
      
      public var §]!+§:Sprite = null;
      
      public var §<!O§:§4!V§ = null;
      
      public function § !!§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§0B§ = new Array();
         this.§]!+§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function getApplicationParameter(param1:String) : String
      {
         if(§<!5§)
         {
            return §<!5§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§#4§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§^R§ = null;
         if(!this.§#4§)
         {
            this.init();
         }
         if(this.§5!R§)
         {
            this.§]!+§.addChild(this.§5!R§);
            this.§5!R§.§0Z§();
         }
         for each(_loc1_ in this.§0B§)
         {
            this.§]!+§.addChild(_loc1_);
            _loc1_.§-!_§();
         }
         this.mNextState = "";
         this.§'[§ = true;
      }
      
      public function §^D§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§^R§ = null;
         if(this.§5!R§)
         {
            this.§5!R§.§-!_§();
            this.§]!+§.removeChild(this.§5!R§);
         }
         for each(_loc1_ in this.§0B§)
         {
            _loc1_.§-!_§();
            this.§]!+§.removeChild(_loc1_);
         }
         if(!this.§'[§)
         {
            if(this.§@!-§)
            {
               this.cleanup();
            }
            return;
         }
         this.§'[§ = false;
         if(this.§@!-§)
         {
            this.cleanup();
         }
      }
      
      public function §3!7§(param1:Boolean) : void
      {
         this.§@!-§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§#4§)
         {
            return;
         }
         if(this.§5!R§)
         {
            this.§5!R§.clear();
            this.§5!R§ = null;
         }
         while(this.§0B§.length > 0)
         {
            (this.§0B§.pop() as §^R§).clear();
         }
         if(this.§'[§)
         {
            this.deActivate();
         }
         this.§#4§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§#4§)
         {
            §1C§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §#8§;
         }
         if(!this.§'[§)
         {
            §1C§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §<X§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§`7§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
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
      
      public function §^!A§(param1:§^R§) : void
      {
         this.§0B§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]!+§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]!+§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]!+§.contains(param1);
      }
      
      public function §,V§() : int
      {
         if(this.§<!O§)
         {
            return this.§<!O§.§,V§();
         }
         return 0;
      }
      
      public function §6!D§() : int
      {
         if(this.§<!O§)
         {
            return this.§<!O§.§6!D§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§5!R§)
         {
            this.§5!R§.viewWidth = param1;
            this.§5!R§.viewHeight = param2;
         }
      }
      
      public function §%!]§() : int
      {
         return §&!S§;
      }
   }
}
