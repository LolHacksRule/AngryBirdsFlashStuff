package §7E§
{
   import §,o§.§ j§;
   import §0i§.§4!%§;
   import flash.display.Stage;
   
   public class §%7§
   {
       
      
      private var §4!7§:Vector.<§ =§>;
      
      protected var §0$§:§ =§;
      
      private var mNextState:String;
      
      protected var §3A§:§ j§ = null;
      
      private var §`e§:Number;
      
      private var §9!A§:Number;
      
      public function §%7§(param1:§ j§)
      {
         super();
         this.§4!7§ = new Vector.<§ =§>();
         this.§3A§ = param1;
         this.§`e§ = this.§3A§.stage.stageWidth;
         this.§9!A§ = this.§3A§.stage.stageHeight;
      }
      
      public function §2!"§() : String
      {
         if(this.§0$§ != null)
         {
            return this.§0$§.mName;
         }
         return § =§.§2!U§;
      }
      
      public function §#!k§() : § =§
      {
         if(this.§0$§ != null)
         {
            return this.§0$§;
         }
         return null;
      }
      
      public function §3R§(param1:String) : § =§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!7§.length)
         {
            if((this.§4!7§[_loc2_] as § =§).mName == param1)
            {
               return this.§4!7§[_loc2_] as § =§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]>§(param1:String, param2:§ =§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§4!7§.length)
         {
            if((this.§4!7§[_loc3_] as § =§).mName == param1)
            {
               this.§4!7§[_loc3_] = param2;
               param2.§[!Z§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §3N§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §`N§() : Boolean
      {
         return this.mNextState != § =§.§2!U§;
      }
      
      public function §'w§() : String
      {
         return this.mNextState;
      }
      
      public function §4$§() : Boolean
      {
         if(this.mNextState != § =§.§2!U§)
         {
            this.§4!"§(this.mNextState);
            this.setViewSize(this.§`e§,this.§9!A§);
            this.mNextState = § =§.§2!U§;
            return true;
         }
         return false;
      }
      
      public function §4!"§(param1:String) : Boolean
      {
         var _loc2_:§ =§ = null;
         var _loc3_:§ =§ = null;
         for each(_loc3_ in this.§4!7§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §4!%§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§0$§ != null)
         {
            §4!%§.log("deActivate state: " + this.§0$§.mName);
            this.§0$§.deActivate();
            this.previousStateDeactivate();
            this.§3A§.removeChild(this.§0$§.§#Y§);
         }
         this.§0$§ = _loc2_;
         §4!%§.log("Activate state: " + this.§0$§.mName);
         this.stage.frameRate = this.§0$§.§9!c§();
         this.§3A§.addChildAt(this.§0$§.§#Y§,0);
         this.§0$§.activate();
         this.§0$§.§!0§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §-H§(param1:§ =§) : Boolean
      {
         if(param1 != null)
         {
            this.§4!7§.push(param1);
            param1.§[!Z§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§0$§)
         {
            return § =§.§5!E§;
         }
         return this.§0$§.run(param1);
      }
      
      public function §+!7§() : Number
      {
         return this.§3A§.width;
      }
      
      public function § !F§() : Number
      {
         return this.§3A§.height;
      }
      
      public function get canvas() : § j§
      {
         return this.§3A§;
      }
      
      public function get stage() : Stage
      {
         return this.§3A§.stage;
      }
      
      public function §[!"§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§0$§)
         {
            this.§0$§.setViewSize(param1,param2);
         }
         this.§`e§ = param1;
         this.§9!A§ = param2;
      }
   }
}
