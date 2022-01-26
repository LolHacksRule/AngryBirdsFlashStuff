package §_-IC§
{
   import §_-RG§.§_-HT§;
   import §_-kI§.§_-Z6§;
   import flash.display.Stage;
   
   public class §_-ZK§
   {
       
      
      private var §_-IG§:Vector.<§_-Uw§>;
      
      private var §_-ji§:§_-Uw§;
      
      private var mNextState:String;
      
      protected var §_-7M§:§_-Z6§ = null;
      
      private var §_-Ab§:Number;
      
      private var §_-W0§:Number;
      
      public function §_-ZK§(param1:§_-Z6§)
      {
         super();
         this.§_-IG§ = new Vector.<§_-Uw§>();
         this.§_-7M§ = param1;
         this.§_-Ab§ = this.§_-7M§.stage.stageWidth;
         this.§_-W0§ = this.§_-7M§.stage.stageHeight;
      }
      
      public function §_-qR§() : String
      {
         if(this.§_-ji§ != null)
         {
            return this.§_-ji§.mName;
         }
         return §_-Uw§.§_-SG§;
      }
      
      public function §_-P4§() : §_-Uw§
      {
         if(this.§_-ji§ != null)
         {
            return this.§_-ji§;
         }
         return null;
      }
      
      public function §_-iy§(param1:String) : §_-Uw§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-IG§.length)
         {
            if((this.§_-IG§[_loc2_] as §_-Uw§).mName == param1)
            {
               return this.§_-IG§[_loc2_] as §_-Uw§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-n0§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function §_-ux§() : Boolean
      {
         if(this.mNextState != §_-Uw§.§_-SG§)
         {
            this.§_-jM§(this.mNextState);
            this.§_-Eh§(this.§_-Ab§,this.§_-W0§);
            this.mNextState = §_-Uw§.§_-SG§;
            return true;
         }
         return false;
      }
      
      public function §_-jM§(param1:String) : Boolean
      {
         var _loc2_:§_-Uw§ = null;
         var _loc3_:§_-Uw§ = null;
         for each(_loc3_ in this.§_-IG§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-HT§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-ji§ != null)
         {
            §_-HT§.log("deActivate state: " + this.§_-ji§.mName);
            this.§_-ji§.deActivate();
            this.§_-7M§.removeChild(this.§_-ji§.§_-C8§);
         }
         this.§_-ji§ = _loc2_;
         §_-HT§.log("Activate state: " + this.§_-ji§.mName);
         this.§_-7M§.addChildAt(this.§_-ji§.§_-C8§,0);
         this.§_-ji§.activate();
         return true;
      }
      
      public function §_-sS§(param1:§_-Uw§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-IG§.push(param1);
            param1.§_-QH§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-ji§)
         {
            return §_-Uw§.§_-ug§;
         }
         return this.§_-ji§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-7M§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-7M§.height;
      }
      
      public function get canvas() : §_-Z6§
      {
         return this.§_-7M§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-7M§.stage;
      }
      
      public function §_-Eh§(param1:Number, param2:Number) : void
      {
         if(this.§_-ji§ && this.§_-ji§.§_-Bv§)
         {
            this.§_-ji§.§_-Bv§.viewWidth = param1;
            this.§_-ji§.§_-Bv§.viewHeight = param2;
         }
         this.§_-Ab§ = param1;
         this.§_-W0§ = param2;
      }
   }
}
