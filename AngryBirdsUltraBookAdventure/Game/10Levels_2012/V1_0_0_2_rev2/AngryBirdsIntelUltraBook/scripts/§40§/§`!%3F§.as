package §40§
{
   import §6!M§.§;!G§;
   import §9!y§.§@M§;
   import §<!>§.§,?§;
   import §<!>§.§?Y§;
   import §@i§.§=r§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §`!?§ extends §,?§
   {
      
      private static const §=!$§:Number = 0.2;
      
      private static const §9b§:Number = 60;
       
      
      private var §3!u§:Boolean = false;
      
      protected var §9q§:Number = -1;
      
      protected var §#!=§:Number = 0;
      
      private var §3k§:Boolean = false;
      
      private var §4!M§:Number = 60;
      
      public function §`!?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§2p§(0);
      }
      
      private function §;3§() : int
      {
         var _loc1_:String = §;!G§.§ t§();
         if(_loc1_ != "")
         {
            if(!this.§3k§)
            {
               this.§3k§ = true;
               §@M§.§!!g§();
               throw new Error(_loc1_,§;!G§.§;K§());
            }
            return §?Y§.STATE_STATUS_RUNNING;
         }
         §=r§.§[!3§("onFlashLoadComplete");
         return §?Y§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§9q§ == -1)
         {
            this.§9q§ = new Date().time;
         }
         if(!this.§3!u§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §?Y§.STATE_STATUS_COMPLETED)
            {
               this.§3!u§ = true;
               this.§#!=§ = 1;
            }
         }
         var _loc2_:Number = this.§%!?§();
         this.§2p§(_loc2_);
         if(_loc2_ == 1 && this.§3!u§)
         {
            return this.§;3§();
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      private function §%!?§() : Number
      {
         var _loc1_:Number = !!§;!G§.§2Q§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§const§(_loc1_ == 1 && this.§#!=§ == 1);
         if(this.§#!=§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§#!=§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §const§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§4!M§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§9q§) / 1000,this.§4!M§) / this.§4!M§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§#!=§ = param1;
      }
      
      private function §2p§(param1:Number) : void
      {
         (§0!0§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§0!0§)
         {
            §0!0§.x = 0;
            §0!0§.y = 0;
         }
      }
   }
}
