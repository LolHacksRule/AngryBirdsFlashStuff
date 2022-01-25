package §!!L§
{
   import §6!Q§.§7!7§;
   import §6l§.§#!Z§;
   import §>!8§.§4!0§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §&!R§
   {
      
      public static const §+!c§:int = 60;
      
      public static const §<K§:String = "dummyState";
      
      public static const § 2§:int = 0;
      
      public static const §19§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §>!;§:Object = null;
       
      
      public var §!n§:Boolean = false;
      
      public var §&3§:Boolean = false;
      
      public var mName:String;
      
      public var §2!D§:Boolean = false;
      
      public var §1!b§:Boolean = false;
      
      public var §+!`§:§4!0§;
      
      public var §;!K§:Array;
      
      public var mNextState:String = "";
      
      public var §8q§:Sprite = null;
      
      public var §]!B§:§[!C§ = null;
      
      public function §&!R§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§;!K§ = new Array();
         this.§8q§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function getApplicationParameter(param1:String) : String
      {
         if(§>!;§)
         {
            return §>!;§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§!n§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§4!0§ = null;
         if(!this.§!n§)
         {
            this.init();
         }
         if(this.§+!`§)
         {
            this.§8q§.addChild(this.§+!`§);
            this.§+!`§.§"<§();
         }
         for each(_loc1_ in this.§;!K§)
         {
            this.§8q§.addChild(_loc1_);
            _loc1_.§<!T§();
         }
         this.mNextState = "";
         this.§&3§ = true;
      }
      
      public function §#&§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§4!0§ = null;
         if(this.§+!`§)
         {
            this.§+!`§.§<!T§();
            this.§8q§.removeChild(this.§+!`§);
         }
         for each(_loc1_ in this.§;!K§)
         {
            _loc1_.§<!T§();
            this.§8q§.removeChild(_loc1_);
         }
         if(!this.§&3§)
         {
            if(this.§1!b§)
            {
               this.cleanup();
            }
            return;
         }
         this.§&3§ = false;
         if(this.§1!b§)
         {
            this.cleanup();
         }
      }
      
      public function §3!4§(param1:Boolean) : void
      {
         this.§1!b§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§!n§)
         {
            return;
         }
         if(this.§+!`§)
         {
            this.§+!`§.clear();
            this.§+!`§ = null;
         }
         while(this.§;!K§.length > 0)
         {
            (this.§;!K§.pop() as §4!0§).clear();
         }
         if(this.§&3§)
         {
            this.deActivate();
         }
         this.§!n§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§!n§)
         {
            §7!7§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return § 2§;
         }
         if(!this.§&3§)
         {
            §7!7§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §19§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2!D§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
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
      
      public function §#g§(param1:§4!0§) : void
      {
         this.§;!K§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§8q§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§8q§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8q§.contains(param1);
      }
      
      public function §@!?§() : int
      {
         if(this.§]!B§)
         {
            return this.§]!B§.§@!?§();
         }
         return 0;
      }
      
      public function §@!U§() : int
      {
         if(this.§]!B§)
         {
            return this.§]!B§.§@!U§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+!`§)
         {
            this.§+!`§.viewWidth = param1;
            this.§+!`§.viewHeight = param2;
         }
      }
      
      public function §;F§() : int
      {
         return §+!c§;
      }
   }
}
