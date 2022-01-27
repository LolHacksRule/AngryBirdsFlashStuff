package §[k§
{
   import §<"c§.§1#"§;
   import §="V§.§""v§;
   import §>@§.§5"H§;
   import §`!o§.§+"k§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class § "l§ extends §1#"§
   {
      
      private static const §5"m§:Number = 60;
       
      
      private var §6#0§:Number = 60;
      
      private var §@#-§:int = -1;
      
      private var §?9§:Boolean = false;
      
      private var §3"9§:Boolean = false;
      
      private var §3]§:Number = 0;
      
      private var §6!J§:§+"k§;
      
      private var §""T§:§8K§;
      
      public function § "l§(param1:§5"H§, param2:§+"k§, param3:Boolean = true, param4:String = "load", param5:Number = 1000, param6:String = "", param7:String = "")
      {
         this.§6!J§ = param2;
         super(param1,param3,param4,param5,param6,param7);
         this.§6!J§.addEventListener(Event.COMPLETE,this.§%"?§);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§""T§ = new §8K§(MovieClip(§'#F§.getChildByName("MovieClip_Tips")));
      }
      
      private function §%"?§(param1:Event) : void
      {
         this.§6!J§.removeEventListener(Event.COMPLETE,this.§%"?§);
         this.§3"9§ = true;
      }
      
      private function §-!K§(param1:ErrorEvent) : void
      {
         throw new Error(param1.text);
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§@#-§ == -1)
         {
            this.§@#-§ = getTimer();
         }
         if(!this.§?9§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§1#I§();
         super.setLoadingPercentage(_loc2_);
         if(_loc2_ == 1 && this.§?9§)
         {
            §""v§.§&R§("onFlashLoadComplete");
            § g§(§"l§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§?9§ = true;
         this.§3]§ = 1;
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§3]§ = param1;
      }
      
      private function §1#I§() : Number
      {
         var _loc1_:Number = !!this.§3"9§ ? Number(1) : Number(0);
         var _loc2_:Number = this.§]^§(_loc1_ == 1 && this.§3]§ == 1);
         if(this.§3]§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§3]§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §]^§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§6#0§;
         }
         var _loc2_:Number = Math.min((getTimer() - this.§@#-§) / 1000,this.§6#0§) / this.§6#0§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
   }
}
