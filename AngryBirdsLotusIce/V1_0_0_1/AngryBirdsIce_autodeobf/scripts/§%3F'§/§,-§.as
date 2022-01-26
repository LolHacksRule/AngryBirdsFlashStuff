package §?'§
{
   import §`<§.§,!6§;
   import §`<§.§;a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §,-§ extends §;a§
   {
      
      private static const §]!$§:Number = 0.2;
      
      private static const §?r§:Number = 5;
       
      
      private var §2!E§:Boolean = false;
      
      protected var §@W§:Number = -1;
      
      protected var §?x§:Number = 0;
      
      private var §7+§:Boolean = false;
      
      private var §1E§:Number = 5;
      
      public function §,-§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§0!?§(0);
      }
      
      private function §4$§() : int
      {
         return §,!6§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§@W§ == -1)
         {
            this.§@W§ = new Date().time;
         }
         if(!this.§2!E§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §,!6§.STATE_STATUS_COMPLETED)
            {
               this.§2!E§ = true;
               this.§?x§ = 1;
            }
         }
         var _loc2_:Number = this.§?! §();
         this.§0!?§(_loc2_);
         if(_loc2_ == 1 && this.§2!E§)
         {
            return this.§4$§();
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      private function §?! §() : Number
      {
         var _loc1_:Number = this.§3O§(this.§?x§ == 1);
         if(this.§?x§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§?x§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §3O§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§1E§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§@W§) / 1000,this.§1E§) / this.§1E§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§?x§ = param1;
      }
      
      private function §0!?§(param1:Number) : void
      {
         if(include.getChildByName("Bar"))
         {
            (include.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
