package §=0§
{
   import §1G§.§>!$§;
   import §1G§.§`U§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §&V§ extends §>!$§
   {
      
      private static const §'d§:Number = 0.2;
      
      private static const §]@§:Number = 5;
       
      
      private var §0!B§:Boolean = false;
      
      protected var §2!C§:Number = -1;
      
      protected var §1B§:Number = 0;
      
      private var §[!!§:Boolean = false;
      
      private var §9!"§:Number = 5;
      
      public function §&V§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§ !0§(0);
      }
      
      private function §^z§() : int
      {
         return §`U§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§2!C§ == -1)
         {
            this.§2!C§ = new Date().time;
         }
         if(!this.§0!B§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §`U§.STATE_STATUS_COMPLETED)
            {
               this.§0!B§ = true;
               this.§1B§ = 1;
            }
         }
         var _loc2_:Number = this.§6S§();
         this.§ !0§(_loc2_);
         if(_loc2_ == 1 && this.§0!B§)
         {
            return this.§^z§();
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      private function §6S§() : Number
      {
         var _loc1_:Number = this.§-!B§(this.§1B§ == 1);
         if(this.§1B§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§1B§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §-!B§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§9!"§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§2!C§) / 1000,this.§9!"§) / this.§9!"§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§1B§ = param1;
      }
      
      private function § !0§(param1:Number) : void
      {
         if(§`! §.getChildByName("Bar"))
         {
            (§`! §.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
