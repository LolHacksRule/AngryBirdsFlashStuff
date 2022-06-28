package §8,§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §=R§.§7!"§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §+_§
   {
      
      public static const §9!5§:int = 60;
      
      public static const §7!v§:String = "dummyState";
      
      public static const §;L§:int = 0;
      
      public static const §<3§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[!Z§:Object = null;
       
      
      public var §[!?§:Boolean = false;
      
      public var §@!"§:Boolean = false;
      
      public var mName:String;
      
      public var §39§:Boolean = false;
      
      public var §8u§:Boolean = false;
      
      public var §`-§:§ C§;
      
      public var §,!F§:Array;
      
      public var mNextState:String = "";
      
      public var §8!9§:Sprite = null;
      
      public var §&!x§:§3!?§ = null;
      
      public function §+_§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§,!F§ = new Array();
         this.§8!9§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §`!g§(param1:String) : String
      {
         if(§[!Z§)
         {
            return §[!Z§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§[!?§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§ C§ = null;
         if(!this.§[!?§)
         {
            this.init();
         }
         if(this.§`-§)
         {
            this.§8!9§.addChild(this.§`-§);
            this.§`-§.activateView();
         }
         for each(_loc1_ in this.§,!F§)
         {
            this.§8!9§.addChild(_loc1_);
            _loc1_.§#R§();
         }
         this.mNextState = "";
         this.§@!"§ = true;
      }
      
      public function §&S§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ C§ = null;
         if(this.§`-§)
         {
            this.§`-§.§#R§();
            this.§8!9§.removeChild(this.§`-§);
         }
         for each(_loc1_ in this.§,!F§)
         {
            _loc1_.§#R§();
            this.§8!9§.removeChild(_loc1_);
         }
         if(!this.§@!"§)
         {
            if(this.§8u§)
            {
               this.cleanup();
            }
            return;
         }
         this.§@!"§ = false;
         if(this.§8u§)
         {
            this.cleanup();
         }
      }
      
      public function §!u§(param1:Boolean) : void
      {
         this.§8u§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§[!?§)
         {
            return;
         }
         if(this.§`-§)
         {
            this.§`-§.clear();
            this.§`-§ = null;
         }
         while(this.§,!F§.length > 0)
         {
            (this.§,!F§.pop() as § C§).clear();
         }
         if(this.§@!"§)
         {
            this.deActivate();
         }
         this.§[!?§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§[!?§)
         {
            §[g§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §;L§;
         }
         if(!this.§@!"§)
         {
            §[g§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §<3§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§39§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
      
      public function §[!_§(param1:§ C§) : void
      {
         this.§,!F§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§8!9§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§8!9§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8!9§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§&!x§)
         {
            return this.§&!x§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§&!x§)
         {
            return this.§&!x§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`-§)
         {
            this.§`-§.viewWidth = param1;
            this.§`-§.viewHeight = param2;
         }
      }
      
      public function §6!_§() : int
      {
         return §9!5§;
      }
   }
}
