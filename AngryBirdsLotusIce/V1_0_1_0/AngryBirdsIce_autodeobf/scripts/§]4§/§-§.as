package §]4§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §`W§.§-[§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §-§
   {
      
      public static const §>H§:int = 60;
      
      public static const § !-§:String = "dummyState";
      
      public static const §<! §:int = 0;
      
      public static const §#!?§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §"!G§:Object = null;
       
      
      public var §@!9§:Boolean = false;
      
      public var §^[§:Boolean = false;
      
      public var mName:String;
      
      public var §%3§:Boolean = false;
      
      public var §3]§:Boolean = false;
      
      public var §,R§:§#H§;
      
      public var §2!%§:Array;
      
      public var mNextState:String = "";
      
      public var §1-§:Sprite = null;
      
      public var §4F§:§&"§ = null;
      
      public function §-§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§2!%§ = new Array();
         this.§1-§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §8!1§(param1:String) : String
      {
         if(§"!G§)
         {
            return §"!G§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§@!9§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§#H§ = null;
         if(!this.§@!9§)
         {
            this.init();
         }
         if(this.§,R§)
         {
            this.§1-§.addChild(this.§,R§);
            this.§,R§.§>T§();
         }
         for each(_loc1_ in this.§2!%§)
         {
            this.§1-§.addChild(_loc1_);
            _loc1_.§<w§();
         }
         this.mNextState = "";
         this.§^[§ = true;
      }
      
      public function §2_§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§#H§ = null;
         if(this.§,R§)
         {
            this.§,R§.§<w§();
            this.§1-§.removeChild(this.§,R§);
         }
         for each(_loc1_ in this.§2!%§)
         {
            _loc1_.§<w§();
            this.§1-§.removeChild(_loc1_);
         }
         if(!this.§^[§)
         {
            if(this.§3]§)
            {
               this.cleanup();
            }
            return;
         }
         this.§^[§ = false;
         if(this.§3]§)
         {
            this.cleanup();
         }
      }
      
      public function §?y§(param1:Boolean) : void
      {
         this.§3]§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§@!9§)
         {
            return;
         }
         if(this.§,R§)
         {
            this.§,R§.clear();
            this.§,R§ = null;
         }
         while(this.§2!%§.length > 0)
         {
            (this.§2!%§.pop() as §#H§).clear();
         }
         if(this.§^[§)
         {
            this.deActivate();
         }
         this.§@!9§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§@!9§)
         {
            §3f§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §<! §;
         }
         if(!this.§^[§)
         {
            §3f§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §#!?§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§%3§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
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
      
      public function §7!<§(param1:§#H§) : void
      {
         this.§2!%§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§1-§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§1-§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§1-§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§4F§)
         {
            return this.§4F§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§4F§)
         {
            return this.§4F§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,R§)
         {
            this.§,R§.viewWidth = param1;
            this.§,R§.viewHeight = param2;
         }
      }
      
      public function §4!$§() : int
      {
         return §>H§;
      }
   }
}
