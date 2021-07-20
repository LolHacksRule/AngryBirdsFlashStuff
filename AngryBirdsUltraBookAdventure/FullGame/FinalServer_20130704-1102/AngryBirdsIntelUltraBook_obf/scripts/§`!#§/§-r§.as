package §`!#§
{
   import §4H§.§!!5§;
   import §8!H§.§"_§;
   import §8!H§.§9![§;
   import §>L§.§+!i§;
   import §^!m§.§4!i§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §-r§ extends §"_§
   {
      
      private static const §2T§:Number = 0.2;
      
      private static const §+!0§:Number = 60;
       
      
      private var §%!;§:Boolean = false;
      
      protected var §`+§:Number = -1;
      
      protected var §4!9§:Number = 0;
      
      private var §;!5§:Boolean = false;
      
      private var §]u§:Number = 60;
      
      public function §-r§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§0!R§(0);
      }
      
      private function § do§() : int
      {
         var _loc1_:String = §!!5§.§>!I§();
         if(_loc1_ != "")
         {
            if(!this.§;!5§)
            {
               this.§;!5§ = true;
               §4!i§.§>t§();
               throw new Error(_loc1_,§!!5§.§+!A§());
            }
            return §9![§.STATE_STATUS_RUNNING;
         }
         §+!i§.§>!y§("onFlashLoadComplete");
         return §9![§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§`+§ == -1)
         {
            this.§`+§ = new Date().time;
         }
         if(!this.§%!;§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §9![§.STATE_STATUS_COMPLETED)
            {
               this.§%!;§ = true;
               this.§4!9§ = 1;
            }
         }
         var _loc2_:Number = this.§;!>§();
         this.§0!R§(_loc2_);
         if(_loc2_ == 1 && this.§%!;§)
         {
            return this.§ do§();
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      private function §;!>§() : Number
      {
         var _loc1_:Number = !!§!!5§.§6;§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§2e§(_loc1_ == 1 && this.§4!9§ == 1);
         if(this.§4!9§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§4!9§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §2e§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§]u§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§`+§) / 1000,this.§]u§) / this.§]u§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§4!9§ = param1;
      }
      
      private function §0!R§(param1:Number) : void
      {
         (§1!W§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§1!W§)
         {
            §1!W§.x = 0;
            §1!W§.y = 0;
         }
      }
   }
}
