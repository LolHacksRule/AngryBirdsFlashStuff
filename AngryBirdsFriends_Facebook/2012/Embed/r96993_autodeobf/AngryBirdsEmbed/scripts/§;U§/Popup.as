package §;U§
{
   import §!^§.§ >§;
   import §,!$§.§8O§;
   import §,!$§.ColorFadeLayerEvent;
   import §-!'§.§ !4§;
   import §>%§.§]3§;
   import §^s§.§&"§;
   
   public class Popup extends § !4§
   {
       
      
      protected const §+J§:Number = 0.25;
      
      protected var §,!>§:§8O§;
      
      protected var §+O§:§&"§;
      
      protected var §;!#§:Boolean = false;
      
      public function Popup(param1:XML, param2:§&"§)
      {
         super(param1,param2.container);
         this.§,!>§ = new §8O§(0,0,0,0);
         param2.container.§2'§(this);
         this.§+O§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §]3§.pause();
         mClip.addChildAt(this.§,!>§,0);
         if(param1)
         {
            this.§,!>§.§'l§(0.7,this.§+J§);
         }
         else
         {
            this.§,!>§.§=;§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§,!>§ == null)
         {
            this.close();
            return;
         }
         this.§,!>§.§'l§(0,this.§+J§);
         this.§,!>§.addEventListener(ColorFadeLayerEvent.§#!9§,this.§!!-§);
      }
      
      protected function §!!-§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§;!#§)
         {
            return;
         }
         if(this.§,!>§)
         {
            this.§,!>§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.§!!-§);
            mClip.removeChild(this.§,!>§);
            this.§,!>§.clean();
            this.§,!>§ = null;
         }
         var _loc1_:§ >§ = this.§+O§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§+O§.container)
         {
            this.§+O§.container.§4g§(this);
         }
         this.§;!#§ = true;
         §]3§.resume();
         mClip.dispatchEvent(new §#!>§(§#!>§.§2!>§,this));
      }
   }
}
