package §1N§
{
   import §<u§.Log;
   import §`y§.§4!g§;
   import flash.display.Stage;
   
   public class StateManager
   {
       
      
      private var §?5§:Vector.<StateBase>;
      
      protected var §+!%§:StateBase;
      
      private var mNextState:String;
      
      protected var §!!d§:§4!g§ = null;
      
      private var §;!`§:Number;
      
      private var §2§:Number;
      
      public function StateManager(param1:§4!g§)
      {
         super();
         this.§?5§ = new Vector.<StateBase>();
         this.§!!d§ = param1;
         this.§;!`§ = this.§!!d§.stage.stageWidth;
         this.§2§ = this.§!!d§.stage.stageHeight;
      }
      
      public function §+'§() : String
      {
         if(this.§+!%§ != null)
         {
            return this.§+!%§.mName;
         }
         return StateBase.§<!8§;
      }
      
      public function §`!O§() : StateBase
      {
         if(this.§+!%§ != null)
         {
            return this.§+!%§;
         }
         return null;
      }
      
      public function §4V§(param1:String) : StateBase
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?5§.length)
         {
            if((this.§?5§[_loc2_] as StateBase).mName == param1)
            {
               return this.§?5§[_loc2_] as StateBase;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&!<§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §&!f§() : Boolean
      {
         return this.mNextState != StateBase.§<!8§;
      }
      
      public function §9A§() : Boolean
      {
         if(this.mNextState != StateBase.§<!8§)
         {
            this.§ ! §(this.mNextState);
            this.setViewSize(this.§;!`§,this.§2§);
            this.mNextState = StateBase.§<!8§;
            return true;
         }
         return false;
      }
      
      public function § ! §(param1:String) : Boolean
      {
         var _loc2_:StateBase = null;
         var _loc3_:StateBase = null;
         for each(_loc3_ in this.§?5§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            Log.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§+!%§ != null)
         {
            Log.log("deActivate state: " + this.§+!%§.mName);
            this.§+!%§.deActivate();
            this.previousStateDeactivate();
            this.§!!d§.removeChild(this.§+!%§.§"!,§);
         }
         this.§+!%§ = _loc2_;
         Log.log("Activate state: " + this.§+!%§.mName);
         this.stage.frameRate = this.§+!%§.§>Y§();
         this.§!!d§.addChildAt(this.§+!%§.§"!,§,0);
         this.§+!%§.activate();
         this.§+!%§.§"!4§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,u§(param1:StateBase) : Boolean
      {
         if(param1 != null)
         {
            this.§?5§.push(param1);
            param1.§^c§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§+!%§)
         {
            return StateBase.§>!D§;
         }
         return this.§+!%§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§!!d§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§!!d§.height;
      }
      
      public function get canvas() : §4!g§
      {
         return this.§!!d§;
      }
      
      public function get stage() : Stage
      {
         return this.§!!d§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+!%§)
         {
            this.§+!%§.setViewSize(param1,param2);
         }
         this.§;!`§ = param1;
         this.§2§ = param2;
      }
   }
}
