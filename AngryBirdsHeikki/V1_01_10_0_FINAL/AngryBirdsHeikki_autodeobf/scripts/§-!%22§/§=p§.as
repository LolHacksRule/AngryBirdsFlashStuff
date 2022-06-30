package §-!"§
{
   import §8P§.§1A§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §=p§
   {
      
      public static const §]!5§:int = 60;
      
      public static const §>o§:String = "dummyState";
      
      public static const §&"§:int = 0;
      
      public static const §^o§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §<!I§:Object = null;
       
      
      public var §+?§:Boolean = false;
      
      public var § <§:Boolean = false;
      
      public var mName:String;
      
      public var §0!L§:Boolean = false;
      
      public var §for§:Boolean = false;
      
      public var §]!9§:§]!Q§;
      
      public var §`]§:Array;
      
      public var mNextState:String = "";
      
      public var §;=§:Sprite = null;
      
      public var §6!D§:§]7§ = null;
      
      public function §=p§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§`]§ = new Array();
         this.§;=§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §6"§(param1:String) : String
      {
         if(§<!I§)
         {
            return §<!I§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§+?§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§]!Q§ = null;
         if(!this.§+?§)
         {
            this.init();
         }
         if(this.§]!9§)
         {
            this.§;=§.addChild(this.§]!9§);
            this.§]!9§.§6,§();
         }
         for each(_loc1_ in this.§`]§)
         {
            this.§;=§.addChild(_loc1_);
            _loc1_.§@m§();
         }
         this.mNextState = "";
         this.§ <§ = true;
      }
      
      public function §+v§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§]!Q§ = null;
         if(this.§]!9§)
         {
            this.§]!9§.§@m§();
            this.§;=§.removeChild(this.§]!9§);
         }
         for each(_loc1_ in this.§`]§)
         {
            _loc1_.§@m§();
            this.§;=§.removeChild(_loc1_);
         }
         if(!this.§ <§)
         {
            if(this.§for§)
            {
               this.cleanup();
            }
            return;
         }
         this.§ <§ = false;
         if(this.§for§)
         {
            this.cleanup();
         }
      }
      
      public function §2[§(param1:Boolean) : void
      {
         this.§for§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§+?§)
         {
            return;
         }
         if(this.§]!9§)
         {
            this.§]!9§.clear();
            this.§]!9§ = null;
         }
         while(this.§`]§.length > 0)
         {
            (this.§`]§.pop() as §]!Q§).clear();
         }
         if(this.§ <§)
         {
            this.deActivate();
         }
         this.§+?§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§+?§)
         {
            §4,§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §&"§;
         }
         if(!this.§ <§)
         {
            §4,§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §^o§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§0!L§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
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
      
      public function §;+§(param1:§]!Q§) : void
      {
         this.§`]§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§;=§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§;=§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§;=§.contains(param1);
      }
      
      public function §+C§() : int
      {
         if(this.§6!D§)
         {
            return this.§6!D§.§+C§();
         }
         return 0;
      }
      
      public function §6!K§() : int
      {
         if(this.§6!D§)
         {
            return this.§6!D§.§6!K§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§]!9§)
         {
            this.§]!9§.viewWidth = param1;
            this.§]!9§.viewHeight = param2;
         }
      }
      
      public function §9u§() : int
      {
         return §]!5§;
      }
   }
}
