package §&S§
{
   import §5!Y§.§9"6§;
   import §59§.§<"9§;
   import §8m§.§@"M§;
   import §9@§.§3,§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §6!F§ extends EventDispatcher
   {
       
      
      private var §>!=§:§&!l§;
      
      private var §>!a§:MovieClip;
      
      private var §5!%§:Boolean;
      
      public function §6!F§(param1:§&!l§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         var _loc6_:Class = null;
         super();
         if(param5)
         {
            _loc6_ = §?q§.§ q§("VirtualCoinWallet_small");
         }
         else
         {
            _loc6_ = §?q§.§ q§("VirtualCoinWallet");
         }
         this.§>!a§ = new _loc6_();
         if(param4)
         {
            this.§>!a§.x = 131;
            this.§>!a§.y = 120;
         }
         param1.walletContainer.addChild(this.§>!a§);
         this.§5!%§ = param3;
         this.§>!=§ = param1;
         this.§>!a§.coinsAddButton.visible = param2;
         this.§>!a§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§="G§);
         this.§>!a§.birdCoin.gotoAndStop("Normal");
         §%"S§.§!C§.§9"%§.§,T§.addEventListener(§-!Y§.§`A§,this.§3a§);
         this.§!!J§(§%"S§.§!C§.§9"%§.§,T§.§0Q§);
      }
      
      private function §3a§(param1:§-!Y§) : void
      {
         if(this.§5!%§)
         {
            this.§5!q§(param1.§4[§);
         }
         this.§!!J§(param1.§&§);
      }
      
      public function §!!J§(param1:*) : void
      {
         this.§>!a§.coinsTextfield.text = §3,§.§3!Y§(param1);
      }
      
      private function §="G§(param1:MouseEvent) : void
      {
         §9"6§.§;!J§();
      }
      
      public function dispose() : void
      {
         if(this.§>!a§)
         {
            this.§>!a§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§="G§);
         }
         AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §%"S§.§!C§.§9"%§.§,T§.removeEventListener(§-!Y§.§`A§,this.§3a§);
         if(this.§>!=§ && this.§>!=§.walletContainer)
         {
            if(this.§>!=§.walletContainer.contains(this.§>!a§))
            {
               this.§>!=§.walletContainer.removeChild(this.§>!a§);
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§>!a§)
         {
            if(this.§>!a§.birdCoin.currentFrame >= this.§>!a§.birdCoin.totalFrames)
            {
               this.§>!a§.birdCoin.gotoAndStop("Normal");
               AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
         }
      }
      
      public function §5!q§(param1:int) : void
      {
         §@"M§.§3"C§("Get_Coins",§<"9§.§%F§);
         var _loc2_:§!a§ = new §!a§(param1);
         this.§>!a§.addChild(_loc2_);
         this.§>!a§.birdCoin.gotoAndPlay("GetCoins");
         AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
