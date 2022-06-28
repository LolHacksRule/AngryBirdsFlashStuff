package §<!>§
{
   import §&A§.§,6§;
   import §^_§.§!>§;
   import flash.display.Stage;
   
   public class §>!C§
   {
       
      
      private var §<!7§:Vector.<§?Y§>;
      
      protected var §>!P§:§?Y§;
      
      private var mNextState:String;
      
      protected var §8!0§:§,6§ = null;
      
      private var § !6§:Number;
      
      private var §0!j§:Number;
      
      public function §>!C§(param1:§,6§)
      {
         super();
         this.§<!7§ = new Vector.<§?Y§>();
         this.§8!0§ = param1;
         this.§ !6§ = this.§8!0§.stage.stageWidth;
         this.§0!j§ = this.§8!0§.stage.stageHeight;
      }
      
      public function §6!3§() : String
      {
         if(this.§>!P§ != null)
         {
            return this.§>!P§.mName;
         }
         return §?Y§.§-!'§;
      }
      
      public function §4C§() : §?Y§
      {
         if(this.§>!P§ != null)
         {
            return this.§>!P§;
         }
         return null;
      }
      
      public function §]!-§(param1:String) : §?Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!7§.length)
         {
            if((this.§<!7§[_loc2_] as §?Y§).mName == param1)
            {
               return this.§<!7§[_loc2_] as §?Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,!6§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §8!W§() : Boolean
      {
         return this.mNextState != §?Y§.§-!'§;
      }
      
      public function §8p§() : Boolean
      {
         if(this.mNextState != §?Y§.§-!'§)
         {
            this.§ !%§(this.mNextState);
            this.setViewSize(this.§ !6§,this.§0!j§);
            this.mNextState = §?Y§.§-!'§;
            return true;
         }
         return false;
      }
      
      public function § !%§(param1:String) : Boolean
      {
         var _loc2_:§?Y§ = null;
         var _loc3_:§?Y§ = null;
         for each(_loc3_ in this.§<!7§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §!>§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§>!P§ != null)
         {
            §!>§.log("deActivate state: " + this.§>!P§.mName);
            this.§>!P§.deActivate();
            this.previousStateDeactivate();
            this.§8!0§.removeChild(this.§>!P§.§8X§);
         }
         this.§>!P§ = _loc2_;
         §!>§.log("Activate state: " + this.§>!P§.mName);
         this.stage.frameRate = this.§>!P§.§ a§();
         this.§8!0§.addChildAt(this.§>!P§.§8X§,0);
         this.§>!P§.activate();
         this.§>!P§.§9U§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9!`§(param1:§?Y§) : Boolean
      {
         if(param1 != null)
         {
            this.§<!7§.push(param1);
            param1.§&!C§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§>!P§)
         {
            return §?Y§.§^!]§;
         }
         return this.§>!P§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§8!0§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§8!0§.height;
      }
      
      public function get canvas() : §,6§
      {
         return this.§8!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!0§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>!P§)
         {
            this.§>!P§.setViewSize(param1,param2);
         }
         this.§ !6§ = param1;
         this.§0!j§ = param2;
      }
   }
}
