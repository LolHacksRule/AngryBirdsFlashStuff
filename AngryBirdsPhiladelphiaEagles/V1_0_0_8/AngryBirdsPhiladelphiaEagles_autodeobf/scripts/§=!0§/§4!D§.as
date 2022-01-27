package §=!0§
{
   import §-!D§.§1>§;
   import §^w§.§-!,§;
   import §^w§.§3!"§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §4!D§ extends §3!"§
   {
      
      private static const §+c§:Number = 0.2;
      
      private static const §>=§:Number = 5;
       
      
      private var §>-§:Boolean = false;
      
      protected var §6f§:Number = -1;
      
      protected var §61§:Number = 0;
      
      private var §?!9§:Boolean = false;
      
      private var §9!6§:Number = 5;
      
      private var §2f§:Boolean = false;
      
      private var §8E§:Boolean = false;
      
      public function §4!D§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§;o§(0);
      }
      
      private function §=!4§() : int
      {
         if(!this.§8E§)
         {
            return §-!,§.STATE_STATUS_RUNNING;
         }
         return §-!,§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§6f§ == -1)
         {
            this.§6f§ = new Date().time;
         }
         if(!this.§>-§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §-!,§.STATE_STATUS_COMPLETED)
            {
               this.§>-§ = true;
               this.§61§ = 1;
            }
         }
         var _loc2_:Number = this.§[0§();
         this.§;o§(_loc2_);
         if(_loc2_ == 1 && this.§>-§)
         {
            if(!this.§2f§)
            {
               this.§2f§ = true;
               §1>§.§@!&§.addEventListener(§1>§.SERVER_CALL_COMPLETE,this.§%j§);
               §1>§.§@!&§.§?F§();
            }
            else if(this.§8E§)
            {
               return this.§=!4§();
            }
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      private function §%j§(param1:Event) : void
      {
         this.§8E§ = true;
      }
      
      private function §[0§() : Number
      {
         var _loc1_:Number = this.§%!N§(this.§61§ == 1);
         if(this.§61§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§61§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §%!N§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§9!6§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§6f§) / 1000,this.§9!6§) / this.§9!6§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§61§ = param1;
      }
      
      private function §;o§(param1:Number) : void
      {
         if(§!!@§.getChildByName("Bar"))
         {
            (§!!@§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
