package §1Y§
{
   import §0A§.§90§;
   import §7!P§.§-3§;
   import flash.display.Stage;
   
   public class §?^§
   {
       
      
      private var §6!M§:Vector.<§+$§>;
      
      protected var §61§:§+$§;
      
      private var mNextState:String;
      
      protected var §!!+§:§90§ = null;
      
      private var §%!=§:Number;
      
      private var §!!Y§:Number;
      
      public function §?^§(param1:§90§)
      {
         super();
         this.§6!M§ = new Vector.<§+$§>();
         this.§!!+§ = param1;
         this.§%!=§ = this.§!!+§.stage.stageWidth;
         this.§!!Y§ = this.§!!+§.stage.stageHeight;
      }
      
      public function §%!P§() : String
      {
         if(this.§61§ != null)
         {
            return this.§61§.mName;
         }
         return §+$§.§0!Q§;
      }
      
      public function §<!S§() : §+$§
      {
         if(this.§61§ != null)
         {
            return this.§61§;
         }
         return null;
      }
      
      public function §"!1§(param1:String) : §+$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!M§.length)
         {
            if((this.§6!M§[_loc2_] as §+$§).mName == param1)
            {
               return this.§6!M§[_loc2_] as §+$§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'!W§(param1:String, param2:§+$§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!M§.length)
         {
            if((this.§6!M§[_loc3_] as §+$§).mName == param1)
            {
               this.§6!M§[_loc3_] = param2;
               param2.§<!>§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §%+§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get § !D§() : Boolean
      {
         return this.mNextState != §+$§.§0!Q§;
      }
      
      public function § h§() : String
      {
         return this.mNextState;
      }
      
      public function §@!7§() : Boolean
      {
         if(this.mNextState != §+$§.§0!Q§)
         {
            this.§-!I§(this.mNextState);
            this.setViewSize(this.§%!=§,this.§!!Y§);
            this.mNextState = §+$§.§0!Q§;
            return true;
         }
         return false;
      }
      
      public function §-!I§(param1:String) : Boolean
      {
         var _loc2_:§+$§ = null;
         var _loc3_:§+$§ = null;
         for each(_loc3_ in this.§6!M§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §-3§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§61§ != null)
         {
            §-3§.log("deActivate state: " + this.§61§.mName);
            this.§61§.deActivate();
            this.previousStateDeactivate();
            this.§!!+§.removeChild(this.§61§.§"$§);
         }
         this.§61§ = _loc2_;
         §-3§.log("Activate state: " + this.§61§.mName);
         this.stage.frameRate = this.§61§.§>!-§();
         this.§!!+§.addChildAt(this.§61§.§"$§,0);
         this.§61§.activate();
         this.§61§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §+K§(param1:§+$§) : Boolean
      {
         if(param1 != null)
         {
            this.§6!M§.push(param1);
            param1.§<!>§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§61§)
         {
            return §+$§.§[!%§;
         }
         return this.§61§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§!!+§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§!!+§.height;
      }
      
      public function get canvas() : §90§
      {
         return this.§!!+§;
      }
      
      public function get stage() : Stage
      {
         return this.§!!+§.stage;
      }
      
      public function §0%§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§61§)
         {
            this.§61§.setViewSize(param1,param2);
         }
         this.§%!=§ = param1;
         this.§!!Y§ = param2;
      }
   }
}
