package §&!6§
{
   import §0i§.§]_§;
   import §6c§.§=!Y§;
   import flash.display.Stage;
   
   public class §!!T§
   {
       
      
      private var §=!4§:Vector.<§5r§>;
      
      protected var §0z§:§5r§;
      
      private var mNextState:String;
      
      protected var §`!]§:§=!Y§ = null;
      
      private var §;!_§:Number;
      
      private var §%M§:Number;
      
      public function §!!T§(param1:§=!Y§)
      {
         super();
         this.§=!4§ = new Vector.<§5r§>();
         this.§`!]§ = param1;
         this.§;!_§ = this.§`!]§.stage.stageWidth;
         this.§%M§ = this.§`!]§.stage.stageHeight;
      }
      
      public function §+!D§() : String
      {
         if(this.§0z§ != null)
         {
            return this.§0z§.mName;
         }
         return §5r§.§8S§;
      }
      
      public function §,!;§() : §5r§
      {
         if(this.§0z§ != null)
         {
            return this.§0z§;
         }
         return null;
      }
      
      public function §"w§(param1:String) : §5r§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!4§.length)
         {
            if((this.§=!4§[_loc2_] as §5r§).mName == param1)
            {
               return this.§=!4§[_loc2_] as §5r§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5!?§(param1:String, param2:§5r§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§=!4§.length)
         {
            if((this.§=!4§[_loc3_] as §5r§).mName == param1)
            {
               this.§=!4§[_loc3_] = param2;
               param2.§;m§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §<'§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get § E§() : Boolean
      {
         return this.mNextState != §5r§.§8S§;
      }
      
      public function §-a§() : String
      {
         return this.mNextState;
      }
      
      public function §8!`§() : Boolean
      {
         if(this.mNextState != §5r§.§8S§)
         {
            this.§7!A§(this.mNextState);
            this.setViewSize(this.§;!_§,this.§%M§);
            this.mNextState = §5r§.§8S§;
            return true;
         }
         return false;
      }
      
      public function §7!A§(param1:String) : Boolean
      {
         var _loc2_:§5r§ = null;
         var _loc3_:§5r§ = null;
         for each(_loc3_ in this.§=!4§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §]_§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§0z§ != null)
         {
            §]_§.log("deActivate state: " + this.§0z§.mName);
            this.§0z§.deActivate();
            this.previousStateDeactivate();
            this.§`!]§.removeChild(this.§0z§.§3![§);
         }
         this.§0z§ = _loc2_;
         §]_§.log("Activate state: " + this.§0z§.mName);
         this.stage.frameRate = this.§0z§.§?!P§();
         this.§`!]§.addChildAt(this.§0z§.§3![§,0);
         this.§0z§.activate();
         this.§0z§.§<!K§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §#!O§(param1:§5r§) : Boolean
      {
         if(param1 != null)
         {
            this.§=!4§.push(param1);
            param1.§;m§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§0z§)
         {
            return §5r§.§9_§;
         }
         return this.§0z§.run(param1);
      }
      
      public function §%!B§() : Number
      {
         return this.§`!]§.width;
      }
      
      public function §`b§() : Number
      {
         return this.§`!]§.height;
      }
      
      public function get canvas() : §=!Y§
      {
         return this.§`!]§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!]§.stage;
      }
      
      public function §,!!§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§0z§)
         {
            this.§0z§.setViewSize(param1,param2);
         }
         this.§;!_§ = param1;
         this.§%M§ = param2;
      }
   }
}
