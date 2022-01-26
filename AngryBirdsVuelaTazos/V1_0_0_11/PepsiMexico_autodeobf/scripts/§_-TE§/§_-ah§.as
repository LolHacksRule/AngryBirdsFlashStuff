package §_-TE§
{
   import §_-ZG§.§_-Ne§;
   import §_-qT§.§_-c9§;
   import flash.display.Stage;
   
   public class §_-ah§
   {
       
      
      private var §_-jS§:Vector.<§_-PN§>;
      
      private var §_-Ef§:§_-PN§;
      
      private var mNextState:String;
      
      protected var §_-Pv§:§_-c9§ = null;
      
      private var §_-UP§:Number;
      
      private var §_-IY§:Number;
      
      public function §_-ah§(param1:§_-c9§)
      {
         super();
         this.§_-jS§ = new Vector.<§_-PN§>();
         this.§_-Pv§ = param1;
         this.§_-UP§ = this.§_-Pv§.stage.stageWidth;
         this.§_-IY§ = this.§_-Pv§.stage.stageHeight;
      }
      
      public function §_-Ep§() : String
      {
         if(this.§_-Ef§ != null)
         {
            return this.§_-Ef§.mName;
         }
         return §_-PN§.§_-Uh§;
      }
      
      public function §_-sD§() : §_-PN§
      {
         if(this.§_-Ef§ != null)
         {
            return this.§_-Ef§;
         }
         return null;
      }
      
      public function §_-td§(param1:String) : §_-PN§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-jS§.length)
         {
            if((this.§_-jS§[_loc2_] as §_-PN§).mName == param1)
            {
               return this.§_-jS§[_loc2_] as §_-PN§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function override(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function §_-Wm§() : Boolean
      {
         if(this.mNextState != §_-PN§.§_-Uh§)
         {
            this.§_-h0§(this.mNextState);
            this.§_-q9§(this.§_-UP§,this.§_-IY§);
            this.mNextState = §_-PN§.§_-Uh§;
            return true;
         }
         return false;
      }
      
      public function §_-h0§(param1:String) : Boolean
      {
         var _loc2_:§_-PN§ = null;
         var _loc3_:§_-PN§ = null;
         for each(_loc3_ in this.§_-jS§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-Ne§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-Ef§ != null)
         {
            §_-Ne§.log("deActivate state: " + this.§_-Ef§.mName);
            this.§_-Ef§.deActivate();
            this.§_-Pv§.removeChild(this.§_-Ef§.§_-0O§);
         }
         this.§_-Ef§ = _loc2_;
         §_-Ne§.log("Activate state: " + this.§_-Ef§.mName);
         this.§_-Pv§.addChildAt(this.§_-Ef§.§_-0O§,0);
         this.§_-Ef§.activate();
         return true;
      }
      
      public function §_-Ds§(param1:§_-PN§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-jS§.push(param1);
            param1.§_-Ea§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-Ef§)
         {
            return §_-PN§.§_-r8§;
         }
         return this.§_-Ef§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-Pv§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-Pv§.height;
      }
      
      public function get canvas() : §_-c9§
      {
         return this.§_-Pv§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-Pv§.stage;
      }
      
      public function §_-q9§(param1:Number, param2:Number) : void
      {
         if(this.§_-Ef§ && this.§_-Ef§.§_-qE§)
         {
            this.§_-Ef§.§_-qE§.viewWidth = param1;
            this.§_-Ef§.§_-qE§.viewHeight = param2;
         }
         this.§_-UP§ = param1;
         this.§_-IY§ = param2;
      }
   }
}
