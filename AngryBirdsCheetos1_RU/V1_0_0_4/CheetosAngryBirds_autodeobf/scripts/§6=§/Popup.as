package §6=§
{
   import §!!S§.§'+§;
   import §3!M§.§]9§;
   import §6W§.§-t§;
   import §6W§.ColorFadeLayerEvent;
   import §;!X§.§7`§;
   import §`B§.§-Z§;
   
   public class Popup extends §]9§
   {
       
      
      private const §1_§:Number = 0.25;
      
      protected var §@'§:§-t§;
      
      protected var §-A§:§-Z§;
      
      private var §7!C§:Boolean = false;
      
      public function Popup(param1:XML, param2:§-Z§)
      {
         super(param1,param2.container);
         this.§@'§ = new §-t§(0,0,0,0);
         param2.container.addComponent(this);
         this.§-A§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §7`§.§,-§();
         if(this.§@'§ != null)
         {
            mClip.addChildAt(this.§@'§,0);
            if(param1)
            {
               this.§@'§.§'!N§(0.7,this.§1_§);
            }
            else
            {
               this.§@'§.§7&§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§@'§ == null)
         {
            this.close();
            return;
         }
         this.§@'§.§'!N§(0,this.§1_§);
         this.§@'§.addEventListener(ColorFadeLayerEvent.§8!>§,this.§6&§);
      }
      
      private function §6&§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§7!C§)
         {
            return;
         }
         if(this.§@'§)
         {
            this.§@'§.removeEventListener(ColorFadeLayerEvent.§8!>§,this.§6&§);
            mClip.removeChild(this.§@'§);
            this.§@'§.clean();
            this.§@'§ = null;
         }
         var _loc1_:§'+§ = this.§-A§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§-A§.container)
         {
            this.§-A§.container.removeComponent(this);
         }
         this.§7!C§ = true;
         if(§`!<§.§^!!§ == false)
         {
            §7`§.§,!V§();
         }
         mClip.dispatchEvent(new §0i§(§0i§.§51§,this));
      }
   }
}
