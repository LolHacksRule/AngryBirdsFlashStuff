package §;<§
{
   import §6!k§.§@B§;
   import §6]§.§,"0§;
   import flash.display.Stage;
   
   public class § "4§
   {
       
      
      private var §9O§:Vector.<§'B§>;
      
      protected var §2!N§:§'B§;
      
      private var mNextState:String;
      
      protected var §&"!§:§@B§ = null;
      
      private var §3]§:Number;
      
      private var §5!6§:Number;
      
      public function § "4§(param1:§@B§)
      {
         super();
         this.§9O§ = new Vector.<§'B§>();
         this.§&"!§ = param1;
         this.§3]§ = this.§&"!§.stage.stageWidth;
         this.§5!6§ = this.§&"!§.stage.stageHeight;
      }
      
      public function §get §() : String
      {
         if(this.§2!N§ != null)
         {
            return this.§2!N§.mName;
         }
         return §'B§.§^o§;
      }
      
      public function §<"%§() : §'B§
      {
         if(this.§2!N§ != null)
         {
            return this.§2!N§;
         }
         return null;
      }
      
      public function §-T§(param1:String) : §'B§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9O§.length)
         {
            if((this.§9O§[_loc2_] as §'B§).mName == param1)
            {
               return this.§9O§[_loc2_] as §'B§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#P§(param1:String, param2:§'B§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§9O§.length)
         {
            if((this.§9O§[_loc3_] as §'B§).mName == param1)
            {
               this.§9O§[_loc3_] = param2;
               param2.§0!z§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §<t§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §5"#§() : Boolean
      {
         return this.mNextState != §'B§.§^o§;
      }
      
      public function §?^§() : String
      {
         return this.mNextState;
      }
      
      public function §-![§() : Boolean
      {
         if(this.mNextState != §'B§.§^o§)
         {
            this.§;!Z§(this.mNextState);
            this.setViewSize(this.§3]§,this.§5!6§);
            this.mNextState = §'B§.§^o§;
            return true;
         }
         return false;
      }
      
      public function §;!Z§(param1:String) : Boolean
      {
         var _loc2_:§'B§ = null;
         var _loc3_:§'B§ = null;
         for each(_loc3_ in this.§9O§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §,"0§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§2!N§ != null)
         {
            §,"0§.log("deActivate state: " + this.§2!N§.mName);
            this.§2!N§.deActivate();
            this.previousStateDeactivate();
            this.§&"!§.removeChild(this.§2!N§.§ D§);
         }
         this.§2!N§ = _loc2_;
         §,"0§.log("Activate state: " + this.§2!N§.mName);
         this.stage.frameRate = this.§2!N§.getTargetFrameRate();
         this.§&"!§.addChildAt(this.§2!N§.§ D§,0);
         this.§2!N§.activate();
         this.§2!N§.§!!3§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §&p§(param1:§'B§) : Boolean
      {
         if(param1 != null)
         {
            this.§9O§.push(param1);
            param1.§0!z§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§2!N§)
         {
            return §'B§.§++§;
         }
         return this.§2!N§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§&"!§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§&"!§.height;
      }
      
      public function get canvas() : §@B§
      {
         return this.§&"!§;
      }
      
      public function get stage() : Stage
      {
         return this.§&"!§.stage;
      }
      
      public function §#"3§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2!N§)
         {
            this.§2!N§.setViewSize(param1,param2);
         }
         this.§3]§ = param1;
         this.§5!6§ = param2;
      }
   }
}
