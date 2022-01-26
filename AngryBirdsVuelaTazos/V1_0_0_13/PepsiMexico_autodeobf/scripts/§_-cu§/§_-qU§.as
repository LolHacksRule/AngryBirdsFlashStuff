package §_-cu§
{
   import §_-ex§.§_-mR§;
   import §_-qJ§.§_-Xp§;
   import flash.display.Stage;
   
   public class §_-qU§
   {
       
      
      private var §_-DL§:Vector.<§_-UO§>;
      
      private var §_-or§:§_-UO§;
      
      private var mNextState:String;
      
      protected var §_-Ro§:§_-Xp§ = null;
      
      private var §_-cj§:Number;
      
      private var §_-IC§:Number;
      
      public function §_-qU§(param1:§_-Xp§)
      {
         super();
         this.§_-DL§ = new Vector.<§_-UO§>();
         this.§_-Ro§ = param1;
         this.§_-cj§ = this.§_-Ro§.stage.stageWidth;
         this.§_-IC§ = this.§_-Ro§.stage.stageHeight;
      }
      
      public function §_-r8§() : String
      {
         if(this.§_-or§ != null)
         {
            return this.§_-or§.mName;
         }
         return §_-UO§.§_-Ug§;
      }
      
      public function §_-xn§() : §_-UO§
      {
         if(this.§_-or§ != null)
         {
            return this.§_-or§;
         }
         return null;
      }
      
      public function §_-13§(param1:String) : §_-UO§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-DL§.length)
         {
            if((this.§_-DL§[_loc2_] as §_-UO§).mName == param1)
            {
               return this.§_-DL§[_loc2_] as §_-UO§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-rY§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function §_-K2§() : Boolean
      {
         if(this.mNextState != §_-UO§.§_-Ug§)
         {
            this.§_-36§(this.mNextState);
            this.§_-5x§(this.§_-cj§,this.§_-IC§);
            this.mNextState = §_-UO§.§_-Ug§;
            return true;
         }
         return false;
      }
      
      public function §_-36§(param1:String) : Boolean
      {
         var _loc2_:§_-UO§ = null;
         var _loc3_:§_-UO§ = null;
         for each(_loc3_ in this.§_-DL§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-mR§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-or§ != null)
         {
            §_-mR§.log("deActivate state: " + this.§_-or§.mName);
            this.§_-or§.deActivate();
            this.§_-Ro§.removeChild(this.§_-or§.§_-bB§);
         }
         this.§_-or§ = _loc2_;
         §_-mR§.log("Activate state: " + this.§_-or§.mName);
         this.§_-Ro§.addChildAt(this.§_-or§.§_-bB§,0);
         this.§_-or§.activate();
         return true;
      }
      
      public function §_-u§(param1:§_-UO§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-DL§.push(param1);
            param1.§_-I0§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-or§)
         {
            return §_-UO§.§_-a1§;
         }
         return this.§_-or§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-Ro§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-Ro§.height;
      }
      
      public function get canvas() : §_-Xp§
      {
         return this.§_-Ro§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-Ro§.stage;
      }
      
      public function §_-5x§(param1:Number, param2:Number) : void
      {
         if(this.§_-or§ && this.§_-or§.§_-kl§)
         {
            this.§_-or§.§_-kl§.viewWidth = param1;
            this.§_-or§.§_-kl§.viewHeight = param2;
         }
         this.§_-cj§ = param1;
         this.§_-IC§ = param2;
      }
   }
}
