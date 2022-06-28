package §=!4§
{
   import §"!5§.§,!!§;
   import §,K§.§-!$§;
   import §,K§.ColorFadeLayerEvent;
   import §1;§.§!!1§;
   import §1h§.§#H§;
   import §^@§.§'v§;
   
   public class Popup extends §'v§
   {
       
      
      protected const §`!G§:Number = 0.25;
      
      protected var §>!;§:§-!$§;
      
      protected var §,§:§!!1§;
      
      protected var §-=§:Boolean = false;
      
      public function Popup(param1:XML, param2:§!!1§)
      {
         super(param1,param2.container);
         this.§>!;§ = new §-!$§(0,0,0,0);
         param2.container.§4H§(this);
         this.§,§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §,!!§.pause();
         mClip.addChildAt(this.§>!;§,0);
         if(param1)
         {
            this.§>!;§.§0C§(0.7,this.§`!G§);
         }
         else
         {
            this.§>!;§.§`!'§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§>!;§ == null)
         {
            this.close();
            return;
         }
         this.§>!;§.§0C§(0,this.§`!G§);
         this.§>!;§.addEventListener(ColorFadeLayerEvent.§"%§,this.§00§);
      }
      
      protected function §00§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§-=§)
         {
            return;
         }
         if(this.§>!;§)
         {
            this.§>!;§.removeEventListener(ColorFadeLayerEvent.§"%§,this.§00§);
            mClip.removeChild(this.§>!;§);
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
         var _loc1_:§#H§ = this.§,§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§,§.container)
         {
            this.§,§.container.§?b§(this);
         }
         this.§-=§ = true;
         §,!!§.resume();
         mClip.dispatchEvent(new §;=§(§;=§.§"!G§,this));
      }
   }
}
