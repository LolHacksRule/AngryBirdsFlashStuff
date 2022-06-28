package §`@§
{
   import §0!§.§0!5§;
   import §0!§.§while§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §?3§ extends §while§
   {
      
      private static const §1R§:Number = 0.2;
      
      private static const §7!=§:Number = 5;
       
      
      private var §2u§:Boolean = false;
      
      protected var §&r§:Number = -1;
      
      protected var §<!A§:Number = 0;
      
      private var §0k§:Boolean = false;
      
      private var §<2§:Number = 5;
      
      public function §?3§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§>! §(0);
      }
      
      private function §1a§() : int
      {
         return §0!5§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§&r§ == -1)
         {
            this.§&r§ = new Date().time;
         }
         if(!this.§2u§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §0!5§.STATE_STATUS_COMPLETED)
            {
               this.§2u§ = true;
               this.§<!A§ = 1;
            }
         }
         var _loc2_:Number = this.§`A§();
         this.§>! §(_loc2_);
         if(_loc2_ == 1 && this.§2u§)
         {
            return this.§1a§();
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      private function §`A§() : Number
      {
         var _loc1_:Number = this.§?G§(this.§<!A§ == 1);
         if(this.§<!A§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§<!A§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §?G§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§<2§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§&r§) / 1000,this.§<2§) / this.§<2§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§<!A§ = param1;
      }
      
      private function §>! §(param1:Number) : void
      {
         if(§ ;§.getChildByName("Bar"))
         {
            (§ ;§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
