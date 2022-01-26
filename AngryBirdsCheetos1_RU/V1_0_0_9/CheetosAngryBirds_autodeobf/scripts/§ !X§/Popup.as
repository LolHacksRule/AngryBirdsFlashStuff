package § !X§
{
   import §"A§.§?3§;
   import §7!U§.§2!7§;
   import §7f§.§9c§;
   import §=X§.§-y§;
   import §=X§.ColorFadeLayerEvent;
   import §^r§.§ ^§;
   
   public class Popup extends §9c§
   {
       
      
      private const §6T§:Number = 0.25;
      
      protected var §@f§:§-y§;
      
      protected var §"n§:§?3§;
      
      private var §?!1§:Boolean = false;
      
      public function Popup(param1:XML, param2:§?3§)
      {
         super(param1,param2.container);
         this.§@f§ = new §-y§(0,0,0,0);
         param2.container.addComponent(this);
         this.§"n§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §2!7§.§9!V§();
         if(this.§@f§ != null)
         {
            mClip.addChildAt(this.§@f§,0);
            if(param1)
            {
               this.§@f§.§%&§(0.7,this.§6T§);
            }
            else
            {
               this.§@f§.§'!^§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§@f§ == null)
         {
            this.close();
            return;
         }
         this.§@f§.§%&§(0,this.§6T§);
         this.§@f§.addEventListener(ColorFadeLayerEvent.§8F§,this.§8;§);
      }
      
      private function §8;§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§?!1§)
         {
            return;
         }
         if(this.§@f§)
         {
            this.§@f§.removeEventListener(ColorFadeLayerEvent.§8F§,this.§8;§);
            mClip.removeChild(this.§@f§);
            this.§@f§.clean();
            this.§@f§ = null;
         }
         var _loc1_:§ ^§ = this.§"n§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§"n§.container)
         {
            this.§"n§.container.removeComponent(this);
         }
         this.§?!1§ = true;
         if(§+2§.§@!U§ == false)
         {
            §2!7§.§2T§();
         }
         mClip.dispatchEvent(new §2l§(§2l§.§4!R§,this));
      }
   }
}
