package §,!H§
{
   import §'+§.§1u§;
   import §7p§.§%g§;
   import §@-§.§[y§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class § for§
   {
      
      public static const §9!e§:int = 60;
      
      public static const §9!3§:String = "dummyState";
      
      public static const §?!F§:int = 0;
      
      public static const §2!O§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §;!E§:Object = null;
       
      
      public var §2n§:Boolean = false;
      
      public var §"]§:Boolean = false;
      
      public var mName:String;
      
      public var §%!a§:Boolean = false;
      
      public var §&G§:Boolean = false;
      
      public var mUIView:§%g§;
      
      public var §^!J§:Array;
      
      public var mNextState:String = "";
      
      public var §]!M§:Sprite = null;
      
      public var §>e§:§6Y§ = null;
      
      public function § for§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§^!J§ = new Array();
         this.§]!M§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §]!F§(param1:String) : String
      {
         if(§;!E§)
         {
            return §;!E§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§2n§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§%g§ = null;
         if(!this.§2n§)
         {
            this.init();
         }
         if(this.mUIView)
         {
            this.§]!M§.addChild(this.mUIView);
            this.mUIView.§4!`§();
         }
         for each(_loc1_ in this.§^!J§)
         {
            this.§]!M§.addChild(_loc1_);
            _loc1_.§8W§();
         }
         this.mNextState = "";
         this.§"]§ = true;
      }
      
      public function §1!f§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§%g§ = null;
         if(this.mUIView)
         {
            this.mUIView.§8W§();
            this.§]!M§.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.§^!J§)
         {
            _loc1_.§8W§();
            this.§]!M§.removeChild(_loc1_);
         }
         if(!this.§"]§)
         {
            if(this.§&G§)
            {
               this.cleanup();
            }
            return;
         }
         this.§"]§ = false;
         if(this.§&G§)
         {
            this.cleanup();
         }
      }
      
      public function §4&§(param1:Boolean) : void
      {
         this.§&G§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§2n§)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.§^!J§.length > 0)
         {
            (this.§^!J§.pop() as §%g§).clear();
         }
         if(this.§"]§)
         {
            this.deActivate();
         }
         this.§2n§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§2n§)
         {
            §1u§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §?!F§;
         }
         if(!this.§"]§)
         {
            §1u§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §2!O§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§%!a§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
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
      
      public function §?!f§(param1:§%g§) : void
      {
         this.§^!J§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]!M§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]!M§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]!M§.contains(param1);
      }
      
      public function §9$§() : int
      {
         if(this.§>e§)
         {
            return this.§>e§.§9$§();
         }
         return 0;
      }
      
      public function §]!=§() : int
      {
         if(this.§>e§)
         {
            return this.§>e§.§]!=§();
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
      
      public function §`!P§() : int
      {
         return §9!e§;
      }
   }
}
