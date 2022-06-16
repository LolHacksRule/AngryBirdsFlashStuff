package §=#§
{
   import §8!k§.§4"0§;
   import §[x§.§%3§;
   import flash.display.Stage;
   
   public class §+!H§
   {
       
      
      private var §=i§:Vector.<§5!S§>;
      
      protected var §55§:§5!S§;
      
      private var mNextState:String;
      
      protected var §%!C§:§4"0§ = null;
      
      private var §8!4§:Number;
      
      private var §`P§:Number;
      
      public function §+!H§(param1:§4"0§)
      {
         super();
         this.§=i§ = new Vector.<§5!S§>();
         this.§%!C§ = param1;
         this.§8!4§ = this.§%!C§.stage.stageWidth;
         this.§`P§ = this.§%!C§.stage.stageHeight;
      }
      
      public function §;!b§() : String
      {
         if(this.§55§ != null)
         {
            return this.§55§.mName;
         }
         return §5!S§.§4o§;
      }
      
      public function §6!k§() : §5!S§
      {
         if(this.§55§ != null)
         {
            return this.§55§;
         }
         return null;
      }
      
      public function §2Z§(param1:String) : §5!S§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=i§.length)
         {
            if((this.§=i§[_loc2_] as §5!S§).mName == param1)
            {
               return this.§=i§[_loc2_] as §5!S§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1!L§(param1:String, param2:§5!S§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§=i§.length)
         {
            if((this.§=i§[_loc3_] as §5!S§).mName == param1)
            {
               this.§=i§[_loc3_] = param2;
               param2.§6U§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §>"I§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §'<§() : Boolean
      {
         return this.mNextState != §5!S§.§4o§;
      }
      
      public function §=e§() : String
      {
         return this.mNextState;
      }
      
      public function §4g§() : Boolean
      {
         if(this.mNextState != §5!S§.§4o§)
         {
            this.§?"?§(this.mNextState);
            this.setViewSize(this.§8!4§,this.§`P§);
            this.mNextState = §5!S§.§4o§;
            return true;
         }
         return false;
      }
      
      public function §?"?§(param1:String) : Boolean
      {
         var _loc2_:§5!S§ = null;
         var _loc3_:§5!S§ = null;
         for each(_loc3_ in this.§=i§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §%3§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§55§ != null)
         {
            §%3§.log("deActivate state: " + this.§55§.mName);
            this.§55§.deActivate();
            this.previousStateDeactivate();
            this.§%!C§.removeChild(this.§55§.§`b§);
         }
         this.§55§ = _loc2_;
         §%3§.log("Activate state: " + this.§55§.mName);
         this.stage.frameRate = this.§55§.§9a§();
         this.§%!C§.addChildAt(this.§55§.§`b§,0);
         this.§55§.activate();
         this.§55§.§%"§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §2"7§(param1:§5!S§) : Boolean
      {
         if(param1 != null)
         {
            this.§=i§.push(param1);
            param1.§6U§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§55§)
         {
            return §5!S§.§^!_§;
         }
         return this.§55§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§%!C§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§%!C§.height;
      }
      
      public function get canvas() : §4"0§
      {
         return this.§%!C§;
      }
      
      public function get stage() : Stage
      {
         return this.§%!C§.stage;
      }
      
      public function §@7§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§55§)
         {
            this.§55§.setViewSize(param1,param2);
         }
         this.§8!4§ = param1;
         this.§`P§ = param2;
      }
   }
}
