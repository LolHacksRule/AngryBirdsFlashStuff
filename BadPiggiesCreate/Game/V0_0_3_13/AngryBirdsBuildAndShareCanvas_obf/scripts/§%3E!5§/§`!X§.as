package §>!5§
{
   import §&W§.§7L§;
   import §9";§.§,"4§;
   import flash.display.Stage;
   
   public class §`!X§
   {
       
      
      private var §#i§:Vector.<§>!T§>;
      
      protected var §^`§:§>!T§;
      
      private var mNextState:String;
      
      protected var §[!V§:§,"4§ = null;
      
      private var §@u§:Number;
      
      private var §;!c§:Number;
      
      public function §`!X§(param1:§,"4§)
      {
         super();
         this.§#i§ = new Vector.<§>!T§>();
         this.§[!V§ = param1;
         this.§@u§ = this.§[!V§.stage.stageWidth;
         this.§;!c§ = this.§[!V§.stage.stageHeight;
      }
      
      public function §6!k§() : String
      {
         if(this.§^`§ != null)
         {
            return this.§^`§.mName;
         }
         return §>!T§.§9!$§;
      }
      
      public function §-!q§() : §>!T§
      {
         if(this.§^`§ != null)
         {
            return this.§^`§;
         }
         return null;
      }
      
      public function §<!Y§(param1:String) : §>!T§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#i§.length)
         {
            if((this.§#i§[_loc2_] as §>!T§).mName == param1)
            {
               return this.§#i§[_loc2_] as §>!T§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § !S§(param1:String, param2:§>!T§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§#i§.length)
         {
            if((this.§#i§[_loc3_] as §>!T§).mName == param1)
            {
               this.§#i§[_loc3_] = param2;
               param2.§#! § = this;
            }
            _loc3_++;
         }
      }
      
      public function §4>§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §`!7§() : Boolean
      {
         return this.mNextState != §>!T§.§9!$§;
      }
      
      public function §9U§() : String
      {
         return this.mNextState;
      }
      
      public function §0!k§() : Boolean
      {
         if(this.mNextState != §>!T§.§9!$§)
         {
            this.§-j§(this.mNextState);
            this.setViewSize(this.§@u§,this.§;!c§);
            this.mNextState = §>!T§.§9!$§;
            return true;
         }
         return false;
      }
      
      public function §-j§(param1:String) : Boolean
      {
         var _loc2_:§>!T§ = null;
         var _loc3_:§>!T§ = null;
         for each(_loc3_ in this.§#i§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §7L§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§^`§ != null)
         {
            §7L§.log("deActivate state: " + this.§^`§.mName);
            this.§^`§.deActivate();
            this.previousStateDeactivate();
            this.§[!V§.removeChild(this.§^`§.§`B§);
         }
         this.§^`§ = _loc2_;
         §7L§.log("Activate state: " + this.§^`§.mName);
         this.stage.frameRate = this.§^`§.getTargetFrameRate();
         this.§[!V§.addChildAt(this.§^`§.§`B§,0);
         this.§^`§.activate();
         this.§^`§.§=G§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §'"§(param1:§>!T§) : Boolean
      {
         if(param1 != null)
         {
            this.§#i§.push(param1);
            param1.§#! § = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§^`§)
         {
            return §>!T§.§9!L§;
         }
         return this.§^`§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§[!V§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§[!V§.height;
      }
      
      public function get canvas() : §,"4§
      {
         return this.§[!V§;
      }
      
      public function get stage() : Stage
      {
         return this.§[!V§.stage;
      }
      
      public function §2-§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^`§)
         {
            this.§^`§.setViewSize(param1,param2);
         }
         this.§@u§ = param1;
         this.§;!c§ = param2;
      }
   }
}
