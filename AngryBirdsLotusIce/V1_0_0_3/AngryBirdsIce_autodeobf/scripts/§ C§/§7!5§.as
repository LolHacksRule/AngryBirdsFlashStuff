package § C§
{
   import §]4§.§ !G§;
   import §]4§.§-§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §7!5§ extends § !G§
   {
      
      private static const §0§:Number = 0.2;
      
      private static const §=!<§:Number = 5;
       
      
      private var §@!-§:Boolean = false;
      
      protected var §6!=§:Number = -1;
      
      protected var §1!<§:Number = 0;
      
      private var §"V§:Boolean = false;
      
      private var §'a§:Number = 5;
      
      public function §7!5§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§]!1§(0);
      }
      
      private function §&I§() : int
      {
         return §-§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§6!=§ == -1)
         {
            this.§6!=§ = new Date().time;
         }
         if(!this.§@!-§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §-§.STATE_STATUS_COMPLETED)
            {
               this.§@!-§ = true;
               this.§1!<§ = 1;
            }
         }
         var _loc2_:Number = this.§&U§();
         this.§]!1§(_loc2_);
         if(_loc2_ == 1 && this.§@!-§)
         {
            return this.§&I§();
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      private function §&U§() : Number
      {
         var _loc1_:Number = this.§;!F§(this.§1!<§ == 1);
         if(this.§1!<§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§1!<§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §;!F§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§'a§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§6!=§) / 1000,this.§'a§) / this.§'a§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§1!<§ = param1;
      }
      
      private function §]!1§(param1:Number) : void
      {
         if(§=Z§.getChildByName("Bar"))
         {
            (§=Z§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
