package §3[§
{
   import §8"!§.§'e§;
   import §9!G§.§]!e§;
   import flash.display.Stage;
   
   public class §-!&§
   {
       
      
      private var §="8§:Vector.<§0!K§>;
      
      protected var §19§:§0!K§;
      
      private var mNextState:String;
      
      protected var §7!;§:§'e§ = null;
      
      private var §!"+§:Number;
      
      private var §'!p§:Number;
      
      public function §-!&§(param1:§'e§)
      {
         super();
         this.§="8§ = new Vector.<§0!K§>();
         this.§7!;§ = param1;
         this.§!"+§ = this.§7!;§.stage.stageWidth;
         this.§'!p§ = this.§7!;§.stage.stageHeight;
      }
      
      public function §7!r§() : String
      {
         if(this.§19§ != null)
         {
            return this.§19§.mName;
         }
         return §0!K§.§1s§;
      }
      
      public function §7F§() : §0!K§
      {
         if(this.§19§ != null)
         {
            return this.§19§;
         }
         return null;
      }
      
      public function §9z§(param1:String) : §0!K§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§="8§.length)
         {
            if((this.§="8§[_loc2_] as §0!K§).mName == param1)
            {
               return this.§="8§[_loc2_] as §0!K§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!2§(param1:String, param2:§0!K§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§="8§.length)
         {
            if((this.§="8§[_loc3_] as §0!K§).mName == param1)
            {
               this.§="8§[_loc3_] = param2;
               param2.§%,§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §%-§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §?s§() : Boolean
      {
         return this.mNextState != §0!K§.§1s§;
      }
      
      public function §%!t§() : String
      {
         return this.mNextState;
      }
      
      public function §+!#§() : Boolean
      {
         if(this.mNextState != §0!K§.§1s§)
         {
            this.§'W§(this.mNextState);
            this.setViewSize(this.§!"+§,this.§'!p§);
            this.mNextState = §0!K§.§1s§;
            return true;
         }
         return false;
      }
      
      public function §'W§(param1:String) : Boolean
      {
         var _loc2_:§0!K§ = null;
         var _loc3_:§0!K§ = null;
         for each(_loc3_ in this.§="8§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §]!e§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§19§ != null)
         {
            §]!e§.log("deActivate state: " + this.§19§.mName);
            this.§19§.deActivate();
            this.previousStateDeactivate();
            this.§7!;§.removeChild(this.§19§.§;!E§);
         }
         this.§19§ = _loc2_;
         §]!e§.log("Activate state: " + this.§19§.mName);
         this.stage.frameRate = this.§19§.getTargetFrameRate();
         this.§7!;§.addChildAt(this.§19§.§;!E§,0);
         this.§19§.activate();
         this.§19§.§-Z§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §@!c§(param1:§0!K§) : Boolean
      {
         if(param1 != null)
         {
            this.§="8§.push(param1);
            param1.§%,§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§19§)
         {
            return §0!K§.§"!j§;
         }
         return this.§19§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§7!;§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§7!;§.height;
      }
      
      public function get canvas() : §'e§
      {
         return this.§7!;§;
      }
      
      public function get stage() : Stage
      {
         return this.§7!;§.stage;
      }
      
      public function §9,§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§19§)
         {
            this.§19§.setViewSize(param1,param2);
         }
         this.§!"+§ = param1;
         this.§'!p§ = param2;
      }
   }
}
