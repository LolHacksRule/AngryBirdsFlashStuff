package §?7§
{
   import §"V§.§`]§;
   import §"V§.§true§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §#y§ extends §`]§
   {
      
      private static const §'n§:Number = 0.2;
      
      private static const §,!<§:Number = 5;
       
      
      private var §-u§:Boolean = false;
      
      protected var §3!+§:Number = -1;
      
      protected var §=!9§:Number = 0;
      
      private var §]§:Boolean = false;
      
      private var §;2§:Number = 5;
      
      public function §#y§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§&Y§(0);
      }
      
      private function §#C§() : int
      {
         return §true§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§3!+§ == -1)
         {
            this.§3!+§ = new Date().time;
         }
         if(!this.§-u§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §true§.STATE_STATUS_COMPLETED)
            {
               this.§-u§ = true;
               this.§=!9§ = 1;
            }
         }
         var _loc2_:Number = this.§+[§();
         this.§&Y§(_loc2_);
         if(_loc2_ == 1 && this.§-u§)
         {
            return this.§#C§();
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      private function §+[§() : Number
      {
         var _loc1_:Number = this.§ !@§(this.§=!9§ == 1);
         if(this.§=!9§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§=!9§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function § !@§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§;2§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§3!+§) / 1000,this.§;2§) / this.§;2§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§=!9§ = param1;
      }
      
      private function §&Y§(param1:Number) : void
      {
         if(§&! §.getChildByName("Bar"))
         {
            (§&! §.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
