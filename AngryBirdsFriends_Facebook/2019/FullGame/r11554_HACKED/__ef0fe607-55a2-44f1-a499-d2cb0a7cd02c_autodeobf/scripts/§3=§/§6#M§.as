package §3=§
{
   import §&§.§&$"§;
   import §3"G§.§16§;
   import §7#j§.§@"F§;
   import §9#o§.§,#t§;
   import §>"Q§.§>!d§;
   import §?#h§.§4"7§;
   import §]"'§.§1#"§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §6#M§ extends §4"7§
   {
      
      private static const §@#j§:Number = 0.2;
      
      private static const §8!P§:Number = 60;
       
      
      private var §;#a§:Boolean = false;
      
      protected var §="0§:Number = -1;
      
      protected var §?!i§:Number = 0;
      
      private var §6#8§:Boolean = false;
      
      private var §true§:Number = 60;
      
      public function §6#M§(param1:§16§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §,#t§.§?q§.init(§>!d§.§5!9§(),§<!i§,§^;§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§#!r§(0);
         var _loc2_:MovieClip = §5-§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §&$"§.§?q§.§?!Q§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§="0§ == -1)
         {
            this.§="0§ = new Date().time;
         }
         if(!this.§;#a§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§>Y§();
         this.§#!r§(_loc2_);
         if(_loc2_ == 1 && this.§;#a§)
         {
            §@"F§.§^$#§("onFlashLoadComplete");
            §%D§(§&#N§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§;#a§ = true;
         this.§?!i§ = 1;
      }
      
      private function §>Y§() : Number
      {
         var _loc1_:Number = !!§1#"§.§0"§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§##G§(_loc1_ == 1 && this.§?!i§ == 1);
         if(this.§?!i§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§?!i§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §##G§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§true§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§="0§) / 1000,this.§true§) / this.§true§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§?!i§ = param1;
      }
      
      private function §#!r§(param1:Number) : void
      {
         (§5-§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
