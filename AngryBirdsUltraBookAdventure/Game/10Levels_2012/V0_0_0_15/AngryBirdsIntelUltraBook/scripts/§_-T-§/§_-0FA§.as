package §_-T-§
{
   import §_-01E§.§_-9K§;
   import §_-7§.§_-EJ§;
   import §_-Y8§.§_-05J§;
   import §_-x8§.§_-RM§;
   import §_-x8§.§_-nG§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §_-0FA§ extends §_-RM§
   {
      
      private static const §_-04n§:Number = 0.2;
      
      private static const §_-i3§:Number = 60;
       
      
      private var §_-09u§:Boolean = false;
      
      protected var §_-qh§:Number = -1;
      
      protected var §_-Zw§:Number = 0;
      
      private var §_-DP§:Boolean = false;
      
      private var §_-3l§:Number = 60;
      
      public function §_-0FA§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§_-X§(0);
      }
      
      private function §_-00W§() : int
      {
         var _loc1_:String = §_-9K§.§_-00E§();
         if(_loc1_ != "")
         {
            if(!this.§_-DP§)
            {
               this.§_-DP§ = true;
               §_-EJ§.§_-QC§();
               throw new Error(_loc1_,§_-9K§.§_-If§());
            }
            return §_-nG§.STATE_STATUS_RUNNING;
         }
         §_-05J§.§_-0At§("onFlashLoadComplete");
         return §_-nG§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§_-qh§ == -1)
         {
            this.§_-qh§ = new Date().time;
         }
         if(!this.§_-09u§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §_-nG§.STATE_STATUS_COMPLETED)
            {
               this.§_-09u§ = true;
               this.§_-Zw§ = 1;
            }
         }
         var _loc2_:Number = this.§_-Pn§();
         this.§_-X§(_loc2_);
         if(_loc2_ == 1 && this.§_-09u§)
         {
            return this.§_-00W§();
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      private function §_-Pn§() : Number
      {
         var _loc1_:Number = !!§_-9K§.§_-Er§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§_-GE§(_loc1_ == 1 && this.§_-Zw§ == 1);
         if(this.§_-Zw§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§_-Zw§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §_-GE§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§_-3l§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§_-qh§) / 1000,this.§_-3l§) / this.§_-3l§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§_-Zw§ = param1;
      }
      
      private function §_-X§(param1:Number) : void
      {
         (§_-08o§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§_-08o§)
         {
            §_-08o§.x = 0;
            §_-08o§.y = 0;
         }
      }
   }
}
