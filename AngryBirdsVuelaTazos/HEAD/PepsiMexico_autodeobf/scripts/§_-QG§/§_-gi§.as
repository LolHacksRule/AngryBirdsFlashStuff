package §_-QG§
{
   import §_-gM§.§_-yj§;
   import §_-sO§.§_-oG§;
   import flash.display.Stage;
   
   public class §_-gi§
   {
       
      
      private var §_-ug§:Vector.<§_-t6§>;
      
      protected var §_-r4§:§_-t6§;
      
      private var mNextState:String;
      
      protected var §_-tV§:§_-oG§ = null;
      
      private var §_-bm§:Number;
      
      private var §_-hz§:Number;
      
      public function §_-gi§(param1:§_-oG§)
      {
         super();
         this.§_-ug§ = new Vector.<§_-t6§>();
         this.§_-tV§ = param1;
         this.§_-bm§ = this.§_-tV§.stage.stageWidth;
         this.§_-hz§ = this.§_-tV§.stage.stageHeight;
      }
      
      public function §_-B0§() : String
      {
         if(this.§_-r4§ != null)
         {
            return this.§_-r4§.mName;
         }
         return §_-t6§.§_-Ju§;
      }
      
      public function §_-eY§() : §_-t6§
      {
         if(this.§_-r4§ != null)
         {
            return this.§_-r4§;
         }
         return null;
      }
      
      public function §_-Rd§(param1:String) : §_-t6§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-ug§.length)
         {
            if((this.§_-ug§[_loc2_] as §_-t6§).mName == param1)
            {
               return this.§_-ug§[_loc2_] as §_-t6§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-5l§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §_-g0§() : Boolean
      {
         return this.mNextState != §_-t6§.§_-Ju§;
      }
      
      public function §_-xR§() : Boolean
      {
         if(this.mNextState != §_-t6§.§_-Ju§)
         {
            this.§_-FG§(this.mNextState);
            this.§_-nx§(this.§_-bm§,this.§_-hz§);
            this.mNextState = §_-t6§.§_-Ju§;
            return true;
         }
         return false;
      }
      
      public function §_-FG§(param1:String) : Boolean
      {
         var _loc2_:§_-t6§ = null;
         var _loc3_:§_-t6§ = null;
         for each(_loc3_ in this.§_-ug§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-yj§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-r4§ != null)
         {
            §_-yj§.log("deActivate state: " + this.§_-r4§.mName);
            this.§_-r4§.deActivate();
            this.previousStateDeactivate();
            this.§_-tV§.removeChild(this.§_-r4§.§_-j§);
         }
         this.§_-r4§ = _loc2_;
         §_-yj§.log("Activate state: " + this.§_-r4§.mName);
         this.§_-tV§.addChildAt(this.§_-r4§.§_-j§,0);
         this.§_-r4§.activate();
         this.§_-r4§.§_-yL§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §_-dK§(param1:§_-t6§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-ug§.push(param1);
            param1.§_-lk§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-r4§)
         {
            return §_-t6§.§_-ps§;
         }
         return this.§_-r4§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-tV§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-tV§.height;
      }
      
      public function get canvas() : §_-oG§
      {
         return this.§_-tV§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-tV§.stage;
      }
      
      public function §_-nx§(param1:Number, param2:Number) : void
      {
         if(this.§_-r4§ && this.§_-r4§.§_-MF§)
         {
            this.§_-r4§.§_-MF§.viewWidth = param1;
            this.§_-r4§.§_-MF§.viewHeight = param2;
         }
         this.§_-bm§ = param1;
         this.§_-hz§ = param2;
      }
   }
}
