package §!$§
{
   import §[A§.§3!'§;
   import §[A§.§>!6§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §'!A§ extends §>!6§
   {
      
      private static const §#k§:Number = 0.2;
      
      private static const §7R§:Number = 5;
       
      
      private var §<P§:Boolean = false;
      
      protected var §@u§:Number = -1;
      
      protected var § m§:Number = 0;
      
      private var §@!4§:Boolean = false;
      
      private var §[1§:Number = 5;
      
      public function §'!A§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§0u§(0);
      }
      
      private function §',§() : int
      {
         return §3!'§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§@u§ == -1)
         {
            this.§@u§ = new Date().time;
         }
         if(!this.§<P§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §3!'§.STATE_STATUS_COMPLETED)
            {
               this.§<P§ = true;
               this.§ m§ = 1;
            }
         }
         var _loc2_:Number = this.§'!>§();
         this.§0u§(_loc2_);
         if(_loc2_ == 1 && this.§<P§)
         {
            return this.§',§();
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      private function §'!>§() : Number
      {
         var _loc1_:Number = this.§];§(this.§ m§ == 1);
         if(this.§ m§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§ m§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §];§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§[1§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§@u§) / 1000,this.§[1§) / this.§[1§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§ m§ = param1;
      }
      
      private function §0u§(param1:Number) : void
      {
         if(§[!1§.getChildByName("Bar"))
         {
            (§[!1§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
