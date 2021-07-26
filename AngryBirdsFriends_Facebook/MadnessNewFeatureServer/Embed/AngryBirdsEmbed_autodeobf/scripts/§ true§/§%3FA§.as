package § true§
{
   import §'9§.§3!§;
   import §3!$§.§^[§;
   import §<!A§.§,!?§;
   import §<!A§.§8?§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §?A§ extends §8?§
   {
      
      private static const §4!I§:Number = 0.2;
      
      private static const §[!H§:Number = 5;
       
      
      private var §2T§:Boolean = false;
      
      protected var §^1§:Number = -1;
      
      protected var §[!$§:Number = 0;
      
      private var §#I§:Boolean = false;
      
      private var §;F§:Number = 5;
      
      public function §?A§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§[k§(0);
      }
      
      private function §-$§() : int
      {
         return §,!?§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§^1§ == -1)
         {
            this.§^1§ = new Date().time;
         }
         if(!this.§2T§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §,!?§.STATE_STATUS_COMPLETED)
            {
               this.§2T§ = true;
               this.§[!$§ = 1;
            }
         }
         var _loc2_:Number = this.§]?§();
         this.§[k§(_loc2_);
         if(_loc2_ == 1 && this.§2T§)
         {
            return this.§-$§();
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      private function §]?§() : Number
      {
         var _loc1_:Number = this.§ !7§(this.§[!$§ == 1);
         if(this.§[!$§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§[!$§ * 0.8 + _loc1_ * 0.2;
      }
      
      override protected function initLoadManager() : void
      {
         §3!§.§;R§.init(§^[§.§0§(),§&!4§,§8-§,null,null,"","");
      }
      
      private function § !7§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§;F§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§^1§) / 1000,this.§;F§) / this.§;F§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§[!$§ = param1;
      }
      
      private function §[k§(param1:Number) : void
      {
         if(§%z§.getChildByName("Bar"))
         {
            (§%z§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
