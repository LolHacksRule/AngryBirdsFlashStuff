package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§&%§;
   import §+#U§.§8"'§;
   import §-u§.§&#+§;
   import §1L§.§;u§;
   import §>"W§.§%#+§;
   import §]C§.§ !+§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §@l§ extends §%#+§
   {
      
      private static const §1_§:Number = 0.2;
      
      private static const §>"S§:Number = 60;
       
      
      private var §;$+§:Boolean = false;
      
      protected var §#^§:Number = -1;
      
      protected var §6]§:Number = 0;
      
      private var §?V§:Boolean = false;
      
      private var §@R§:Number = 60;
      
      public function §@l§(param1:§4#c§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §&#+§.§`"H§.init(§;u§.§2!,§(),§2"c§,§1#F§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§=#Y§(0);
         var _loc2_:MovieClip = §8"&§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §8"'§.§`"H§.§ #j§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§#^§ == -1)
         {
            this.§#^§ = new Date().time;
         }
         if(!this.§;$+§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§,#K§();
         this.§=#Y§(_loc2_);
         if(_loc2_ == 1 && this.§;$+§)
         {
            § !+§.§>$%§("onFlashLoadComplete");
            §1!L§(§8!u§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§;$+§ = true;
         this.§6]§ = 1;
      }
      
      private function §,#K§() : Number
      {
         var _loc1_:Number = !!§&%§.§6#J§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§-#z§(_loc1_ == 1 && this.§6]§ == 1);
         if(this.§6]§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§6]§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §-#z§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§@R§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§#^§) / 1000,this.§@R§) / this.§@R§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§6]§ = param1;
      }
      
      private function §=#Y§(param1:Number) : void
      {
         (§8"&§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
