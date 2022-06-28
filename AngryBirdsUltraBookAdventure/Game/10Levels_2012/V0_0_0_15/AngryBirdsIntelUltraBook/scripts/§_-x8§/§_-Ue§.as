package §_-x8§
{
   import §_-0BH§.§_-FK§;
   import §_-jn§.§_-hS§;
   import flash.display.Stage;
   
   public class §_-Ue§
   {
       
      
      private var §_-wd§:Vector.<§_-nG§>;
      
      protected var §_-ot§:§_-nG§;
      
      private var mNextState:String;
      
      protected var §_-t8§:§_-hS§ = null;
      
      private var §_-AC§:Number;
      
      private var §_-bK§:Number;
      
      public function §_-Ue§(param1:§_-hS§)
      {
         super();
         this.§_-wd§ = new Vector.<§_-nG§>();
         this.§_-t8§ = param1;
         this.§_-AC§ = this.§_-t8§.stage.stageWidth;
         this.§_-bK§ = this.§_-t8§.stage.stageHeight;
      }
      
      public function §_-vR§() : String
      {
         if(this.§_-ot§ != null)
         {
            return this.§_-ot§.mName;
         }
         return §_-nG§.§_-1R§;
      }
      
      public function §_-053§() : §_-nG§
      {
         if(this.§_-ot§ != null)
         {
            return this.§_-ot§;
         }
         return null;
      }
      
      public function §_-0EA§(param1:String) : §_-nG§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-wd§.length)
         {
            if((this.§_-wd§[_loc2_] as §_-nG§).mName == param1)
            {
               return this.§_-wd§[_loc2_] as §_-nG§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Sk§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §_-02R§() : Boolean
      {
         return this.mNextState != §_-nG§.§_-1R§;
      }
      
      public function §_-rl§() : Boolean
      {
         if(this.mNextState != §_-nG§.§_-1R§)
         {
            this.§_-vU§(this.mNextState);
            this.setViewSize(this.§_-AC§,this.§_-bK§);
            this.mNextState = §_-nG§.§_-1R§;
            return true;
         }
         return false;
      }
      
      public function §_-vU§(param1:String) : Boolean
      {
         var _loc2_:§_-nG§ = null;
         var _loc3_:§_-nG§ = null;
         for each(_loc3_ in this.§_-wd§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §_-FK§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§_-ot§ != null)
         {
            §_-FK§.log("deActivate state: " + this.§_-ot§.mName);
            this.§_-ot§.deActivate();
            this.previousStateDeactivate();
            this.§_-t8§.removeChild(this.§_-ot§.§_-FQ§);
         }
         this.§_-ot§ = _loc2_;
         §_-FK§.log("Activate state: " + this.§_-ot§.mName);
         this.stage.frameRate = this.§_-ot§.§_-lf§();
         this.§_-t8§.addChildAt(this.§_-ot§.§_-FQ§,0);
         this.§_-ot§.activate();
         this.§_-ot§.§_-zx§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §_-pP§(param1:§_-nG§) : Boolean
      {
         if(param1 != null)
         {
            this.§_-wd§.push(param1);
            param1.§_-vC§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§_-ot§)
         {
            return §_-nG§.§_-JX§;
         }
         return this.§_-ot§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§_-t8§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§_-t8§.height;
      }
      
      public function get canvas() : §_-hS§
      {
         return this.§_-t8§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-t8§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§_-ot§)
         {
            this.§_-ot§.setViewSize(param1,param2);
         }
         this.§_-AC§ = param1;
         this.§_-bK§ = param2;
      }
   }
}
