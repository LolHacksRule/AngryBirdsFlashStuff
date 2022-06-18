package §7=§
{
   import §@!;§.§!!=§;
   import §`R§.§8D§;
   import flash.display.Stage;
   
   public class §6S§
   {
       
      
      private var §=5§:Vector.<§9Y§>;
      
      protected var §]!#§:§9Y§;
      
      private var mNextState:String;
      
      protected var §7!F§:§8D§ = null;
      
      private var §9C§:Number;
      
      private var §6X§:Number;
      
      public function §6S§(param1:§8D§)
      {
         super();
         this.§=5§ = new Vector.<§9Y§>();
         this.§7!F§ = param1;
         this.§9C§ = this.§7!F§.stage.stageWidth;
         this.§6X§ = this.§7!F§.stage.stageHeight;
      }
      
      public function §8!&§() : String
      {
         if(this.§]!#§ != null)
         {
            return this.§]!#§.mName;
         }
         return §9Y§.§ n§;
      }
      
      public function §6!6§() : §9Y§
      {
         if(this.§]!#§ != null)
         {
            return this.§]!#§;
         }
         return null;
      }
      
      public function §%!F§(param1:String) : §9Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=5§.length)
         {
            if((this.§=5§[_loc2_] as §9Y§).mName == param1)
            {
               return this.§=5§[_loc2_] as §9Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&!'§(param1:String, param2:§9Y§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§=5§.length)
         {
            if((this.§=5§[_loc3_] as §9Y§).mName == param1)
            {
               this.§=5§[_loc3_] = param2;
               param2.§"u§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §3!K§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §+C§() : Boolean
      {
         return this.mNextState != §9Y§.§ n§;
      }
      
      public function §;F§() : String
      {
         return this.mNextState;
      }
      
      public function § V§() : Boolean
      {
         if(this.mNextState != §9Y§.§ n§)
         {
            this.§`!K§(this.mNextState);
            this.setViewSize(this.§9C§,this.§6X§);
            this.mNextState = §9Y§.§ n§;
            return true;
         }
         return false;
      }
      
      public function §`!K§(param1:String) : Boolean
      {
         var _loc2_:§9Y§ = null;
         var _loc3_:§9Y§ = null;
         for each(_loc3_ in this.§=5§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §!!=§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§]!#§ != null)
         {
            §!!=§.log("deActivate state: " + this.§]!#§.mName);
            this.§]!#§.deActivate();
            this.previousStateDeactivate();
            this.§7!F§.removeChild(this.§]!#§.§;e§);
         }
         this.§]!#§ = _loc2_;
         §!!=§.log("Activate state: " + this.§]!#§.mName);
         this.stage.frameRate = this.§]!#§.§&!H§();
         this.§7!F§.addChildAt(this.§]!#§.§;e§,0);
         this.§]!#§.activate();
         this.§]!#§.§8-§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §%y§(param1:§9Y§) : Boolean
      {
         if(param1 != null)
         {
            this.§=5§.push(param1);
            param1.§"u§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§]!#§)
         {
            return §9Y§.§0p§;
         }
         return this.§]!#§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§7!F§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§7!F§.height;
      }
      
      public function get canvas() : §8D§
      {
         return this.§7!F§;
      }
      
      public function get stage() : Stage
      {
         return this.§7!F§.stage;
      }
      
      public function §'!@§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§]!#§)
         {
            this.§]!#§.setViewSize(param1,param2);
         }
         this.§9C§ = param1;
         this.§6X§ = param2;
      }
   }
}
