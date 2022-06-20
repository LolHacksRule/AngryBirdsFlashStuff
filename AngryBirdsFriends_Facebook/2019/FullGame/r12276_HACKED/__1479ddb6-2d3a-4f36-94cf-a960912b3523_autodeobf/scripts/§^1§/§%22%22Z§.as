package §^1§
{
   import § #_§.§?!>§;
   import §%#^§.§;!g§;
   import §0"m§.§<4§;
   import §6#x§.§4"2§;
   import §7"1§.§[#U§;
   import §>#Y§.§2"%§;
   import §]!4§.§=#c§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §""Z§ extends §4"2§
   {
      
      private static const § #x§:Number = 0.2;
      
      private static const §?#[§:Number = 60;
       
      
      private var §-"n§:Boolean = false;
      
      protected var §?#E§:Number = -1;
      
      protected var §="%§:Number = 0;
      
      private var §%@§:Boolean = false;
      
      private var §=+§:Number = 60;
      
      public function §""Z§(param1:§?!>§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §;!g§.§3"1§.init(§[#U§.§ 5§(),§'!Y§,§"!2§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§ #"§(0);
         var _loc2_:MovieClip = §5X§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §<4§.§3"1§.§2#V§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§?#E§ == -1)
         {
            this.§?#E§ = new Date().time;
         }
         if(!this.§-"n§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§6#b§();
         this.§ #"§(_loc2_);
         if(_loc2_ == 1 && this.§-"n§)
         {
            §=#c§.§<!t§("onFlashLoadComplete");
            §%!?§(§<"P§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§-"n§ = true;
         this.§="%§ = 1;
      }
      
      private function §6#b§() : Number
      {
         var _loc1_:Number = !!§2"%§.§#!?§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§-#?§(_loc1_ == 1 && this.§="%§ == 1);
         if(this.§="%§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§="%§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §-#?§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§=+§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§?#E§) / 1000,this.§=+§) / this.§=+§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§="%§ = param1;
      }
      
      private function § #"§(param1:Number) : void
      {
         (§5X§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
