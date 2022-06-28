package §'X§
{
   import §0!<§.§#y§;
   import §<!7§.§2+§;
   import flash.display.Stage;
   
   public class §%y§
   {
       
      
      private var §+B§:Vector.<§9[§>;
      
      protected var §%k§:§9[§;
      
      private var mNextState:String;
      
      protected var §<P§:§2+§ = null;
      
      private var §8w§:Number;
      
      private var §44§:Number;
      
      public function §%y§(param1:§2+§)
      {
         super();
         this.§+B§ = new Vector.<§9[§>();
         this.§<P§ = param1;
         this.§8w§ = this.§<P§.stage.stageWidth;
         this.§44§ = this.§<P§.stage.stageHeight;
      }
      
      public function §@!;§() : String
      {
         if(this.§%k§ != null)
         {
            return this.§%k§.mName;
         }
         return §9[§.§2Z§;
      }
      
      public function §0!H§() : §9[§
      {
         if(this.§%k§ != null)
         {
            return this.§%k§;
         }
         return null;
      }
      
      public function §3S§(param1:String) : §9[§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+B§.length)
         {
            if((this.§+B§[_loc2_] as §9[§).mName == param1)
            {
               return this.§+B§[_loc2_] as §9[§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,t§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §^,§() : Boolean
      {
         return this.mNextState != §9[§.§2Z§;
      }
      
      public function §`!9§() : Boolean
      {
         if(this.mNextState != §9[§.§2Z§)
         {
            this.§7!&§(this.mNextState);
            this.setViewSize(this.§8w§,this.§44§);
            this.mNextState = §9[§.§2Z§;
            return true;
         }
         return false;
      }
      
      public function §7!&§(param1:String) : Boolean
      {
         var _loc2_:§9[§ = null;
         var _loc3_:§9[§ = null;
         for each(_loc3_ in this.§+B§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §#y§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§%k§ != null)
         {
            §#y§.log("deActivate state: " + this.§%k§.mName);
            this.§%k§.deActivate();
            this.previousStateDeactivate();
            this.§<P§.removeChild(this.§%k§.§0W§);
         }
         this.§%k§ = _loc2_;
         §#y§.log("Activate state: " + this.§%k§.mName);
         this.stage.frameRate = this.§%k§.§`u§();
         this.§<P§.addChildAt(this.§%k§.§0W§,0);
         this.§%k§.activate();
         this.§%k§.§,!G§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §0!5§(param1:§9[§) : Boolean
      {
         if(param1 != null)
         {
            this.§+B§.push(param1);
            param1.§4!=§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§%k§)
         {
            return §9[§.§ !+§;
         }
         return this.§%k§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§<P§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§<P§.height;
      }
      
      public function get canvas() : §2+§
      {
         return this.§<P§;
      }
      
      public function get stage() : Stage
      {
         return this.§<P§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§%k§)
         {
            this.§%k§.setViewSize(param1,param2);
         }
         this.§8w§ = param1;
         this.§44§ = param2;
      }
   }
}
