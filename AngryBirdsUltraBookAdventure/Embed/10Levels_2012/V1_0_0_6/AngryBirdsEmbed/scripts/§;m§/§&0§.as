package §;m§
{
   import §6H§.§>3§;
   import §6H§.§?i§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §&0§ extends §?i§
   {
      
      private static const §"!+§:Number = 0.2;
      
      private static const §>e§:Number = 5;
       
      
      private var § !B§:Boolean = false;
      
      protected var §7h§:Number = -1;
      
      protected var §<j§:Number = 0;
      
      private var §@!6§:Boolean = false;
      
      private var §4_§:Number = 5;
      
      public function §&0§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§9A§(0);
      }
      
      private function §+!E§() : int
      {
         return §>3§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§7h§ == -1)
         {
            this.§7h§ = new Date().time;
         }
         if(!this.§ !B§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §>3§.STATE_STATUS_COMPLETED)
            {
               this.§ !B§ = true;
               this.§<j§ = 1;
            }
         }
         var _loc2_:Number = this.§>!,§();
         this.§9A§(_loc2_);
         if(_loc2_ == 1 && this.§ !B§)
         {
            return this.§+!E§();
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      private function §>!,§() : Number
      {
         var _loc1_:Number = this.§[!4§(this.§<j§ == 1);
         if(this.§<j§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§<j§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §[!4§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§4_§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§7h§) / 1000,this.§4_§) / this.§4_§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§<j§ = param1;
      }
      
      private function §9A§(param1:Number) : void
      {
         if(§8a§.getChildByName("Bar"))
         {
            (§8a§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
