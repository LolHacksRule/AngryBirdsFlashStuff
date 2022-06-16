package §"!@§
{
   import §%!x§.§^!K§;
   import §&g§.§#D§;
   import §2G§.§ #$§;
   import §5P§.§""C§;
   import §7"§.§^#H§;
   import §>#G§.§-!,§;
   import §@V§.§0X§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §%$2§ extends §^#H§
   {
      
      private static const §'!x§:Number = 0.2;
      
      private static const §&!-§:Number = 60;
       
      
      private var §1B§:Boolean = false;
      
      protected var §-Z§:Number = -1;
      
      protected var §,#]§:Number = 0;
      
      private var §&!K§:Boolean = false;
      
      private var §<!<§:Number = 60;
      
      public function §%$2§(param1:§""C§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §-!,§.§6!§.init(§0X§.§+!D§(),§#!T§,§2k§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§2Q§(0);
         var _loc2_:MovieClip = §`#Q§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §#D§.§6!§.§;"t§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§-Z§ == -1)
         {
            this.§-Z§ = new Date().time;
         }
         if(!this.§1B§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§[#+§();
         this.§2Q§(_loc2_);
         if(_loc2_ == 1 && this.§1B§)
         {
            §^!K§.§+"D§("onFlashLoadComplete");
            §1"h§(§&f§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§1B§ = true;
         this.§,#]§ = 1;
      }
      
      private function §[#+§() : Number
      {
         var _loc1_:Number = !!§ #$§.§8R§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§!n§(_loc1_ == 1 && this.§,#]§ == 1);
         if(this.§,#]§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§,#]§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §!n§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§<!<§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§-Z§) / 1000,this.§<!<§) / this.§<!<§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§,#]§ = param1;
      }
      
      private function §2Q§(param1:Number) : void
      {
         (§`#Q§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
