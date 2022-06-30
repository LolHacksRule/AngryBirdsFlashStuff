package §&!6§
{
   import §#Q§.§8Y§;
   import §0i§.§]_§;
   import §1Q§.§'!`§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §5r§
   {
      
      public static const §+e§:int = 60;
      
      public static const §8S§:String = "dummyState";
      
      public static const §!!?§:int = 0;
      
      public static const §9_§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §,K§:Object = null;
       
      
      public var §-@§:Boolean = false;
      
      public var §[![§:Boolean = false;
      
      public var mName:String;
      
      public var §9c§:Boolean = false;
      
      public var §3B§:Boolean = false;
      
      public var §@K§:§8Y§;
      
      public var §@!5§:Array;
      
      public var mNextState:String = "";
      
      public var §3![§:Sprite = null;
      
      public var §;m§:§!!T§ = null;
      
      public function §5r§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§@!5§ = new Array();
         this.§3![§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §3!!§(param1:String) : String
      {
         if(§,K§)
         {
            return §,K§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§-@§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§8Y§ = null;
         if(!this.§-@§)
         {
            this.init();
         }
         if(this.§@K§)
         {
            this.§3![§.addChild(this.§@K§);
            this.§@K§.§`C§();
         }
         for each(_loc1_ in this.§@!5§)
         {
            this.§3![§.addChild(_loc1_);
            _loc1_.§>m§();
         }
         this.mNextState = "";
         this.§[![§ = true;
      }
      
      public function §<!K§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§8Y§ = null;
         if(this.§@K§)
         {
            this.§@K§.§>m§();
            this.§3![§.removeChild(this.§@K§);
         }
         for each(_loc1_ in this.§@!5§)
         {
            _loc1_.§>m§();
            this.§3![§.removeChild(_loc1_);
         }
         if(!this.§[![§)
         {
            if(this.§3B§)
            {
               this.cleanup();
            }
            return;
         }
         this.§[![§ = false;
         if(this.§3B§)
         {
            this.cleanup();
         }
      }
      
      public function §^f§(param1:Boolean) : void
      {
         this.§3B§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§-@§)
         {
            return;
         }
         if(this.§@K§)
         {
            this.§@K§.clear();
            this.§@K§ = null;
         }
         while(this.§@!5§.length > 0)
         {
            (this.§@!5§.pop() as §8Y§).clear();
         }
         if(this.§[![§)
         {
            this.deActivate();
         }
         this.§-@§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§-@§)
         {
            §]_§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §!!?§;
         }
         if(!this.§[![§)
         {
            §]_§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §9_§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§9c§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
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
      
      public function §]!<§(param1:§8Y§) : void
      {
         this.§@!5§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§3![§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§3![§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§3![§.contains(param1);
      }
      
      public function §%!B§() : int
      {
         if(this.§;m§)
         {
            return this.§;m§.§%!B§();
         }
         return 0;
      }
      
      public function §`b§() : int
      {
         if(this.§;m§)
         {
            return this.§;m§.§`b§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§@K§)
         {
            this.§@K§.viewWidth = param1;
            this.§@K§.viewHeight = param2;
         }
      }
      
      public function §?!P§() : int
      {
         return §+e§;
      }
   }
}
