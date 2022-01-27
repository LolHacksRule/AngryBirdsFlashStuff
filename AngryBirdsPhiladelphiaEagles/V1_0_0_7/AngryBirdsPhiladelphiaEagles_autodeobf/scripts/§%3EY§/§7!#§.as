package §>Y§
{
   import §&[§.§<c§;
   import §?!=§.§5!9§;
   import §?!=§.§<!>§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §7!#§ extends §5!9§
   {
      
      private static const §17§:Number = 0.2;
      
      private static const §^^§:Number = 5;
       
      
      private var §7]§:Boolean = false;
      
      protected var §',§:Number = -1;
      
      protected var §`!&§:Number = 0;
      
      private var §;!"§:Boolean = false;
      
      private var §8J§:Number = 5;
      
      private var §'l§:Boolean = false;
      
      private var §>`§:Boolean = false;
      
      public function §7!#§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§^!!§(0);
      }
      
      private function §!f§() : int
      {
         if(!this.§>`§)
         {
            return §<!>§.STATE_STATUS_RUNNING;
         }
         return §<!>§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§',§ == -1)
         {
            this.§',§ = new Date().time;
         }
         if(!this.§7]§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §<!>§.STATE_STATUS_COMPLETED)
            {
               this.§7]§ = true;
               this.§`!&§ = 1;
            }
         }
         var _loc2_:Number = this.§0!0§();
         this.§^!!§(_loc2_);
         if(_loc2_ == 1 && this.§7]§)
         {
            if(!this.§'l§)
            {
               this.§'l§ = true;
               §<c§.§ set§.addEventListener(§<c§.SERVER_CALL_COMPLETE,this.§?o§);
               §<c§.§ set§.§'7§();
            }
            else if(this.§>`§)
            {
               return this.§!f§();
            }
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      private function §?o§(param1:Event) : void
      {
         this.§>`§ = true;
      }
      
      private function §0!0§() : Number
      {
         var _loc1_:Number = this.§"!6§(this.§`!&§ == 1);
         if(this.§`!&§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§`!&§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §"!6§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§8J§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§',§) / 1000,this.§8J§) / this.§8J§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§`!&§ = param1;
      }
      
      private function §^!!§(param1:Number) : void
      {
         if(§,!8§.getChildByName("Bar"))
         {
            (§,!8§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
