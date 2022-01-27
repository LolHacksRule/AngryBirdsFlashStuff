package §,"^§
{
   import § 0§.§@Y§;
   import §!X§.§'!+§;
   import §'+§.§="B§;
   import §,!_§.§2!%§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §9#'§ extends §'!+§
   {
      
      private static const §7"e§:Number = 60;
       
      
      private var §-"$§:Number = 60;
      
      private var §5!-§:int = -1;
      
      private var §%!h§:Boolean = false;
      
      private var §^8§:Boolean = false;
      
      private var §0"^§:Number = 0;
      
      private var §6"H§:§2!%§;
      
      private var §%?§:§[!p§;
      
      public function §9#'§(param1:§="B§, param2:§2!%§, param3:Boolean = true, param4:String = "load", param5:Number = 1000, param6:String = "", param7:String = "")
      {
         this.§6"H§ = param2;
         super(param1,param3,param4,param5,param6,param7);
         this.§6"H§.addEventListener(Event.COMPLETE,this.§+"9§);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§%?§ = new §[!p§(MovieClip(§6",§.getChildByName("MovieClip_Tips")));
      }
      
      private function §+"9§(param1:Event) : void
      {
         this.§6"H§.removeEventListener(Event.COMPLETE,this.§+"9§);
         this.§^8§ = true;
      }
      
      private function §#"h§(param1:ErrorEvent) : void
      {
         throw new Error(param1.text);
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§5!-§ == -1)
         {
            this.§5!-§ = getTimer();
         }
         if(!this.§%!h§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§4!h§();
         super.setLoadingPercentage(_loc2_);
         if(_loc2_ == 1 && this.§%!h§)
         {
            §@Y§.§7"H§("onFlashLoadComplete");
            §0"B§(§73§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§%!h§ = true;
         this.§0"^§ = 1;
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§0"^§ = param1;
      }
      
      private function §4!h§() : Number
      {
         var _loc1_:Number = !!this.§^8§ ? Number(1) : Number(0);
         var _loc2_:Number = this.§1"L§(_loc1_ == 1 && this.§0"^§ == 1);
         if(this.§0"^§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§0"^§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §1"L§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§-"$§;
         }
         var _loc2_:Number = Math.min((getTimer() - this.§5!-§) / 1000,this.§-"$§) / this.§-"$§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
   }
}
