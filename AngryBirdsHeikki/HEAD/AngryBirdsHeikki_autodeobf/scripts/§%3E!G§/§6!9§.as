package §>!G§
{
   import §&!b§.§ c§;
   import §+!M§.§7!0§;
   import §-!f§.§ else§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §6!9§
   {
      
      public static const §?!D§:int = 60;
      
      public static const §@N§:String = "dummyState";
      
      public static const §-P§:int = 0;
      
      public static const §"!<§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §#'§:Object = null;
       
      
      public var §6b§:Boolean = false;
      
      public var §9!O§:Boolean = false;
      
      public var mName:String;
      
      public var §'?§:Boolean = false;
      
      public var §1!-§:Boolean = false;
      
      public var § ,§:§ else§;
      
      public var §+t§:Array;
      
      public var mNextState:String = "";
      
      public var §4!B§:Sprite = null;
      
      public var §`1§:§+3§ = null;
      
      public function §6!9§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§+t§ = new Array();
         this.§4!B§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §&Q§(param1:String) : String
      {
         if(§#'§)
         {
            return §#'§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§6b§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§ else§ = null;
         if(!this.§6b§)
         {
            this.init();
         }
         if(this.§ ,§)
         {
            this.§4!B§.addChild(this.§ ,§);
            this.§ ,§.§?O§();
         }
         for each(_loc1_ in this.§+t§)
         {
            this.§4!B§.addChild(_loc1_);
            _loc1_.§9j§();
         }
         this.mNextState = "";
         this.§9!O§ = true;
      }
      
      public function §8M§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ else§ = null;
         if(this.§ ,§)
         {
            this.§ ,§.§9j§();
            this.§4!B§.removeChild(this.§ ,§);
         }
         for each(_loc1_ in this.§+t§)
         {
            _loc1_.§9j§();
            this.§4!B§.removeChild(_loc1_);
         }
         if(!this.§9!O§)
         {
            if(this.§1!-§)
            {
               this.cleanup();
            }
            return;
         }
         this.§9!O§ = false;
         if(this.§1!-§)
         {
            this.cleanup();
         }
      }
      
      public function §[%§(param1:Boolean) : void
      {
         this.§1!-§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§6b§)
         {
            return;
         }
         if(this.§ ,§)
         {
            this.§ ,§.clear();
            this.§ ,§ = null;
         }
         while(this.§+t§.length > 0)
         {
            (this.§+t§.pop() as § else§).clear();
         }
         if(this.§9!O§)
         {
            this.deActivate();
         }
         this.§6b§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§6b§)
         {
            § c§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §-P§;
         }
         if(!this.§9!O§)
         {
            § c§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §"!<§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§'?§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
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
      
      public function §]&§(param1:§ else§) : void
      {
         this.§+t§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§4!B§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§4!B§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§4!B§.contains(param1);
      }
      
      public function §]!"§() : int
      {
         if(this.§`1§)
         {
            return this.§`1§.§]!"§();
         }
         return 0;
      }
      
      public function §?!&§() : int
      {
         if(this.§`1§)
         {
            return this.§`1§.§?!&§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§ ,§)
         {
            this.§ ,§.viewWidth = param1;
            this.§ ,§.viewHeight = param2;
         }
      }
      
      public function §%O§() : int
      {
         return §?!D§;
      }
   }
}
