package §?#h§
{
   import §8#?§.§!!y§;
   import §9#K§.§=#f§;
   import flash.display.Stage;
   
   public class §1!j§
   {
       
      
      private var §=!c§:Vector.<§3#=§>;
      
      protected var §>"d§:§3#=§;
      
      private var §9;§:String;
      
      private var §6"h§:String;
      
      protected var § $"§:§!!y§ = null;
      
      private var §="G§:Number;
      
      private var §7!@§:Number;
      
      public function §1!j§(param1:§!!y§)
      {
         super();
         this.§=!c§ = new Vector.<§3#=§>();
         this.§ $"§ = param1;
         this.§="G§ = this.§ $"§.stage.stageWidth;
         this.§7!@§ = this.§ $"§.stage.stageHeight;
      }
      
      public function § p§() : String
      {
         if(this.§>"d§ != null)
         {
            return this.§>"d§.§-!O§;
         }
         return §3#=§.§&#N§;
      }
      
      public function §1h§() : §3#=§
      {
         if(this.§>"d§ != null)
         {
            return this.§>"d§;
         }
         return null;
      }
      
      public function §-"Y§(param1:String) : §3#=§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!c§.length)
         {
            if((this.§=!c§[_loc2_] as §3#=§).§-!O§ == param1)
            {
               return this.§=!c§[_loc2_] as §3#=§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1"x§(param1:String, param2:Class) : §3#=§
      {
         var _loc4_:§3#=§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§=!c§.length)
         {
            if((this.§=!c§[_loc3_] as §3#=§).§-!O§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§=!c§[_loc3_] = _loc4_;
               _loc4_.§,#>§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : §3#=§
      {
         return new param1();
      }
      
      public function §%D§(param1:String) : void
      {
         this.§9;§ = param1;
      }
      
      public function get §4"+§() : Boolean
      {
         return this.§9;§ != §3#=§.§&#N§;
      }
      
      public function §""[§() : String
      {
         return this.§9;§;
      }
      
      public function §^$7§() : String
      {
         return this.§6"h§;
      }
      
      public function §-#%§() : Boolean
      {
         if(this.§9;§ != §3#=§.§&#N§)
         {
            this.setState(this.§9;§);
            this.setViewSize(this.§="G§,this.§7!@§);
            this.§6"h§ = this.§9;§;
            this.§9;§ = §3#=§.§&#N§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§3#=§ = null;
         var _loc3_:§3#=§ = null;
         for each(_loc3_ in this.§=!c§)
         {
            if(_loc3_.§-!O§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §=#f§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§>"d§ != null)
         {
            §=#f§.log("deActivate state: " + this.§>"d§.§-!O§);
            _loc4_ = this.§>"d§.§'"2§;
            this.§>"d§.§'"2§ = false;
            this.§>"d§.deActivate();
            this.previousStateDeactivate();
            this.§ $"§.removeChild(this.§>"d§.§ U§);
         }
         this.§>"d§ = _loc2_;
         §=#f§.log("Activate state: " + this.§>"d§.§-!O§);
         this.stage.frameRate = this.§>"d§.getTargetFrameRate();
         this.§ $"§.addChildAt(this.§>"d§.§ U§,0);
         this.§>"d§.activate(this.§^$7§());
         this.§>"d§.§6l§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7u§(param1:§3#=§) : Boolean
      {
         if(param1 != null)
         {
            this.§=!c§.push(param1);
            param1.§,#>§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§>"d§)
         {
            return §3#=§.§'"G§;
         }
         if(this.§>"d§.nextState)
         {
            return §3#=§.§6#z§;
         }
         return this.§>"d§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§ $"§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§ $"§.height;
      }
      
      public function get canvas() : §!!y§
      {
         return this.§ $"§;
      }
      
      public function get stage() : Stage
      {
         return this.§ $"§.stage;
      }
      
      public function § #w§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>"d§)
         {
            this.§>"d§.setViewSize(param1,param2);
         }
         this.§="G§ = param1;
         this.§7!@§ = param2;
      }
   }
}
