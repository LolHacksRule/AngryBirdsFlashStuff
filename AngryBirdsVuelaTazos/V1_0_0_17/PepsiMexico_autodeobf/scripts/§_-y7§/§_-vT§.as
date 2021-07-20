package §_-y7§
{
   import §_-9§.§_-0W§;
   import §_-e3§.§_-54§;
   import flash.display.Stage;
   
   public class §_-vT§
   {
       
      
      private var §_-u6§:Vector.<§_-VA§>;
      
      private var §_-qZ§:§_-VA§;
      
      private var mNextState:String;
      
      protected var §_-XX§:§_-0W§ = null;
      
      private var §_-Px§:Number;
      
      private var §_-9t§:Number;
      
      public function §_-vT§(param1:§_-0W§)
      {
         super();
         this.§_-u6§ = new Vector.<§_-VA§>();
         this.§_-XX§ = param1;
         this.§_-Px§ = this.§_-XX§.stage.stageWidth;
         this.§_-9t§ = this.§_-XX§.stage.stageHeight;
      }
      
      public function §_-9j§() : String
      {
         if(this.§_-qZ§ != null)
         {
            return this.§_-qZ§.mName;
         }
         return §_-VA§.§_-U§;
      }
      
      public function §_-cO§() : §_-VA§
      {
         if(this.§_-qZ§ != null)
         {
            return this.§_-qZ§;
         }
         return null;
      }
      
      public function §_-eE§(param1:String) : §_-VA§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-u6§.length)
         {
            if((this.§_-u6§[_loc2_] as §_-VA§).mName == param1)
            {
               return this.§_-u6§[_loc2_] as §_-VA§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Ld§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function §_-wg§() : Boolean
      {
         if(this.mNextState != §_-VA§.§_-U§)
         {
            this.§_-DN§(this.mNextState);
            this.§_-nJ§(this.§_-Px§,this.§_-9t§);
            this.mNextState = §_-VA§.§_-U§;
            return true;
         }
         return false;
      }
      
      public function §_-DN§(param1:String) : Boolean
      {
         var _loc2_:§_-VA§ = null;
         var _loc3_:§_-VA§ = null;
         for each(_loc3_ in this.§_-u6§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-54§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-qZ§ != null)
         {
            §_-54§.log("deActivate state: " + this.§_-qZ§.mName);
            this.§_-qZ§.deActivate();
            this.§_-XX§.removeChild(this.§_-qZ§.§_-Cv§);
         }
         this.§_-qZ§ = _loc2_;
         §_-54§.log("Activate state: " + this.§_-qZ§.mName);
         this.§_-XX§.addChildAt(this.§_-qZ§.§_-Cv§,0);
         this.§_-qZ§.activate();
         this.§_-qZ§.§_-pY§();
         return true;
      }
      
      public function §_-13§(param1:§_-VA§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-u6§.push(param1);
            param1.§_-f0§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-qZ§)
         {
            return §_-VA§.§_-vQ§;
         }
         return this.§_-qZ§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-XX§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-XX§.height;
      }
      
      public function get canvas() : §_-0W§
      {
         return this.§_-XX§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-XX§.stage;
      }
      
      public function §_-nJ§(param1:Number, param2:Number) : void
      {
         if(this.§_-qZ§ && this.§_-qZ§.§_-NY§)
         {
            this.§_-qZ§.§_-NY§.viewWidth = param1;
            this.§_-qZ§.§_-NY§.viewHeight = param2;
         }
         this.§_-Px§ = param1;
         this.§_-9t§ = param2;
      }
   }
}
