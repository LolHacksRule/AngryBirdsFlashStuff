package §_-sj§
{
   import §_-aA§.§_-I0§;
   import §_-r8§.§_-G7§;
   import flash.display.Stage;
   
   public class §_-Vo§
   {
       
      
      private var §_-Gv§:Vector.<§_-qs§>;
      
      protected var §_-th§:§_-qs§;
      
      private var mNextState:String;
      
      protected var §_-bk§:§_-G7§ = null;
      
      private var §_-P5§:Number;
      
      private var §_-Ju§:Number;
      
      public function §_-Vo§(param1:§_-G7§)
      {
         super();
         this.§_-Gv§ = new Vector.<§_-qs§>();
         this.§_-bk§ = param1;
         this.§_-P5§ = this.§_-bk§.stage.stageWidth;
         this.§_-Ju§ = this.§_-bk§.stage.stageHeight;
      }
      
      public function §_-xC§() : String
      {
         if(this.§_-th§ != null)
         {
            return this.§_-th§.mName;
         }
         return §_-qs§.§_-sa§;
      }
      
      public function §_-kl§() : §_-qs§
      {
         if(this.§_-th§ != null)
         {
            return this.§_-th§;
         }
         return null;
      }
      
      public function §_-Nf§(param1:String) : §_-qs§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Gv§.length)
         {
            if((this.§_-Gv§[_loc2_] as §_-qs§).mName == param1)
            {
               return this.§_-Gv§[_loc2_] as §_-qs§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-MV§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §_-cu§() : Boolean
      {
         return this.mNextState != §_-qs§.§_-sa§;
      }
      
      public function §_-I7§() : Boolean
      {
         if(this.mNextState != §_-qs§.§_-sa§)
         {
            this.§_-k7§(this.mNextState);
            this.§_-uB§(this.§_-P5§,this.§_-Ju§);
            this.mNextState = §_-qs§.§_-sa§;
            return true;
         }
         return false;
      }
      
      public function §_-k7§(param1:String) : Boolean
      {
         var _loc2_:§_-qs§ = null;
         var _loc3_:§_-qs§ = null;
         for each(_loc3_ in this.§_-Gv§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-I0§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-th§ != null)
         {
            §_-I0§.log("deActivate state: " + this.§_-th§.mName);
            this.§_-th§.deActivate();
            this.previousStateDeactivate();
            this.§_-bk§.removeChild(this.§_-th§.§_-xQ§);
         }
         this.§_-th§ = _loc2_;
         §_-I0§.log("Activate state: " + this.§_-th§.mName);
         this.§_-bk§.addChildAt(this.§_-th§.§_-xQ§,0);
         this.§_-th§.activate();
         this.§_-th§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §_-Kg§(param1:§_-qs§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-Gv§.push(param1);
            param1.§_-lJ§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-th§)
         {
            return §_-qs§.§_-ar§;
         }
         return this.§_-th§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-bk§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-bk§.height;
      }
      
      public function get canvas() : §_-G7§
      {
         return this.§_-bk§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-bk§.stage;
      }
      
      public function §_-uB§(param1:Number, param2:Number) : void
      {
         if(this.§_-th§ && this.§_-th§.§_-x2§)
         {
            this.§_-th§.§_-x2§.viewWidth = param1;
            this.§_-th§.§_-x2§.viewHeight = param2;
         }
         this.§_-P5§ = param1;
         this.§_-Ju§ = param2;
      }
   }
}
