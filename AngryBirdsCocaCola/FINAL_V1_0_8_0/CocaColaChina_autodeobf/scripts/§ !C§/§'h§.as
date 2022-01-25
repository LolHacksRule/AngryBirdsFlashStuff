package § !C§
{
   import §-!D§.§8!]§;
   import §^=§.§8!6§;
   import flash.display.Stage;
   
   public class §'h§
   {
       
      
      private var § !X§:Vector.<§6!W§>;
      
      protected var §8[§:§6!W§;
      
      private var mNextState:String;
      
      protected var §6!0§:§8!]§ = null;
      
      private var §`$§:Number;
      
      private var §5G§:Number;
      
      public function §'h§(param1:§8!]§)
      {
         super();
         this.§ !X§ = new Vector.<§6!W§>();
         this.§6!0§ = param1;
         this.§`$§ = this.§6!0§.stage.stageWidth;
         this.§5G§ = this.§6!0§.stage.stageHeight;
      }
      
      public function §-D§() : String
      {
         if(this.§8[§ != null)
         {
            return this.§8[§.mName;
         }
         return §6!W§.§>!C§;
      }
      
      public function §<!"§() : §6!W§
      {
         if(this.§8[§ != null)
         {
            return this.§8[§;
         }
         return null;
      }
      
      public function §^p§(param1:String) : §6!W§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !X§.length)
         {
            if((this.§ !X§[_loc2_] as §6!W§).mName == param1)
            {
               return this.§ !X§[_loc2_] as §6!W§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"G§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §&!d§() : Boolean
      {
         return this.mNextState != §6!W§.§>!C§;
      }
      
      public function §[%§() : String
      {
         return this.mNextState;
      }
      
      public function §0C§() : Boolean
      {
         if(this.mNextState != §6!W§.§>!C§)
         {
            this.§@#§(this.mNextState);
            this.setViewSize(this.§`$§,this.§5G§);
            this.mNextState = §6!W§.§>!C§;
            return true;
         }
         return false;
      }
      
      public function §@#§(param1:String) : Boolean
      {
         var _loc2_:§6!W§ = null;
         var _loc3_:§6!W§ = null;
         for each(_loc3_ in this.§ !X§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §8!6§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§8[§ != null)
         {
            §8!6§.log("deActivate state: " + this.§8[§.mName);
            this.§8[§.deActivate();
            this.previousStateDeactivate();
            this.§6!0§.removeChild(this.§8[§.§@!Y§);
         }
         this.§8[§ = _loc2_;
         §8!6§.log("Activate state: " + this.§8[§.mName);
         this.stage.frameRate = this.§8[§.§&<§();
         this.§6!0§.addChildAt(this.§8[§.§@!Y§,0);
         this.§8[§.activate();
         this.§8[§.§%s§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §-!e§(param1:§6!W§) : Boolean
      {
         if(param1 != null)
         {
            this.§ !X§.push(param1);
            param1.§8!"§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§8[§)
         {
            return §6!W§.§>y§;
         }
         return this.§8[§.run(param1);
      }
      
      public function §6A§() : Number
      {
         return this.§6!0§.width;
      }
      
      public function §'i§() : Number
      {
         return this.§6!0§.height;
      }
      
      public function get canvas() : §8!]§
      {
         return this.§6!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§6!0§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§8[§)
         {
            this.§8[§.setViewSize(param1,param2);
         }
         this.§`$§ = param1;
         this.§5G§ = param2;
      }
   }
}
