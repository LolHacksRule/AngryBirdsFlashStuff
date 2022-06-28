package §4H§
{
   import §,!O§.§3![§;
   import §6b§.Log;
   import flash.display.Stage;
   
   public class StateManager
   {
       
      
      private var §`!h§:Vector.<StateBase>;
      
      protected var §-v§:StateBase;
      
      private var mNextState:String;
      
      protected var §=,§:§3![§ = null;
      
      private var §&D§:Number;
      
      private var §=!j§:Number;
      
      public function StateManager(param1:§3![§)
      {
         super();
         this.§`!h§ = new Vector.<StateBase>();
         this.§=,§ = param1;
         this.§&D§ = this.§=,§.stage.stageWidth;
         this.§=!j§ = this.§=,§.stage.stageHeight;
      }
      
      public function §!!e§() : String
      {
         if(this.§-v§ != null)
         {
            return this.§-v§.mName;
         }
         return StateBase.§&r§;
      }
      
      public function §@9§() : StateBase
      {
         if(this.§-v§ != null)
         {
            return this.§-v§;
         }
         return null;
      }
      
      public function §+!3§(param1:String) : StateBase
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!h§.length)
         {
            if((this.§`!h§[_loc2_] as StateBase).mName == param1)
            {
               return this.§`!h§[_loc2_] as StateBase;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,!&§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0-§() : Boolean
      {
         return this.mNextState != StateBase.§&r§;
      }
      
      public function §7s§() : Boolean
      {
         if(this.mNextState != StateBase.§&r§)
         {
            this.§'!?§(this.mNextState);
            this.setViewSize(this.§&D§,this.§=!j§);
            this.mNextState = StateBase.§&r§;
            return true;
         }
         return false;
      }
      
      public function §'!?§(param1:String) : Boolean
      {
         var _loc2_:StateBase = null;
         var _loc3_:StateBase = null;
         for each(_loc3_ in this.§`!h§)
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
         if(this.§-v§ != null)
         {
            Log.log("deActivate state: " + this.§-v§.mName);
            this.§-v§.deActivate();
            this.previousStateDeactivate();
            this.§=,§.removeChild(this.§-v§.§'6§);
         }
         this.§-v§ = _loc2_;
         Log.log("Activate state: " + this.§-v§.mName);
         this.stage.frameRate = this.§-v§.§5!Q§();
         this.§=,§.addChildAt(this.§-v§.§'6§,0);
         this.§-v§.activate();
         this.§-v§.§6!,§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §<!g§(param1:StateBase) : Boolean
      {
         if(param1 != null)
         {
            this.§`!h§.push(param1);
            param1.§4!R§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§-v§)
         {
            return StateBase.§3Q§;
         }
         return this.§-v§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§=,§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§=,§.height;
      }
      
      public function get canvas() : §3![§
      {
         return this.§=,§;
      }
      
      public function get stage() : Stage
      {
         return this.§=,§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§-v§)
         {
            this.§-v§.setViewSize(param1,param2);
         }
         this.§&D§ = param1;
         this.§=!j§ = param2;
      }
   }
}
