package §%J§
{
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §8B§.§3J§;
   import §?u§.§9&§;
   import §?u§.ColorFadeLayerEvent;
   import §[V§.§-!E§;
   
   public class Popup extends §-!E§
   {
       
      
      protected const §>!§:Number = 0.25;
      
      protected var §@"§:§9&§;
      
      protected var §^3§:§"!4§;
      
      protected var §96§:Boolean = false;
      
      public function Popup(param1:XML, param2:§"!4§)
      {
         super(param1,param2.container);
         this.§@"§ = new §9&§(0,0,0,0);
         param2.container.§2!2§(this);
         this.§^3§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §?'§.pause();
         mClip.addChildAt(this.§@"§,0);
         if(param1)
         {
            this.§@"§.§%4§(0.7,this.§>!§);
         }
         else
         {
            this.§@"§.§!]§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§@"§ == null)
         {
            this.close();
            return;
         }
         this.§@"§.§%4§(0,this.§>!§);
         this.§@"§.addEventListener(ColorFadeLayerEvent.§<L§,this.§5t§);
      }
      
      protected function §5t§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§96§)
         {
            return;
         }
         if(this.§@"§)
         {
            this.§@"§.removeEventListener(ColorFadeLayerEvent.§<L§,this.§5t§);
            mClip.removeChild(this.§@"§);
            this.§@"§.clean();
            this.§@"§ = null;
         }
         var _loc1_:§3J§ = this.§^3§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§^3§.container)
         {
            this.§^3§.container.§'!B§(this);
         }
         this.§96§ = true;
         §?'§.resume();
         mClip.dispatchEvent(new §+x§(§+x§.§3_§,this));
      }
   }
}
