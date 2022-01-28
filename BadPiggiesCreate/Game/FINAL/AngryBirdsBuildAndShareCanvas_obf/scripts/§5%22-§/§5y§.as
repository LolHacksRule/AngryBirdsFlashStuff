package §5"-§
{
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §5y§
   {
      
      public static const § !a§:int = 60;
      
      public static const §[D§:String = "dummyState";
      
      public static const §&!'§:int = 0;
      
      public static const §1!3§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §;" §:Object = null;
       
      
      public var §?!d§:Boolean = false;
      
      public var §?C§:Boolean = false;
      
      public var mName:String;
      
      public var §&!z§:Boolean = false;
      
      public var § z§:Boolean = false;
      
      public var §?E§:§'s§;
      
      public var §>e§:Array;
      
      public var mNextState:String = "";
      
      public var §!&§:Sprite = null;
      
      public var §'!e§:§`$§ = null;
      
      public function §5y§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§>e§ = new Array();
         this.§!&§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §"!>§(param1:String) : String
      {
         if(§;" §)
         {
            return §;" §[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§?!d§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§'s§ = null;
         if(!this.§?!d§)
         {
            this.init();
         }
         if(this.§?E§)
         {
            this.§!&§.addChild(this.§?E§);
            this.§?E§.§&o§();
         }
         for each(_loc1_ in this.§>e§)
         {
            this.§!&§.addChild(_loc1_);
            _loc1_.§['§();
         }
         this.mNextState = "";
         this.§?C§ = true;
      }
      
      public function §?!e§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§'s§ = null;
         if(this.§?E§)
         {
            this.§?E§.§['§();
            this.§!&§.removeChild(this.§?E§);
         }
         for each(_loc1_ in this.§>e§)
         {
            _loc1_.§['§();
            this.§!&§.removeChild(_loc1_);
         }
         if(!this.§?C§)
         {
            if(this.§ z§)
            {
               this.cleanup();
            }
            return;
         }
         this.§?C§ = false;
         if(this.§ z§)
         {
            this.cleanup();
         }
      }
      
      public function §9!j§(param1:Boolean) : void
      {
         this.§ z§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§?!d§)
         {
            return;
         }
         if(this.§?E§)
         {
            this.§?E§.clear();
            this.§?E§ = null;
         }
         while(this.§>e§.length > 0)
         {
            (this.§>e§.pop() as §'s§).clear();
         }
         if(this.§?C§)
         {
            this.deActivate();
         }
         this.§?!d§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§?!d§)
         {
            §9!P§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §&!'§;
         }
         if(!this.§?C§)
         {
            §9!P§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §1!3§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§&!z§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
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
      
      public function §56§(param1:§'s§) : void
      {
         this.§>e§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§!&§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§!&§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§!&§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§'!e§)
         {
            return this.§'!e§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§'!e§)
         {
            return this.§'!e§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?E§)
         {
            this.§?E§.viewWidth = param1;
            this.§?E§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return § !a§;
      }
   }
}
