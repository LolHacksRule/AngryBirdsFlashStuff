package §_-Je§
{
   import §_-Yc§.§_-Yg§;
   import §_-ot§.§_-o6§;
   import flash.display.Stage;
   
   public class §_-Qy§
   {
       
      
      private var §_-vw§:Vector.<§_-RH§>;
      
      private var §_-3K§:§_-RH§;
      
      private var mNextState:String;
      
      protected var §_-8X§:§_-Yg§ = null;
      
      private var §_-OY§:Number;
      
      private var §_-51§:Number;
      
      public function §_-Qy§(param1:§_-Yg§)
      {
         super();
         this.§_-vw§ = new Vector.<§_-RH§>();
         this.§_-8X§ = param1;
         this.§_-OY§ = this.§_-8X§.stage.stageWidth;
         this.§_-51§ = this.§_-8X§.stage.stageHeight;
      }
      
      public function §_-Hy§() : String
      {
         if(this.§_-3K§ != null)
         {
            return this.§_-3K§.mName;
         }
         return §_-RH§.§_-rV§;
      }
      
      public function §_-OG§() : §_-RH§
      {
         if(this.§_-3K§ != null)
         {
            return this.§_-3K§;
         }
         return null;
      }
      
      public function §_-XA§(param1:String) : §_-RH§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-vw§.length)
         {
            if((this.§_-vw§[_loc2_] as §_-RH§).mName == param1)
            {
               return this.§_-vw§[_loc2_] as §_-RH§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-wI§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function §_-ZO§() : Boolean
      {
         if(this.mNextState != §_-RH§.§_-rV§)
         {
            this.§_-6N§(this.mNextState);
            this.§_-wZ§(this.§_-OY§,this.§_-51§);
            this.mNextState = §_-RH§.§_-rV§;
            return true;
         }
         return false;
      }
      
      public function §_-6N§(param1:String) : Boolean
      {
         var _loc2_:§_-RH§ = null;
         var _loc3_:§_-RH§ = null;
         for each(_loc3_ in this.§_-vw§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-o6§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-3K§ != null)
         {
            §_-o6§.log("deActivate state: " + this.§_-3K§.mName);
            this.§_-3K§.deActivate();
            this.§_-8X§.removeChild(this.§_-3K§.§_-Pj§);
         }
         this.§_-3K§ = _loc2_;
         §_-o6§.log("Activate state: " + this.§_-3K§.mName);
         this.§_-8X§.addChildAt(this.§_-3K§.§_-Pj§,0);
         this.§_-3K§.activate();
         return true;
      }
      
      public function §_-fd§(param1:§_-RH§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-vw§.push(param1);
            param1.§_-lL§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-3K§)
         {
            return §_-RH§.§_-St§;
         }
         return this.§_-3K§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-8X§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-8X§.height;
      }
      
      public function get canvas() : §_-Yg§
      {
         return this.§_-8X§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-8X§.stage;
      }
      
      public function §_-wZ§(param1:Number, param2:Number) : void
      {
         if(this.§_-3K§ && this.§_-3K§.§_-wB§)
         {
            this.§_-3K§.§_-wB§.viewWidth = param1;
            this.§_-3K§.§_-wB§.viewHeight = param2;
         }
         this.§_-OY§ = param1;
         this.§_-51§ = param2;
      }
   }
}
