package §2!O§
{
   import §2j§.§ +§;
   import §;X§.§ do§;
   import flash.display.Stage;
   
   public class §2!x§
   {
       
      
      private var §7#§:Vector.<§,w§>;
      
      protected var §?x§:§,w§;
      
      private var mNextState:String;
      
      protected var §+q§:§ +§ = null;
      
      private var §#!B§:Number;
      
      private var §5!v§:Number;
      
      public function §2!x§(param1:§ +§)
      {
         super();
         this.§7#§ = new Vector.<§,w§>();
         this.§+q§ = param1;
         this.§#!B§ = this.§+q§.stage.stageWidth;
         this.§5!v§ = this.§+q§.stage.stageHeight;
      }
      
      public function §[x§() : String
      {
         if(this.§?x§ != null)
         {
            return this.§?x§.mName;
         }
         return §,w§.§ R§;
      }
      
      public function §1w§() : §,w§
      {
         if(this.§?x§ != null)
         {
            return this.§?x§;
         }
         return null;
      }
      
      public function §3"-§(param1:String) : §,w§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7#§.length)
         {
            if((this.§7#§[_loc2_] as §,w§).mName == param1)
            {
               return this.§7#§[_loc2_] as §,w§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"!v§(param1:String, param2:§,w§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§7#§.length)
         {
            if((this.§7#§[_loc3_] as §,w§).mName == param1)
            {
               this.§7#§[_loc3_] = param2;
               param2.§8"6§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §2!]§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §;M§() : Boolean
      {
         return this.mNextState != §,w§.§ R§;
      }
      
      public function §,!5§() : String
      {
         return this.mNextState;
      }
      
      public function §]"'§() : Boolean
      {
         if(this.mNextState != §,w§.§ R§)
         {
            this.§5"3§(this.mNextState);
            this.setViewSize(this.§#!B§,this.§5!v§);
            this.mNextState = §,w§.§ R§;
            return true;
         }
         return false;
      }
      
      public function §5"3§(param1:String) : Boolean
      {
         var _loc2_:§,w§ = null;
         var _loc3_:§,w§ = null;
         for each(_loc3_ in this.§7#§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            § do§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§?x§ != null)
         {
            § do§.log("deActivate state: " + this.§?x§.mName);
            this.§?x§.deActivate();
            this.previousStateDeactivate();
            this.§+q§.removeChild(this.§?x§.§ "5§);
         }
         this.§?x§ = _loc2_;
         § do§.log("Activate state: " + this.§?x§.mName);
         this.stage.frameRate = this.§?x§.getTargetFrameRate();
         this.§+q§.addChildAt(this.§?x§.§ "5§,0);
         this.§?x§.activate();
         this.§?x§.§4!$§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §6w§(param1:§,w§) : Boolean
      {
         if(param1 != null)
         {
            this.§7#§.push(param1);
            param1.§8"6§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§?x§)
         {
            return §,w§.§%s§;
         }
         return this.§?x§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§+q§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§+q§.height;
      }
      
      public function get canvas() : § +§
      {
         return this.§+q§;
      }
      
      public function get stage() : Stage
      {
         return this.§+q§.stage;
      }
      
      public function §1L§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?x§)
         {
            this.§?x§.setViewSize(param1,param2);
         }
         this.§#!B§ = param1;
         this.§5!v§ = param2;
      }
   }
}
