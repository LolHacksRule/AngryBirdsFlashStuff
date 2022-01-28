package §5"-§
{
   import §""3§.§,"5§;
   import §=!M§.§9!P§;
   import flash.display.Stage;
   
   public class §`$§
   {
       
      
      private var §6w§:Vector.<§5y§>;
      
      protected var §;L§:§5y§;
      
      private var mNextState:String;
      
      protected var §6!q§:§,"5§ = null;
      
      private var §4r§:Number;
      
      private var §+" §:Number;
      
      public function §`$§(param1:§,"5§)
      {
         super();
         this.§6w§ = new Vector.<§5y§>();
         this.§6!q§ = param1;
         this.§4r§ = this.§6!q§.stage.stageWidth;
         this.§+" § = this.§6!q§.stage.stageHeight;
      }
      
      public function §^!t§() : String
      {
         if(this.§;L§ != null)
         {
            return this.§;L§.mName;
         }
         return §5y§.§[D§;
      }
      
      public function §&[§() : §5y§
      {
         if(this.§;L§ != null)
         {
            return this.§;L§;
         }
         return null;
      }
      
      public function §=!L§(param1:String) : §5y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6w§.length)
         {
            if((this.§6w§[_loc2_] as §5y§).mName == param1)
            {
               return this.§6w§[_loc2_] as §5y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § !!§(param1:String, param2:§5y§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§6w§.length)
         {
            if((this.§6w§[_loc3_] as §5y§).mName == param1)
            {
               this.§6w§[_loc3_] = param2;
               param2.§'!e§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §1!b§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §!v§() : Boolean
      {
         return this.mNextState != §5y§.§[D§;
      }
      
      public function §-!d§() : String
      {
         return this.mNextState;
      }
      
      public function § !@§() : Boolean
      {
         if(this.mNextState != §5y§.§[D§)
         {
            this.§4!'§(this.mNextState);
            this.setViewSize(this.§4r§,this.§+" §);
            this.mNextState = §5y§.§[D§;
            return true;
         }
         return false;
      }
      
      public function §4!'§(param1:String) : Boolean
      {
         var _loc2_:§5y§ = null;
         var _loc3_:§5y§ = null;
         for each(_loc3_ in this.§6w§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §9!P§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§;L§ != null)
         {
            §9!P§.log("deActivate state: " + this.§;L§.mName);
            this.§;L§.deActivate();
            this.previousStateDeactivate();
            this.§6!q§.removeChild(this.§;L§.§!&§);
         }
         this.§;L§ = _loc2_;
         §9!P§.log("Activate state: " + this.§;L§.mName);
         this.stage.frameRate = this.§;L§.getTargetFrameRate();
         this.§6!q§.addChildAt(this.§;L§.§!&§,0);
         this.§;L§.activate();
         this.§;L§.§?!e§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,Y§(param1:§5y§) : Boolean
      {
         if(param1 != null)
         {
            this.§6w§.push(param1);
            param1.§'!e§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§;L§)
         {
            return §5y§.§1!3§;
         }
         return this.§;L§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§6!q§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§6!q§.height;
      }
      
      public function get canvas() : §,"5§
      {
         return this.§6!q§;
      }
      
      public function get stage() : Stage
      {
         return this.§6!q§.stage;
      }
      
      public function §=8§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§;L§)
         {
            this.§;L§.setViewSize(param1,param2);
         }
         this.§4r§ = param1;
         this.§+" § = param2;
      }
   }
}
