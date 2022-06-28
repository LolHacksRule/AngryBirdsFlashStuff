package §0!§
{
   import §2§.§0!<§;
   import §8!9§.§<!7§;
   import flash.display.Stage;
   
   public class §'X§
   {
       
      
      private var §%y§:Vector.<§0!5§>;
      
      protected var §+B§:§0!5§;
      
      private var mNextState:String;
      
      protected var §<P§:§<!7§ = null;
      
      private var §0J§:Number;
      
      private var §8w§:Number;
      
      public function §'X§(param1:§<!7§)
      {
         super();
         this.§%y§ = new Vector.<§0!5§>();
         this.§<P§ = param1;
         this.§0J§ = this.§<P§.stage.stageWidth;
         this.§8w§ = this.§<P§.stage.stageHeight;
      }
      
      public function §%k§() : String
      {
         if(this.§+B§ != null)
         {
            return this.§+B§.mName;
         }
         return §0!5§.§9!2§;
      }
      
      public function §@!;§() : §0!5§
      {
         if(this.§+B§ != null)
         {
            return this.§+B§;
         }
         return null;
      }
      
      public function §0!H§(param1:String) : §0!5§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%y§.length)
         {
            if((this.§%y§[_loc2_] as §0!5§).mName == param1)
            {
               return this.§%y§[_loc2_] as §0!5§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3S§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §,t§() : Boolean
      {
         return this.mNextState != §0!5§.§9!2§;
      }
      
      public function §^,§() : Boolean
      {
         if(this.mNextState != §0!5§.§9!2§)
         {
            this.§`!9§(this.mNextState);
            this.setViewSize(this.§0J§,this.§8w§);
            this.mNextState = §0!5§.§9!2§;
            return true;
         }
         return false;
      }
      
      public function §`!9§(param1:String) : Boolean
      {
         var _loc2_:§0!5§ = null;
         var _loc3_:§0!5§ = null;
         for each(_loc3_ in this.§%y§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §0!<§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§+B§ != null)
         {
            §0!<§.log("deActivate state: " + this.§+B§.mName);
            this.§+B§.deActivate();
            this.previousStateDeactivate();
            this.§<P§.removeChild(this.§+B§.§0W§);
         }
         this.§+B§ = _loc2_;
         §0!<§.log("Activate state: " + this.§+B§.mName);
         this.stage.frameRate = this.§+B§.§0!"§();
         this.§<P§.addChildAt(this.§+B§.§0W§,0);
         this.§+B§.activate();
         this.§+B§.§4!=§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7!&§(param1:§0!5§) : Boolean
      {
         if(param1 != null)
         {
            this.§%y§.push(param1);
            param1.§<;§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§+B§)
         {
            return §0!5§.§0s§;
         }
         return this.§+B§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§<P§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§<P§.height;
      }
      
      public function get canvas() : §<!7§
      {
         return this.§<P§;
      }
      
      public function get stage() : Stage
      {
         return this.§<P§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+B§)
         {
            this.§+B§.setViewSize(param1,param2);
         }
         this.§0J§ = param1;
         this.§8w§ = param2;
      }
   }
}
