package §[!>§
{
   import §"!!§.§&G§;
   import §'N§.Log;
   import flash.display.Stage;
   
   public class StateManager
   {
       
      
      private var §#!J§:Vector.<StateBase>;
      
      protected var §5?§:StateBase;
      
      private var mNextState:String;
      
      protected var §"B§:§&G§ = null;
      
      private var §-]§:Number;
      
      private var §42§:Number;
      
      public function StateManager(param1:§&G§)
      {
         super();
         this.§#!J§ = new Vector.<StateBase>();
         this.§"B§ = param1;
         this.§-]§ = this.§"B§.stage.stageWidth;
         this.§42§ = this.§"B§.stage.stageHeight;
      }
      
      public function §6!g§() : String
      {
         if(this.§5?§ != null)
         {
            return this.§5?§.mName;
         }
         return StateBase.§0i§;
      }
      
      public function §;!W§() : StateBase
      {
         if(this.§5?§ != null)
         {
            return this.§5?§;
         }
         return null;
      }
      
      public function §2!H§(param1:String) : StateBase
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!J§.length)
         {
            if((this.§#!J§[_loc2_] as StateBase).mName == param1)
            {
               return this.§#!J§[_loc2_] as StateBase;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0!f§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §'C§() : Boolean
      {
         return this.mNextState != StateBase.§0i§;
      }
      
      public function §<y§() : Boolean
      {
         if(this.mNextState != StateBase.§0i§)
         {
            this.§"![§(this.mNextState);
            this.setViewSize(this.§-]§,this.§42§);
            this.mNextState = StateBase.§0i§;
            return true;
         }
         return false;
      }
      
      public function §"![§(param1:String) : Boolean
      {
         var _loc2_:StateBase = null;
         var _loc3_:StateBase = null;
         for each(_loc3_ in this.§#!J§)
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
         if(this.§5?§ != null)
         {
            Log.log("deActivate state: " + this.§5?§.mName);
            this.§5?§.deActivate();
            this.previousStateDeactivate();
            this.§"B§.removeChild(this.§5?§.§1!J§);
         }
         this.§5?§ = _loc2_;
         Log.log("Activate state: " + this.§5?§.mName);
         this.stage.frameRate = this.§5?§.§5Q§();
         this.§"B§.addChildAt(this.§5?§.§1!J§,0);
         this.§5?§.activate();
         this.§5?§.§`^§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §&=§(param1:StateBase) : Boolean
      {
         if(param1 != null)
         {
            this.§#!J§.push(param1);
            param1.§'I§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§5?§)
         {
            return StateBase.§=!H§;
         }
         return this.§5?§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"B§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"B§.height;
      }
      
      public function get canvas() : §&G§
      {
         return this.§"B§;
      }
      
      public function get stage() : Stage
      {
         return this.§"B§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§5?§)
         {
            this.§5?§.setViewSize(param1,param2);
         }
         this.§-]§ = param1;
         this.§42§ = param2;
      }
   }
}
