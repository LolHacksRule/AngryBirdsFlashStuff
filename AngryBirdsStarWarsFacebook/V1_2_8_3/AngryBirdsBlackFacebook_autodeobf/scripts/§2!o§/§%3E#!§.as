package §2!o§
{
   import §%!G§.§`?§;
   import §%"Q§.§5R§;
   import §&!j§.§5#+§;
   import §5"Q§.§5"s§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §>#!§ extends §5R§
   {
      
      private static const §%# §:Number = 60;
       
      
      private var §<I§:Number = 60;
      
      private var §,!U§:int = -1;
      
      private var §#i§:Boolean = false;
      
      private var §5#%§:Boolean = false;
      
      private var §`!p§:Number = 0;
      
      private var §+'§:§`?§;
      
      private var §1""§:§+V§;
      
      public function §>#!§(param1:§5#+§, param2:§`?§, param3:Boolean = true, param4:String = "load", param5:Number = 1000, param6:String = "", param7:String = "")
      {
         this.§+'§ = param2;
         super(param1,param3,param4,param5,param6,param7);
         this.§+'§.addEventListener(Event.COMPLETE,this.§,! §);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§1""§ = new §+V§(MovieClip(§[!$§.getChildByName("MovieClip_Tips")));
      }
      
      private function §,! §(param1:Event) : void
      {
         this.§+'§.removeEventListener(Event.COMPLETE,this.§,! §);
         this.§5#%§ = true;
      }
      
      private function §+p§(param1:ErrorEvent) : void
      {
         throw new Error(param1.text);
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§,!U§ == -1)
         {
            this.§,!U§ = getTimer();
         }
         if(!this.§#i§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§3!,§();
         super.setLoadingPercentage(_loc2_);
         if(_loc2_ == 1 && this.§#i§)
         {
            §5"s§.§<!8§("onFlashLoadComplete");
            §`0§(§;"U§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§#i§ = true;
         this.§`!p§ = 1;
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§`!p§ = param1;
      }
      
      private function §3!,§() : Number
      {
         var _loc1_:Number = !!this.§5#%§ ? Number(1) : Number(0);
         var _loc2_:Number = this.§@!C§(_loc1_ == 1 && this.§`!p§ == 1);
         if(this.§`!p§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§`!p§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §@!C§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§<I§;
         }
         var _loc2_:Number = Math.min((getTimer() - this.§,!U§) / 1000,this.§<I§) / this.§<I§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
   }
}
