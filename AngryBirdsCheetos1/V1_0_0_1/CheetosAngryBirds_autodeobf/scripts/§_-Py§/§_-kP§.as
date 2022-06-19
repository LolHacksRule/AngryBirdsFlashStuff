package §_-Py§
{
   import §_-QJ§.§_-006§;
   import §_-U0§.§_-tF§;
   import flash.display.Stage;
   
   public class §_-kP§
   {
       
      
      private var §_-jx§:Vector.<§_-eK§>;
      
      protected var §_-BM§:§_-eK§;
      
      private var mNextState:String;
      
      protected var §_-d3§:§_-006§ = null;
      
      private var §_-mb§:Number;
      
      private var §_-L6§:Number;
      
      public function §_-kP§(param1:§_-006§)
      {
         super();
         this.§_-jx§ = new Vector.<§_-eK§>();
         this.§_-d3§ = param1;
         this.§_-mb§ = this.§_-d3§.stage.stageWidth;
         this.§_-L6§ = this.§_-d3§.stage.stageHeight;
      }
      
      public function §_-kK§() : String
      {
         if(this.§_-BM§ != null)
         {
            return this.§_-BM§.mName;
         }
         return §_-eK§.§_-rr§;
      }
      
      public function §_-Ki§() : §_-eK§
      {
         if(this.§_-BM§ != null)
         {
            return this.§_-BM§;
         }
         return null;
      }
      
      public function §_-Zk§(param1:String) : §_-eK§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-jx§.length)
         {
            if((this.§_-jx§[_loc2_] as §_-eK§).mName == param1)
            {
               return this.§_-jx§[_loc2_] as §_-eK§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-gp§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §_-An§() : Boolean
      {
         return this.mNextState != §_-eK§.§_-rr§;
      }
      
      public function §_-Ss§() : Boolean
      {
         if(this.mNextState != §_-eK§.§_-rr§)
         {
            this.§_-to§(this.mNextState);
            this.§_-FL§(this.§_-mb§,this.§_-L6§);
            this.mNextState = §_-eK§.§_-rr§;
            return true;
         }
         return false;
      }
      
      public function §_-to§(param1:String) : Boolean
      {
         var _loc2_:§_-eK§ = null;
         var _loc3_:§_-eK§ = null;
         for each(_loc3_ in this.§_-jx§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-tF§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-BM§ != null)
         {
            §_-tF§.log("deActivate state: " + this.§_-BM§.mName);
            this.§_-BM§.deActivate();
            this.previousStateDeactivate();
            this.§_-d3§.removeChild(this.§_-BM§.§_-S0§);
         }
         this.§_-BM§ = _loc2_;
         §_-tF§.log("Activate state: " + this.§_-BM§.mName);
         this.§_-d3§.addChildAt(this.§_-BM§.§_-S0§,0);
         this.§_-BM§.activate();
         this.§_-BM§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §_-bs§(param1:§_-eK§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-jx§.push(param1);
            param1.§_-e2§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-BM§)
         {
            return §_-eK§.§_-pQ§;
         }
         return this.§_-BM§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-d3§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-d3§.height;
      }
      
      public function get canvas() : §_-006§
      {
         return this.§_-d3§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-d3§.stage;
      }
      
      public function §_-FL§(param1:Number, param2:Number) : void
      {
         if(this.§_-BM§ && this.§_-BM§.§_-Lb§)
         {
            this.§_-BM§.§_-Lb§.viewWidth = param1;
            this.§_-BM§.§_-Lb§.viewHeight = param2;
         }
         this.§_-mb§ = param1;
         this.§_-L6§ = param2;
      }
   }
}
