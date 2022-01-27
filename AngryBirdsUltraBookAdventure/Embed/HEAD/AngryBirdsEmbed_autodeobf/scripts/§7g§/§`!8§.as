package §7g§
{
   import §3a§.§7!+§;
   import §7j§.§5!N§;
   import flash.display.Stage;
   
   public class §`!8§
   {
       
      
      private var §+R§:Vector.<§1Q§>;
      
      protected var §6D§:§1Q§;
      
      private var mNextState:String;
      
      protected var §"B§:§5!N§ = null;
      
      private var §5n§:Number;
      
      private var §@!$§:Number;
      
      public function §`!8§(param1:§5!N§)
      {
         super();
         this.§+R§ = new Vector.<§1Q§>();
         this.§"B§ = param1;
         this.§5n§ = this.§"B§.stage.stageWidth;
         this.§@!$§ = this.§"B§.stage.stageHeight;
      }
      
      public function §8!;§() : String
      {
         if(this.§6D§ != null)
         {
            return this.§6D§.mName;
         }
         return §1Q§.§5+§;
      }
      
      public function §@v§() : §1Q§
      {
         if(this.§6D§ != null)
         {
            return this.§6D§;
         }
         return null;
      }
      
      public function §`l§(param1:String) : §1Q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+R§.length)
         {
            if((this.§+R§[_loc2_] as §1Q§).mName == param1)
            {
               return this.§+R§[_loc2_] as §1Q§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[q§(param1:String, param2:§1Q§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§+R§.length)
         {
            if((this.§+R§[_loc3_] as §1Q§).mName == param1)
            {
               this.§+R§[_loc3_] = param2;
               param2.§<1§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §+N§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §"_§() : Boolean
      {
         return this.mNextState != §1Q§.§5+§;
      }
      
      public function §'!"§() : String
      {
         return this.mNextState;
      }
      
      public function §=2§() : Boolean
      {
         if(this.mNextState != §1Q§.§5+§)
         {
            this.§4!2§(this.mNextState);
            this.setViewSize(this.§5n§,this.§@!$§);
            this.mNextState = §1Q§.§5+§;
            return true;
         }
         return false;
      }
      
      public function §4!2§(param1:String) : Boolean
      {
         var _loc2_:§1Q§ = null;
         var _loc3_:§1Q§ = null;
         for each(_loc3_ in this.§+R§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §7!+§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§6D§ != null)
         {
            §7!+§.log("deActivate state: " + this.§6D§.mName);
            this.§6D§.deActivate();
            this.previousStateDeactivate();
            this.§"B§.removeChild(this.§6D§.§,!7§);
         }
         this.§6D§ = _loc2_;
         §7!+§.log("Activate state: " + this.§6D§.mName);
         this.stage.frameRate = this.§6D§.§"!§();
         this.§"B§.addChildAt(this.§6D§.§,!7§,0);
         this.§6D§.activate();
         this.§6D§.§^7§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §8Y§(param1:§1Q§) : Boolean
      {
         if(param1 != null)
         {
            this.§+R§.push(param1);
            param1.§<1§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§6D§)
         {
            return §1Q§.§1!6§;
         }
         return this.§6D§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"B§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"B§.height;
      }
      
      public function get canvas() : §5!N§
      {
         return this.§"B§;
      }
      
      public function get stage() : Stage
      {
         return this.§"B§.stage;
      }
      
      public function §;!2§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§6D§)
         {
            this.§6D§.setViewSize(param1,param2);
         }
         this.§5n§ = param1;
         this.§@!$§ = param2;
      }
   }
}
