package §##§
{
   import §%S§.§>p§;
   import §2U§.§'0§;
   import §2U§.ColorFadeLayerEvent;
   import §87§.§]T§;
   import §;j§.§8[§;
   import §in§.§]R§;
   
   public class Popup extends §>p§
   {
       
      
      protected const §5=§:Number = 0.25;
      
      protected var §30§:§'0§;
      
      protected var §?A§:§]T§;
      
      protected var §%9§:Boolean = false;
      
      public function Popup(param1:XML, param2:§]T§)
      {
         super(param1,param2.container);
         this.§30§ = new §'0§(0,0,0,0);
         param2.container.§&>§(this);
         this.§?A§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §8[§.pause();
         mClip.addChildAt(this.§30§,0);
         if(param1)
         {
            this.§30§.§!y§(0.7,this.§5=§);
         }
         else
         {
            this.§30§.§3L§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§30§ == null)
         {
            this.close();
            return;
         }
         this.§30§.§!y§(0,this.§5=§);
         this.§30§.addEventListener(ColorFadeLayerEvent.§78§,this.§,!9§);
      }
      
      protected function §,!9§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§%9§)
         {
            return;
         }
         if(this.§30§)
         {
            this.§30§.removeEventListener(ColorFadeLayerEvent.§78§,this.§,!9§);
            mClip.removeChild(this.§30§);
            this.§30§.clean();
            this.§30§ = null;
         }
         var _loc1_:§]R§ = this.§?A§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§?A§.container)
         {
            this.§?A§.container.§1!@§(this);
         }
         this.§%9§ = true;
         §8[§.resume();
         mClip.dispatchEvent(new §+G§(§+G§.§2C§,this));
      }
   }
}
