package §,!=§
{
   import §%$!§.§%!v§;
   import §'U§.§]#[§;
   import §+"%§.§6X§;
   import §-#z§.§0"R§;
   import §3-§.§<! §;
   import §9"#§.§;"m§;
   import §]$9§.§-!5§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §;#N§ extends §;"m§
   {
      
      private static const §8"0§:Number = 0.2;
      
      private static const §3"l§:Number = 60;
       
      
      private var §6$;§:Boolean = false;
      
      protected var § "s§:Number = -1;
      
      protected var §89§:Number = 0;
      
      private var §2$9§:Boolean = false;
      
      private var §5!$§:Number = 60;
      
      public function §;#N§(param1:§]#[§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §0"R§.§3!]§.init(§-!5§.§1# §(),§7q§,§%"&§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§]"j§(0);
         var _loc2_:MovieClip = §["E§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §<! §.§3!]§.§>§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§ "s§ == -1)
         {
            this.§ "s§ = new Date().time;
         }
         if(!this.§6$;§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§]!;§();
         this.§]"j§(_loc2_);
         if(_loc2_ == 1 && this.§6$;§)
         {
            §6X§.§3U§("onFlashLoadComplete");
            §7P§(§9!w§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§6$;§ = true;
         this.§89§ = 1;
      }
      
      private function §]!;§() : Number
      {
         var _loc1_:Number = !!§%!v§.§-#!§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§>$#§(_loc1_ == 1 && this.§89§ == 1);
         if(this.§89§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§89§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §>$#§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§5!$§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§ "s§) / 1000,this.§5!$§) / this.§5!$§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§89§ = param1;
      }
      
      private function §]"j§(param1:Number) : void
      {
         (§["E§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
