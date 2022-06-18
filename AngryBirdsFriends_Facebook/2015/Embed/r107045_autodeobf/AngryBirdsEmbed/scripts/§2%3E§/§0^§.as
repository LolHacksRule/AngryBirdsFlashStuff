package §2>§
{
   import §-!3§.§!S§;
   import §7=§.§,O§;
   import §7=§.§9Y§;
   import §=Y§.§-=§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §0^§ extends §,O§
   {
      
      private static const §9!1§:Number = 0.2;
      
      private static const §3#§:Number = 5;
       
      
      private var §&!?§:Boolean = false;
      
      protected var §&G§:Number = -1;
      
      protected var §5!$§:Number = 0;
      
      private var §=+§:Boolean = false;
      
      private var §+!H§:Number = 5;
      
      public function §0^§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§[!C§(0);
      }
      
      private function §%T§() : int
      {
         return §9Y§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§&G§ == -1)
         {
            this.§&G§ = new Date().time;
         }
         if(!this.§&!?§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §9Y§.STATE_STATUS_COMPLETED)
            {
               this.§&!?§ = true;
               this.§5!$§ = 1;
            }
         }
         var _loc2_:Number = this.§]s§();
         this.§[!C§(_loc2_);
         if(_loc2_ == 1 && this.§&!?§)
         {
            return this.§%T§();
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      private function §]s§() : Number
      {
         var _loc1_:Number = this.§0l§(this.§5!$§ == 1);
         if(this.§5!$§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§5!$§ * 0.8 + _loc1_ * 0.2;
      }
      
      override protected function initLoadManager() : void
      {
         §!S§.§5+§.init(§-=§.§-!J§(),§ O§,§`z§,null,null,"","");
      }
      
      private function §0l§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§+!H§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§&G§) / 1000,this.§+!H§) / this.§+!H§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§5!$§ = param1;
      }
      
      private function §[!C§(param1:Number) : void
      {
         if(§+u§.getChildByName("Bar"))
         {
            (§+u§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
