package §4p§
{
   import §+!^§.§'Y§;
   import §7'§.§ ?§;
   import §7H§.§25§;
   import §7H§.ColorFadeLayerEvent;
   import §8v§.§#Z§;
   import §?>§.§=p§;
   
   public class Popup extends §=p§
   {
       
      
      private const §%N§:Number = 0.25;
      
      protected var §7R§:§25§;
      
      protected var §<S§:§#Z§;
      
      private var §<x§:Boolean = false;
      
      public function Popup(param1:XML, param2:§#Z§)
      {
         super(param1,param2.container);
         this.§7R§ = new §25§(0,0,0,0);
         param2.container.addComponent(this);
         this.§<S§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §'Y§.§ D§();
         if(this.§7R§ != null)
         {
            mClip.addChildAt(this.§7R§,0);
            if(param1)
            {
               this.§7R§.§,!N§(0.7,this.§%N§);
            }
            else
            {
               this.§7R§.§@A§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§7R§ == null)
         {
            this.close();
            return;
         }
         this.§7R§.§,!N§(0,this.§%N§);
         this.§7R§.addEventListener(ColorFadeLayerEvent.§+?§,this.§[x§);
      }
      
      private function §[x§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§<x§)
         {
            return;
         }
         if(this.§7R§)
         {
            this.§7R§.removeEventListener(ColorFadeLayerEvent.§+?§,this.§[x§);
            mClip.removeChild(this.§7R§);
            this.§7R§.clean();
            this.§7R§ = null;
         }
         var _loc1_:§ ?§ = this.§<S§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§<S§.container)
         {
            this.§<S§.container.removeComponent(this);
         }
         this.§<x§ = true;
         if(§-5§.§%?§ == false)
         {
            §'Y§.§"r§();
         }
         mClip.dispatchEvent(new §2!U§(§2!U§.§?!#§,this));
      }
   }
}
