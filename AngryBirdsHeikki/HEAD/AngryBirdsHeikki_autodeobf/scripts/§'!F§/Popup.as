package §'!F§
{
   import §-!f§.§ else§;
   import §1!d§.§!![§;
   import §8O§.§&#§;
   import §]!&§.§,!>§;
   import §use §.§;0§;
   import §use §.ColorFadeLayerEvent;
   
   public class Popup extends §,!>§
   {
       
      
      private const §[!T§:Number = 0.25;
      
      protected var §[!V§:§;0§ = null;
      
      protected var §<8§:§ else§;
      
      private var §@>§:Boolean;
      
      protected var §3x§:§!![§;
      
      public function Popup(param1:XML, param2:§ else§)
      {
         super(param1,param2.container);
         if(this.§[!V§ == null)
         {
            this.§[!V§ = new §;0§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§<8§ = param2;
         this.§@>§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §&#§.§?p§();
         mClip.addChildAt(this.§[!V§,0);
         if(param1)
         {
            this.§[!V§.§^;§(0.7,this.§[!T§);
         }
         else
         {
            this.§[!V§.§[!,§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§[!V§ == null)
         {
            this.close();
            return;
         }
         this.§[!V§.§^;§(0,this.§[!T§);
         this.§[!V§.addEventListener(ColorFadeLayerEvent.§2b§,this.§6!#§);
      }
      
      private function §6!#§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§3x§ != null)
         {
            this.§3x§.stop();
         }
         if(this.§@>§)
         {
            return;
         }
         if(this.§[!V§)
         {
            this.§[!V§.removeEventListener(ColorFadeLayerEvent.§2b§,this.§6!#§);
            mClip.removeChild(this.§[!V§);
            this.§[!V§.clean();
            this.§[!V§ = null;
         }
         if(this.§<8§.container)
         {
            this.§<8§.container.removeComponent(this);
         }
         this.§@>§ = true;
         §&#§.§3!H§();
         mClip.dispatchEvent(new §1;§(§1;§.§2P§,this));
      }
   }
}
