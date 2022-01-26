package §_-qT§
{
   import §_-Eo§.§_-R4§;
   import §_-iq§.§_-l7§;
   import flash.display.Stage;
   
   public class §_-t8§
   {
       
      
      private var §_-Bl§:Vector.<§_-O5§>;
      
      private var §_-1s§:§_-O5§;
      
      private var mNextState:String;
      
      protected var §_-5S§:§_-l7§ = null;
      
      private var §_-c7§:Number;
      
      private var §_-ir§:Number;
      
      public function §_-t8§(param1:§_-l7§)
      {
         super();
         this.§_-Bl§ = new Vector.<§_-O5§>();
         this.§_-5S§ = param1;
         this.§_-c7§ = this.§_-5S§.stage.stageWidth;
         this.§_-ir§ = this.§_-5S§.stage.stageHeight;
      }
      
      public function §_-BV§() : String
      {
         if(this.§_-1s§ != null)
         {
            return this.§_-1s§.mName;
         }
         return §_-O5§.§_-UF§;
      }
      
      public function §_-EZ§() : §_-O5§
      {
         if(this.§_-1s§ != null)
         {
            return this.§_-1s§;
         }
         return null;
      }
      
      public function §_-cL§(param1:String) : §_-O5§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Bl§.length)
         {
            if((this.§_-Bl§[_loc2_] as §_-O5§).mName == param1)
            {
               return this.§_-Bl§[_loc2_] as §_-O5§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-kW§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function §_-Ry§() : Boolean
      {
         if(this.mNextState != §_-O5§.§_-UF§)
         {
            this.§_-yt§(this.mNextState);
            this.§_-gN§(this.§_-c7§,this.§_-ir§);
            this.mNextState = §_-O5§.§_-UF§;
            return true;
         }
         return false;
      }
      
      public function §_-yt§(param1:String) : Boolean
      {
         var _loc2_:§_-O5§ = null;
         var _loc3_:§_-O5§ = null;
         for each(_loc3_ in this.§_-Bl§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-R4§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-1s§ != null)
         {
            §_-R4§.log("deActivate state: " + this.§_-1s§.mName);
            this.§_-1s§.deActivate();
            this.§_-5S§.removeChild(this.§_-1s§.§_-MT§);
         }
         this.§_-1s§ = _loc2_;
         §_-R4§.log("Activate state: " + this.§_-1s§.mName);
         this.§_-5S§.addChildAt(this.§_-1s§.§_-MT§,0);
         this.§_-1s§.activate();
         this.§_-1s§.§_-0t§();
         return true;
      }
      
      public function §_-Uy§(param1:§_-O5§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-Bl§.push(param1);
            param1.§_-vZ§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-1s§)
         {
            return §_-O5§.§_-gu§;
         }
         return this.§_-1s§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-5S§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-5S§.height;
      }
      
      public function get canvas() : §_-l7§
      {
         return this.§_-5S§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-5S§.stage;
      }
      
      public function §_-gN§(param1:Number, param2:Number) : void
      {
         if(this.§_-1s§ && this.§_-1s§.§_-Ih§)
         {
            this.§_-1s§.§_-Ih§.viewWidth = param1;
            this.§_-1s§.§_-Ih§.viewHeight = param2;
         }
         this.§_-c7§ = param1;
         this.§_-ir§ = param2;
      }
   }
}
