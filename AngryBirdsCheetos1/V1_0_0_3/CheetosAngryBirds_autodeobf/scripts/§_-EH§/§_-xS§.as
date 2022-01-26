package §_-EH§
{
   import §_-9a§.§_-a5§;
   import §_-r6§.§_-Oy§;
   import flash.display.Stage;
   
   public class §_-xS§
   {
       
      
      private var §_-9v§:Vector.<§_-uz§>;
      
      protected var §_-ib§:§_-uz§;
      
      private var mNextState:String;
      
      protected var §_-93§:§_-a5§ = null;
      
      private var §_-mK§:Number;
      
      private var §_-uJ§:Number;
      
      public function §_-xS§(param1:§_-a5§)
      {
         super();
         this.§_-9v§ = new Vector.<§_-uz§>();
         this.§_-93§ = param1;
         this.§_-mK§ = this.§_-93§.stage.stageWidth;
         this.§_-uJ§ = this.§_-93§.stage.stageHeight;
      }
      
      public function §_-X8§() : String
      {
         if(this.§_-ib§ != null)
         {
            return this.§_-ib§.mName;
         }
         return §_-uz§.§_-1m§;
      }
      
      public function §_-vm§() : §_-uz§
      {
         if(this.§_-ib§ != null)
         {
            return this.§_-ib§;
         }
         return null;
      }
      
      public function §_-PL§(param1:String) : §_-uz§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-9v§.length)
         {
            if((this.§_-9v§[_loc2_] as §_-uz§).mName == param1)
            {
               return this.§_-9v§[_loc2_] as §_-uz§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-va§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §_-00§() : Boolean
      {
         return this.mNextState != §_-uz§.§_-1m§;
      }
      
      public function §_-x3§() : Boolean
      {
         if(this.mNextState != §_-uz§.§_-1m§)
         {
            this.§_-SD§(this.mNextState);
            this.§_-Su§(this.§_-mK§,this.§_-uJ§);
            this.mNextState = §_-uz§.§_-1m§;
            return true;
         }
         return false;
      }
      
      public function §_-SD§(param1:String) : Boolean
      {
         var _loc2_:§_-uz§ = null;
         var _loc3_:§_-uz§ = null;
         for each(_loc3_ in this.§_-9v§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-Oy§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-ib§ != null)
         {
            §_-Oy§.log("deActivate state: " + this.§_-ib§.mName);
            this.§_-ib§.deActivate();
            this.previousStateDeactivate();
            this.§_-93§.removeChild(this.§_-ib§.§_-kv§);
         }
         this.§_-ib§ = _loc2_;
         §_-Oy§.log("Activate state: " + this.§_-ib§.mName);
         this.§_-93§.addChildAt(this.§_-ib§.§_-kv§,0);
         this.§_-ib§.activate();
         this.§_-ib§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §_-ia§(param1:§_-uz§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-9v§.push(param1);
            param1.§_-mO§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-ib§)
         {
            return §_-uz§.§_-aY§;
         }
         return this.§_-ib§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-93§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-93§.height;
      }
      
      public function get canvas() : §_-a5§
      {
         return this.§_-93§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-93§.stage;
      }
      
      public function §_-Su§(param1:Number, param2:Number) : void
      {
         if(this.§_-ib§ && this.§_-ib§.§_-nq§)
         {
            this.§_-ib§.§_-nq§.viewWidth = param1;
            this.§_-ib§.§_-nq§.viewHeight = param2;
         }
         this.§_-mK§ = param1;
         this.§_-uJ§ = param2;
      }
   }
}
