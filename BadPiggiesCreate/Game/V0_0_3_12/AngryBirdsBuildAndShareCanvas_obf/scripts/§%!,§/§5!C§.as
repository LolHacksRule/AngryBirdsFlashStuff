package §%!,§
{
   import §"p§.§@8§;
   import §[m§.§^^§;
   import flash.display.Stage;
   
   public class §5!C§
   {
       
      
      private var §"!0§:Vector.<§,v§>;
      
      protected var §]g§:§,v§;
      
      private var mNextState:String;
      
      protected var §`!T§:§^^§ = null;
      
      private var §-!Q§:Number;
      
      private var §?!&§:Number;
      
      public function §5!C§(param1:§^^§)
      {
         super();
         this.§"!0§ = new Vector.<§,v§>();
         this.§`!T§ = param1;
         this.§-!Q§ = this.§`!T§.stage.stageWidth;
         this.§?!&§ = this.§`!T§.stage.stageHeight;
      }
      
      public function §35§() : String
      {
         if(this.§]g§ != null)
         {
            return this.§]g§.mName;
         }
         return §,v§.§5O§;
      }
      
      public function §%"0§() : §,v§
      {
         if(this.§]g§ != null)
         {
            return this.§]g§;
         }
         return null;
      }
      
      public function §0!S§(param1:String) : §,v§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!0§.length)
         {
            if((this.§"!0§[_loc2_] as §,v§).mName == param1)
            {
               return this.§"!0§[_loc2_] as §,v§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §6!n§(param1:String, param2:§,v§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§"!0§.length)
         {
            if((this.§"!0§[_loc3_] as §,v§).mName == param1)
            {
               this.§"!0§[_loc3_] = param2;
               param2.§^B§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §0!Q§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §>!5§() : Boolean
      {
         return this.mNextState != §,v§.§5O§;
      }
      
      public function §3!§() : String
      {
         return this.mNextState;
      }
      
      public function §2!4§() : Boolean
      {
         if(this.mNextState != §,v§.§5O§)
         {
            this.§<!%§(this.mNextState);
            this.setViewSize(this.§-!Q§,this.§?!&§);
            this.mNextState = §,v§.§5O§;
            return true;
         }
         return false;
      }
      
      public function §<!%§(param1:String) : Boolean
      {
         var _loc2_:§,v§ = null;
         var _loc3_:§,v§ = null;
         for each(_loc3_ in this.§"!0§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §@8§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§]g§ != null)
         {
            §@8§.log("deActivate state: " + this.§]g§.mName);
            this.§]g§.deActivate();
            this.previousStateDeactivate();
            this.§`!T§.removeChild(this.§]g§.§+;§);
         }
         this.§]g§ = _loc2_;
         §@8§.log("Activate state: " + this.§]g§.mName);
         this.stage.frameRate = this.§]g§.getTargetFrameRate();
         this.§`!T§.addChildAt(this.§]g§.§+;§,0);
         this.§]g§.activate();
         this.§]g§.§"!Y§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §3!B§(param1:§,v§) : Boolean
      {
         if(param1 != null)
         {
            this.§"!0§.push(param1);
            param1.§^B§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§]g§)
         {
            return §,v§.§#p§;
         }
         return this.§]g§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`!T§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`!T§.height;
      }
      
      public function get canvas() : §^^§
      {
         return this.§`!T§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!T§.stage;
      }
      
      public function §;r§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§]g§)
         {
            this.§]g§.setViewSize(param1,param2);
         }
         this.§-!Q§ = param1;
         this.§?!&§ = param2;
      }
   }
}
