package §8!H§
{
   import §-!$§.§,w§;
   import §1!B§.§<m§;
   import flash.display.Stage;
   
   public class §6!o§
   {
       
      
      private var §!!r§:Vector.<§9![§>;
      
      protected var §`!<§:§9![§;
      
      private var mNextState:String;
      
      protected var §`O§:§,w§ = null;
      
      private var §3o§:Number;
      
      private var §6>§:Number;
      
      public function §6!o§(param1:§,w§)
      {
         super();
         this.§!!r§ = new Vector.<§9![§>();
         this.§`O§ = param1;
         this.§3o§ = this.§`O§.stage.stageWidth;
         this.§6>§ = this.§`O§.stage.stageHeight;
      }
      
      public function §,^§() : String
      {
         if(this.§`!<§ != null)
         {
            return this.§`!<§.mName;
         }
         return §9![§.§4h§;
      }
      
      public function §>j§() : §9![§
      {
         if(this.§`!<§ != null)
         {
            return this.§`!<§;
         }
         return null;
      }
      
      public function §0<§(param1:String) : §9![§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!r§.length)
         {
            if((this.§!!r§[_loc2_] as §9![§).mName == param1)
            {
               return this.§!!r§[_loc2_] as §9![§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[G§(param1:String, param2:§9![§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!r§.length)
         {
            if((this.§!!r§[_loc3_] as §9![§).mName == param1)
            {
               this.§!!r§[_loc3_] = param2;
               param2.§>!X§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §9!m§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0!-§() : Boolean
      {
         return this.mNextState != §9![§.§4h§;
      }
      
      public function §5!I§() : String
      {
         return this.mNextState;
      }
      
      public function §+Q§() : Boolean
      {
         if(this.mNextState != §9![§.§4h§)
         {
            this.§81§(this.mNextState);
            this.setViewSize(this.§3o§,this.§6>§);
            this.mNextState = §9![§.§4h§;
            return true;
         }
         return false;
      }
      
      public function §81§(param1:String) : Boolean
      {
         var _loc2_:§9![§ = null;
         var _loc3_:§9![§ = null;
         for each(_loc3_ in this.§!!r§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §<m§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§`!<§ != null)
         {
            §<m§.log("deActivate state: " + this.§`!<§.mName);
            this.§`!<§.deActivate();
            this.previousStateDeactivate();
            this.§`O§.removeChild(this.§`!<§.§]2§);
         }
         this.§`!<§ = _loc2_;
         §<m§.log("Activate state: " + this.§`!<§.mName);
         this.stage.frameRate = this.§`!<§.§@!;§();
         this.§`O§.addChildAt(this.§`!<§.§]2§,0);
         this.§`!<§.activate();
         this.§`!<§.§4B§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9X§(param1:§9![§) : Boolean
      {
         if(param1 != null)
         {
            this.§!!r§.push(param1);
            param1.§>!X§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`!<§)
         {
            return §9![§.§7!_§;
         }
         return this.§`!<§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`O§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`O§.height;
      }
      
      public function get canvas() : §,w§
      {
         return this.§`O§;
      }
      
      public function get stage() : Stage
      {
         return this.§`O§.stage;
      }
      
      public function §0!n§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`!<§)
         {
            this.§`!<§.setViewSize(param1,param2);
         }
         this.§3o§ = param1;
         this.§6>§ = param2;
      }
   }
}
