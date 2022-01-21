package §5!5§
{
   import §0;§.§3=§;
   import §6@§.§[! §;
   import §8<§.§<!7§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §1!b§
   {
      
      public static const §7!2§:int = 60;
      
      public static const §?i§:String = "dummyState";
      
      public static const §-!F§:int = 0;
      
      public static const §!!"§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §+=§:Object = null;
       
      
      public var §&!U§:Boolean = false;
      
      public var §1e§:Boolean = false;
      
      public var mName:String;
      
      public var §#!R§:Boolean = false;
      
      public var §<8§:Boolean = false;
      
      public var mUIView:§3=§;
      
      public var §#!L§:Array;
      
      public var mNextState:String = "";
      
      public var §%!l§:Sprite = null;
      
      public var §<B§:§^g§ = null;
      
      public function §1!b§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§#!L§ = new Array();
         this.§%!l§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §,t§(param1:String) : String
      {
         if(§+=§)
         {
            return §+=§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§&!U§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§3=§ = null;
         if(!this.§&!U§)
         {
            this.init();
         }
         if(this.mUIView)
         {
            this.§%!l§.addChild(this.mUIView);
            this.mUIView.§"!b§();
         }
         for each(_loc1_ in this.§#!L§)
         {
            this.§%!l§.addChild(_loc1_);
            _loc1_.§"7§();
         }
         this.mNextState = "";
         this.§1e§ = true;
      }
      
      public function §7!S§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§3=§ = null;
         if(this.mUIView)
         {
            this.mUIView.§"7§();
            this.§%!l§.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.§#!L§)
         {
            _loc1_.§"7§();
            this.§%!l§.removeChild(_loc1_);
         }
         if(!this.§1e§)
         {
            if(this.§<8§)
            {
               this.cleanup();
            }
            return;
         }
         this.§1e§ = false;
         if(this.§<8§)
         {
            this.cleanup();
         }
      }
      
      public function §'!c§(param1:Boolean) : void
      {
         this.§<8§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&!U§)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.§#!L§.length > 0)
         {
            (this.§#!L§.pop() as §3=§).clear();
         }
         if(this.§1e§)
         {
            this.deActivate();
         }
         this.§&!U§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§&!U§)
         {
            §<!7§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §-!F§;
         }
         if(!this.§1e§)
         {
            §<!7§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §!!"§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§#!R§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
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
      
      public function §6^§(param1:§3=§) : void
      {
         this.§#!L§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§%!l§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§%!l§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§%!l§.contains(param1);
      }
      
      public function §;!>§() : int
      {
         if(this.§<B§)
         {
            return this.§<B§.§;!>§();
         }
         return 0;
      }
      
      public function §,!F§() : int
      {
         if(this.§<B§)
         {
            return this.§<B§.§,!F§();
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
      
      public function §>#§() : int
      {
         return §7!2§;
      }
   }
}
