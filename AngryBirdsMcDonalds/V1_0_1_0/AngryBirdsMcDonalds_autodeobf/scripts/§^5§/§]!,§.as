package §^5§
{
   import §-1§.§%#§;
   import §9!8§.§0!7§;
   import §`!W§.§2v§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §]!,§
   {
      
      public static const §4z§:int = 60;
      
      public static const §@D§:String = "dummyState";
      
      public static const §?!<§:int = 0;
      
      public static const §!!E§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §=!@§:Object = null;
       
      
      public var §]p§:Boolean = false;
      
      public var § §:Boolean = false;
      
      public var mName:String;
      
      public var §?!C§:Boolean = false;
      
      public var §@>§:Boolean = false;
      
      public var mUIView:§0!7§;
      
      public var §!!J§:Array;
      
      public var mNextState:String = "";
      
      public var §[8§:Sprite = null;
      
      public var §&!P§:§<!R§ = null;
      
      public function §]!,§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§!!J§ = new Array();
         this.§[8§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §#c§(param1:String) : String
      {
         if(§=!@§)
         {
            return §=!@§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§]p§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§0!7§ = null;
         if(!this.§]p§)
         {
            this.init();
         }
         if(this.mUIView)
         {
            this.§[8§.addChild(this.mUIView);
            this.mUIView.§4b§();
         }
         for each(_loc1_ in this.§!!J§)
         {
            this.§[8§.addChild(_loc1_);
            _loc1_.§>!c§();
         }
         this.mNextState = "";
         this.§ § = true;
      }
      
      public function §^!M§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§0!7§ = null;
         if(this.mUIView)
         {
            this.mUIView.§>!c§();
            this.§[8§.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.§!!J§)
         {
            _loc1_.§>!c§();
            this.§[8§.removeChild(_loc1_);
         }
         if(!this.§ §)
         {
            if(this.§@>§)
            {
               this.cleanup();
            }
            return;
         }
         this.§ § = false;
         if(this.§@>§)
         {
            this.cleanup();
         }
      }
      
      public function §`L§(param1:Boolean) : void
      {
         this.§@>§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§]p§)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.§!!J§.length > 0)
         {
            (this.§!!J§.pop() as §0!7§).clear();
         }
         if(this.§ §)
         {
            this.deActivate();
         }
         this.§]p§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§]p§)
         {
            §2v§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §?!<§;
         }
         if(!this.§ §)
         {
            §2v§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §!!E§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§?!C§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
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
      
      public function §=K§(param1:§0!7§) : void
      {
         this.§!!J§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§[8§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§[8§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§[8§.contains(param1);
      }
      
      public function §]!-§() : int
      {
         if(this.§&!P§)
         {
            return this.§&!P§.§]!-§();
         }
         return 0;
      }
      
      public function §<§() : int
      {
         if(this.§&!P§)
         {
            return this.§&!P§.§<§();
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
      
      public function §`!<§() : int
      {
         return §4z§;
      }
   }
}
