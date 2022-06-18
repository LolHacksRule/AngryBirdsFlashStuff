package §1e§
{
   import §,!!§.§3!R§;
   import §,!!§.ColorFadeLayerEvent;
   import §2K§.§3!5§;
   import §6!K§.§7!!§;
   import §>!D§.§;,§;
   import §^Q§.§,^§;
   
   public class Popup extends §3!5§
   {
       
      
      private const §2!]§:Number = 0.25;
      
      protected var §0!9§:§3!R§;
      
      protected var §5!T§:§;,§;
      
      private var §^U§:Boolean = false;
      
      public function Popup(param1:XML, param2:§;,§)
      {
         super(param1,param2.container);
         this.§0!9§ = new §3!R§(0,0,0,0);
         param2.container.addComponent(this);
         this.§5!T§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §,^§.§9!§();
         if(this.§0!9§ != null)
         {
            mClip.addChildAt(this.§0!9§,0);
            if(param1)
            {
               this.§0!9§.§6!c§(0.7,this.§2!]§);
            }
            else
            {
               this.§0!9§.§&!J§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§0!9§ == null)
         {
            this.close();
            return;
         }
         this.§0!9§.§6!c§(0,this.§2!]§);
         this.§0!9§.addEventListener(ColorFadeLayerEvent.§7!=§,this.§@H§);
      }
      
      private function §@H§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§^U§)
         {
            return;
         }
         if(this.§0!9§)
         {
            this.§0!9§.removeEventListener(ColorFadeLayerEvent.§7!=§,this.§@H§);
            mClip.removeChild(this.§0!9§);
            this.§0!9§.clean();
            this.§0!9§ = null;
         }
         var _loc1_:§7!!§ = this.§5!T§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§5!T§.container)
         {
            this.§5!T§.container.removeComponent(this);
         }
         this.§^U§ = true;
         if(§&!R§.§;!M§ == false)
         {
            §,^§.§5H§();
         }
         mClip.dispatchEvent(new §>!-§(§>!-§.§9o§,this));
      }
   }
}
