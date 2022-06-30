package §4;§
{
   import §%!$§.§[Z§;
   import §3h§.§8q§;
   import flash.display.Stage;
   
   public class §^]§
   {
       
      
      private var §'!"§:Vector.<§,h§>;
      
      protected var §,!`§:§,h§;
      
      private var mNextState:String;
      
      protected var §[!6§:§8q§ = null;
      
      private var §]%§:Number;
      
      private var §>h§:Number;
      
      public function §^]§(param1:§8q§)
      {
         super();
         this.§'!"§ = new Vector.<§,h§>();
         this.§[!6§ = param1;
         this.§]%§ = this.§[!6§.stage.stageWidth;
         this.§>h§ = this.§[!6§.stage.stageHeight;
      }
      
      public function §;!Z§() : String
      {
         if(this.§,!`§ != null)
         {
            return this.§,!`§.mName;
         }
         return §,h§.§!!<§;
      }
      
      public function §!#§() : §,h§
      {
         if(this.§,!`§ != null)
         {
            return this.§,!`§;
         }
         return null;
      }
      
      public function §[4§(param1:String) : §,h§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!"§.length)
         {
            if((this.§'!"§[_loc2_] as §,h§).mName == param1)
            {
               return this.§'!"§[_loc2_] as §,h§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,!a§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §<!Z§() : Boolean
      {
         return this.mNextState != §,h§.§!!<§;
      }
      
      public function §[`§() : Boolean
      {
         if(this.mNextState != §,h§.§!!<§)
         {
            this.§+p§(this.mNextState);
            this.setViewSize(this.§]%§,this.§>h§);
            this.mNextState = §,h§.§!!<§;
            return true;
         }
         return false;
      }
      
      public function §+p§(param1:String) : Boolean
      {
         var _loc2_:§,h§ = null;
         var _loc3_:§,h§ = null;
         for each(_loc3_ in this.§'!"§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §[Z§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§,!`§ != null)
         {
            §[Z§.log("deActivate state: " + this.§,!`§.mName);
            this.§,!`§.deActivate();
            this.previousStateDeactivate();
            this.§[!6§.removeChild(this.§,!`§.§0b§);
         }
         this.§,!`§ = _loc2_;
         §[Z§.log("Activate state: " + this.§,!`§.mName);
         this.stage.frameRate = this.§,!`§.§9u§();
         this.§[!6§.addChildAt(this.§,!`§.§0b§,0);
         this.§,!`§.activate();
         this.§,!`§.§3!D§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §%!S§(param1:§,h§) : Boolean
      {
         if(param1 != null)
         {
            this.§'!"§.push(param1);
            param1.§;!A§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§,!`§)
         {
            return §,h§.§5!;§;
         }
         return this.§,!`§.run(param1);
      }
      
      public function §3m§() : Number
      {
         return this.§[!6§.width;
      }
      
      public function §3Y§() : Number
      {
         return this.§[!6§.height;
      }
      
      public function get canvas() : §8q§
      {
         return this.§[!6§;
      }
      
      public function get stage() : Stage
      {
         return this.§[!6§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,!`§)
         {
            this.§,!`§.setViewSize(param1,param2);
         }
         this.§]%§ = param1;
         this.§>h§ = param2;
      }
   }
}
