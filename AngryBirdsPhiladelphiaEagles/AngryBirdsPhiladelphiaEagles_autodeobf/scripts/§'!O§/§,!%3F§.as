package §'!O§
{
   import §9P§.§'B§;
   import §`K§.§ L§;
   import flash.display.Stage;
   
   public class §,!?§
   {
       
      
      private var §]0§:Vector.<§'!#§>;
      
      protected var §'!<§:§'!#§;
      
      private var mNextState:String;
      
      protected var §#!G§:§'B§ = null;
      
      private var §[2§:Number;
      
      private var §-$§:Number;
      
      public function §,!?§(param1:§'B§)
      {
         super();
         this.§]0§ = new Vector.<§'!#§>();
         this.§#!G§ = param1;
         this.§[2§ = this.§#!G§.stage.stageWidth;
         this.§-$§ = this.§#!G§.stage.stageHeight;
      }
      
      public function §,x§() : String
      {
         if(this.§'!<§ != null)
         {
            return this.§'!<§.mName;
         }
         return §'!#§.§,!2§;
      }
      
      public function §@!@§() : §'!#§
      {
         if(this.§'!<§ != null)
         {
            return this.§'!<§;
         }
         return null;
      }
      
      public function § each§(param1:String) : §'!#§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]0§.length)
         {
            if((this.§]0§[_loc2_] as §'!#§).mName == param1)
            {
               return this.§]0§[_loc2_] as §'!#§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7!$§(param1:String, param2:§'!#§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§]0§.length)
         {
            if((this.§]0§[_loc3_] as §'!#§).mName == param1)
            {
               this.§]0§[_loc3_] = param2;
               param2.§1!Q§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §8n§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §4q§() : Boolean
      {
         return this.mNextState != §'!#§.§,!2§;
      }
      
      public function §"x§() : String
      {
         return this.mNextState;
      }
      
      public function §+!H§() : Boolean
      {
         if(this.mNextState != §'!#§.§,!2§)
         {
            this.§5!"§(this.mNextState);
            this.setViewSize(this.§[2§,this.§-$§);
            this.mNextState = §'!#§.§,!2§;
            return true;
         }
         return false;
      }
      
      public function §5!"§(param1:String) : Boolean
      {
         var _loc2_:§'!#§ = null;
         var _loc3_:§'!#§ = null;
         for each(_loc3_ in this.§]0§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            § L§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§'!<§ != null)
         {
            § L§.log("deActivate state: " + this.§'!<§.mName);
            this.§'!<§.deActivate();
            this.previousStateDeactivate();
            this.§#!G§.removeChild(this.§'!<§.§8A§);
         }
         this.§'!<§ = _loc2_;
         § L§.log("Activate state: " + this.§'!<§.mName);
         this.stage.frameRate = this.§'!<§.§[!;§();
         this.§#!G§.addChildAt(this.§'!<§.§8A§,0);
         this.§'!<§.activate();
         this.§'!<§.§!!P§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §#!F§(param1:§'!#§) : Boolean
      {
         if(param1 != null)
         {
            this.§]0§.push(param1);
            param1.§1!Q§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§'!<§)
         {
            return §'!#§.§^4§;
         }
         return this.§'!<§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§#!G§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§#!G§.height;
      }
      
      public function get canvas() : §'B§
      {
         return this.§#!G§;
      }
      
      public function get stage() : Stage
      {
         return this.§#!G§.stage;
      }
      
      public function §8!7§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§'!<§)
         {
            this.§'!<§.setViewSize(param1,param2);
         }
         this.§[2§ = param1;
         this.§-$§ = param2;
      }
   }
}
