package §"I§
{
   import §1_§.§[V§;
   import §=g§.§@!L§;
   import flash.display.Stage;
   
   public class §,r§
   {
       
      
      private var §!!_§:Vector.<§-x§>;
      
      protected var §`5§:§-x§;
      
      private var mNextState:String;
      
      protected var §`z§:§[V§ = null;
      
      private var §,`§:Number;
      
      private var §%I§:Number;
      
      public function §,r§(param1:§[V§)
      {
         super();
         this.§!!_§ = new Vector.<§-x§>();
         this.§`z§ = param1;
         this.§,`§ = this.§`z§.stage.stageWidth;
         this.§%I§ = this.§`z§.stage.stageHeight;
      }
      
      public function §@!?§() : String
      {
         if(this.§`5§ != null)
         {
            return this.§`5§.mName;
         }
         return §-x§.§8!7§;
      }
      
      public function § <§() : §-x§
      {
         if(this.§`5§ != null)
         {
            return this.§`5§;
         }
         return null;
      }
      
      public function §-l§(param1:String) : §-x§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!_§.length)
         {
            if((this.§!!_§[_loc2_] as §-x§).mName == param1)
            {
               return this.§!!_§[_loc2_] as §-x§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3!N§(param1:String, param2:§-x§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!_§.length)
         {
            if((this.§!!_§[_loc3_] as §-x§).mName == param1)
            {
               this.§!!_§[_loc3_] = param2;
               param2.§"D§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §1!?§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §]j§() : Boolean
      {
         return this.mNextState != §-x§.§8!7§;
      }
      
      public function §5!F§() : String
      {
         return this.mNextState;
      }
      
      public function §3![§() : Boolean
      {
         if(this.mNextState != §-x§.§8!7§)
         {
            this.§3S§(this.mNextState);
            this.setViewSize(this.§,`§,this.§%I§);
            this.mNextState = §-x§.§8!7§;
            return true;
         }
         return false;
      }
      
      public function §3S§(param1:String) : Boolean
      {
         var _loc2_:§-x§ = null;
         var _loc3_:§-x§ = null;
         for each(_loc3_ in this.§!!_§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §@!L§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§`5§ != null)
         {
            §@!L§.log("deActivate state: " + this.§`5§.mName);
            this.§`5§.deActivate();
            this.previousStateDeactivate();
            this.§`z§.removeChild(this.§`5§.§=#§);
         }
         this.§`5§ = _loc2_;
         §@!L§.log("Activate state: " + this.§`5§.mName);
         this.stage.frameRate = this.§`5§.§'v§();
         this.§`z§.addChildAt(this.§`5§.§=#§,0);
         this.§`5§.activate();
         this.§`5§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9>§(param1:§-x§) : Boolean
      {
         if(param1 != null)
         {
            this.§!!_§.push(param1);
            param1.§"D§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`5§)
         {
            return §-x§.§`T§;
         }
         return this.§`5§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`z§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`z§.height;
      }
      
      public function get canvas() : §[V§
      {
         return this.§`z§;
      }
      
      public function get stage() : Stage
      {
         return this.§`z§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`5§)
         {
            this.§`5§.setViewSize(param1,param2);
         }
         this.§,`§ = param1;
         this.§%I§ = param2;
      }
   }
}
