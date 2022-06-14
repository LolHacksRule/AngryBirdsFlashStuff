package §0!G§
{
   import §-"6§.§5E§;
   import §6o§.§+!k§;
   import flash.display.Stage;
   
   public class §&"5§
   {
       
      
      private var §>!"§:Vector.<§1-§>;
      
      protected var §8%§:§1-§;
      
      private var mNextState:String;
      
      protected var §5!X§:§5E§ = null;
      
      private var §+"D§:Number;
      
      private var §[8§:Number;
      
      public function §&"5§(param1:§5E§)
      {
         super();
         this.§>!"§ = new Vector.<§1-§>();
         this.§5!X§ = param1;
         this.§+"D§ = this.§5!X§.stage.stageWidth;
         this.§[8§ = this.§5!X§.stage.stageHeight;
      }
      
      public function §<!W§() : String
      {
         if(this.§8%§ != null)
         {
            return this.§8%§.mName;
         }
         return §1-§.§+"7§;
      }
      
      public function §>k§() : §1-§
      {
         if(this.§8%§ != null)
         {
            return this.§8%§;
         }
         return null;
      }
      
      public function §;n§(param1:String) : §1-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!"§.length)
         {
            if((this.§>!"§[_loc2_] as §1-§).mName == param1)
            {
               return this.§>!"§[_loc2_] as §1-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-![§(param1:String, param2:§1-§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§>!"§.length)
         {
            if((this.§>!"§[_loc3_] as §1-§).mName == param1)
            {
               this.§>!"§[_loc3_] = param2;
               param2.§0!+§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §=!w§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §<z§() : Boolean
      {
         return this.mNextState != §1-§.§+"7§;
      }
      
      public function §;"&§() : String
      {
         return this.mNextState;
      }
      
      public function §[!@§() : Boolean
      {
         if(this.mNextState != §1-§.§+"7§)
         {
            this.§2!r§(this.mNextState);
            this.setViewSize(this.§+"D§,this.§[8§);
            this.mNextState = §1-§.§+"7§;
            return true;
         }
         return false;
      }
      
      public function §2!r§(param1:String) : Boolean
      {
         var _loc2_:§1-§ = null;
         var _loc3_:§1-§ = null;
         for each(_loc3_ in this.§>!"§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §+!k§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§8%§ != null)
         {
            §+!k§.log("deActivate state: " + this.§8%§.mName);
            this.§8%§.deActivate();
            this.previousStateDeactivate();
            this.§5!X§.removeChild(this.§8%§.§3^§);
         }
         this.§8%§ = _loc2_;
         §+!k§.log("Activate state: " + this.§8%§.mName);
         this.stage.frameRate = this.§8%§.§ g§();
         this.§5!X§.addChildAt(this.§8%§.§3^§,0);
         this.§8%§.activate();
         this.§8%§.§7!#§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §[3§(param1:§1-§) : Boolean
      {
         if(param1 != null)
         {
            this.§>!"§.push(param1);
            param1.§0!+§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§8%§)
         {
            return §1-§.§]m§;
         }
         return this.§8%§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§5!X§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§5!X§.height;
      }
      
      public function get canvas() : §5E§
      {
         return this.§5!X§;
      }
      
      public function get stage() : Stage
      {
         return this.§5!X§.stage;
      }
      
      public function §<!s§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§8%§)
         {
            this.§8%§.setViewSize(param1,param2);
         }
         this.§+"D§ = param1;
         this.§[8§ = param2;
      }
   }
}
