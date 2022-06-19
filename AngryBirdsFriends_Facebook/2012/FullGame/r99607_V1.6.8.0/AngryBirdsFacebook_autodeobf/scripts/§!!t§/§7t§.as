package §!!t§
{
   import §0!?§.§'!$§;
   import §0M§.§`!9§;
   import flash.display.Stage;
   
   public class §7t§
   {
       
      
      private var §?9§:Vector.<§,-§>;
      
      protected var §+!U§:§,-§;
      
      private var mNextState:String;
      
      protected var §"=§:§`!9§ = null;
      
      private var §2f§:Number;
      
      private var §^L§:Number;
      
      public function §7t§(param1:§`!9§)
      {
         super();
         this.§?9§ = new Vector.<§,-§>();
         this.§"=§ = param1;
         this.§2f§ = this.§"=§.stage.stageWidth;
         this.§^L§ = this.§"=§.stage.stageHeight;
      }
      
      public function §="'§() : String
      {
         if(this.§+!U§ != null)
         {
            return this.§+!U§.mName;
         }
         return §,-§.§#"%§;
      }
      
      public function §>p§() : §,-§
      {
         if(this.§+!U§ != null)
         {
            return this.§+!U§;
         }
         return null;
      }
      
      public function §5";§(param1:String) : §,-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?9§.length)
         {
            if((this.§?9§[_loc2_] as §,-§).mName == param1)
            {
               return this.§?9§[_loc2_] as §,-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%,§(param1:String, param2:§,-§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§?9§.length)
         {
            if((this.§?9§[_loc3_] as §,-§).mName == param1)
            {
               this.§?9§[_loc3_] = param2;
               param2.§,!P§ = this;
            }
            _loc3_++;
         }
      }
      
      public function § !`§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §@!!§() : Boolean
      {
         return this.mNextState != §,-§.§#"%§;
      }
      
      public function §-!u§() : String
      {
         return this.mNextState;
      }
      
      public function §`[§() : Boolean
      {
         if(this.mNextState != §,-§.§#"%§)
         {
            this.§&!y§(this.mNextState);
            this.setViewSize(this.§2f§,this.§^L§);
            this.mNextState = §,-§.§#"%§;
            return true;
         }
         return false;
      }
      
      public function §&!y§(param1:String) : Boolean
      {
         var _loc2_:§,-§ = null;
         var _loc3_:§,-§ = null;
         for each(_loc3_ in this.§?9§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §'!$§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§+!U§ != null)
         {
            §'!$§.log("deActivate state: " + this.§+!U§.mName);
            this.§+!U§.deActivate();
            this.previousStateDeactivate();
            this.§"=§.removeChild(this.§+!U§.§3!b§);
         }
         this.§+!U§ = _loc2_;
         §'!$§.log("Activate state: " + this.§+!U§.mName);
         this.stage.frameRate = this.§+!U§.§try §();
         this.§"=§.addChildAt(this.§+!U§.§3!b§,0);
         this.§+!U§.activate();
         this.§+!U§.§4A§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?F§(param1:§,-§) : Boolean
      {
         if(param1 != null)
         {
            this.§?9§.push(param1);
            param1.§,!P§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§+!U§)
         {
            return §,-§.§7!I§;
         }
         return this.§+!U§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"=§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"=§.height;
      }
      
      public function get canvas() : §`!9§
      {
         return this.§"=§;
      }
      
      public function get stage() : Stage
      {
         return this.§"=§.stage;
      }
      
      public function §+Q§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+!U§)
         {
            this.§+!U§.setViewSize(param1,param2);
         }
         this.§2f§ = param1;
         this.§^L§ = param2;
      }
   }
}
