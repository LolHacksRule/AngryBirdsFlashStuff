package §`<§
{
   import §'m§.§^S§;
   import §=9§.§#!+§;
   import flash.display.Stage;
   
   public class §7^§
   {
       
      
      private var §^9§:Vector.<§,!6§>;
      
      protected var §-!-§:§,!6§;
      
      private var mNextState:String;
      
      protected var §9e§:§#!+§ = null;
      
      private var §!!1§:Number;
      
      private var §5#§:Number;
      
      public function §7^§(param1:§#!+§)
      {
         super();
         this.§^9§ = new Vector.<§,!6§>();
         this.§9e§ = param1;
         this.§!!1§ = this.§9e§.stage.stageWidth;
         this.§5#§ = this.§9e§.stage.stageHeight;
      }
      
      public function §4;§() : String
      {
         if(this.§-!-§ != null)
         {
            return this.§-!-§.mName;
         }
         return §,!6§.§#4§;
      }
      
      public function §8U§() : §,!6§
      {
         if(this.§-!-§ != null)
         {
            return this.§-!-§;
         }
         return null;
      }
      
      public function §!!5§(param1:String) : §,!6§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^9§.length)
         {
            if((this.§^9§[_loc2_] as §,!6§).mName == param1)
            {
               return this.§^9§[_loc2_] as §,!6§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"y§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get § l§() : Boolean
      {
         return this.mNextState != §,!6§.§#4§;
      }
      
      public function §'!7§() : Boolean
      {
         if(this.mNextState != §,!6§.§#4§)
         {
            this.§ 7§(this.mNextState);
            this.setViewSize(this.§!!1§,this.§5#§);
            this.mNextState = §,!6§.§#4§;
            return true;
         }
         return false;
      }
      
      public function § 7§(param1:String) : Boolean
      {
         var _loc2_:§,!6§ = null;
         var _loc3_:§,!6§ = null;
         for each(_loc3_ in this.§^9§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §^S§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§-!-§ != null)
         {
            §^S§.log("deActivate state: " + this.§-!-§.mName);
            this.§-!-§.deActivate();
            this.previousStateDeactivate();
            this.§9e§.removeChild(this.§-!-§.§+x§);
         }
         this.§-!-§ = _loc2_;
         §^S§.log("Activate state: " + this.§-!-§.mName);
         this.stage.frameRate = this.§-!-§.§]<§();
         this.§9e§.addChildAt(this.§-!-§.§+x§,0);
         this.§-!-§.activate();
         this.§-!-§.§6?§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §0m§(param1:§,!6§) : Boolean
      {
         if(param1 != null)
         {
            this.§^9§.push(param1);
            param1.§#!E§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§-!-§)
         {
            return §,!6§.§[!B§;
         }
         return this.§-!-§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§9e§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§9e§.height;
      }
      
      public function get canvas() : §#!+§
      {
         return this.§9e§;
      }
      
      public function get stage() : Stage
      {
         return this.§9e§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§-!-§)
         {
            this.§-!-§.setViewSize(param1,param2);
         }
         this.§!!1§ = param1;
         this.§5#§ = param2;
      }
   }
}
