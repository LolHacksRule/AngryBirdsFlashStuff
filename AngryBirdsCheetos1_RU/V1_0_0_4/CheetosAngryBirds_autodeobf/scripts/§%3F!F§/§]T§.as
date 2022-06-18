package §?!F§
{
   import §,h§.§^7§;
   import §^!&§.§;C§;
   import flash.display.Stage;
   
   public class §]T§
   {
       
      
      private var §^!?§:Vector.<§0!Y§>;
      
      protected var §3k§:§0!Y§;
      
      private var mNextState:String;
      
      protected var §^U§:§^7§ = null;
      
      private var §!?§:Number;
      
      private var §7!J§:Number;
      
      public function §]T§(param1:§^7§)
      {
         super();
         this.§^!?§ = new Vector.<§0!Y§>();
         this.§^U§ = param1;
         this.§!?§ = this.§^U§.stage.stageWidth;
         this.§7!J§ = this.§^U§.stage.stageHeight;
      }
      
      public function §]!1§() : String
      {
         if(this.§3k§ != null)
         {
            return this.§3k§.mName;
         }
         return §0!Y§.§"!A§;
      }
      
      public function §^1§() : §0!Y§
      {
         if(this.§3k§ != null)
         {
            return this.§3k§;
         }
         return null;
      }
      
      public function § !]§(param1:String) : §0!Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!?§.length)
         {
            if((this.§^!?§[_loc2_] as §0!Y§).mName == param1)
            {
               return this.§^!?§[_loc2_] as §0!Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §implements§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §[>§() : Boolean
      {
         return this.mNextState != §0!Y§.§"!A§;
      }
      
      public function §'!%§() : Boolean
      {
         if(this.mNextState != §0!Y§.§"!A§)
         {
            this.§8z§(this.mNextState);
            this.setViewSize(this.§!?§,this.§7!J§);
            this.mNextState = §0!Y§.§"!A§;
            return true;
         }
         return false;
      }
      
      public function §8z§(param1:String) : Boolean
      {
         var _loc2_:§0!Y§ = null;
         var _loc3_:§0!Y§ = null;
         for each(_loc3_ in this.§^!?§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §;C§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§3k§ != null)
         {
            §;C§.log("deActivate state: " + this.§3k§.mName);
            this.§3k§.deActivate();
            this.previousStateDeactivate();
            this.§^U§.removeChild(this.§3k§.§0!5§);
         }
         this.§3k§ = _loc2_;
         §;C§.log("Activate state: " + this.§3k§.mName);
         this.stage.frameRate = this.§3k§.§^;§();
         this.§^U§.addChildAt(this.§3k§.§0!5§,0);
         this.§3k§.activate();
         this.§3k§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?i§(param1:§0!Y§) : Boolean
      {
         if(param1 != null)
         {
            this.§^!?§.push(param1);
            param1.§!Z§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§3k§)
         {
            return §0!Y§.§?!H§;
         }
         return this.§3k§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§^U§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§^U§.height;
      }
      
      public function get canvas() : §^7§
      {
         return this.§^U§;
      }
      
      public function get stage() : Stage
      {
         return this.§^U§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§3k§)
         {
            this.§3k§.setViewSize(param1,param2);
         }
         this.§!?§ = param1;
         this.§7!J§ = param2;
      }
   }
}
