package §2!!§
{
   import §'!N§.§"f§;
   import §3p§.§4;§;
   import §3p§.ColorFadeLayerEvent;
   import §=8§.§&>§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   
   public class Popup extends §&>§
   {
      
      public static const §4z§:int = 0;
      
      public static const §3J§:int = 1;
      
      public static const §6V§:int = 2;
       
      
      protected const §!! §:Number = 0.25;
      
      protected var §3!6§:§4;§;
      
      protected var §@Q§:§+[§;
      
      protected var §?!"§:Boolean = false;
      
      private var §2!?§:int = 0;
      
      private var §^!M§:Boolean = false;
      
      public function Popup(param1:XML, param2:§+[§)
      {
         super(param1,param2.container);
         this.§3!6§ = new §4;§(0,0,0,0);
         param2.container.addComponent(this);
         this.§@Q§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§^!M§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §2G§.pause();
         this.§^!M§ = true;
         mClip.addChildAt(this.§3!6§,0);
         if(param1)
         {
            this.§3!6§.fadeToAlpha(0.7,this.§!! §);
         }
         else
         {
            this.§3!6§.§[!7§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§3!6§ == null)
         {
            this.close();
            return;
         }
         this.§3!6§.fadeToAlpha(0,this.§!! §);
         this.§3!6§.addEventListener(ColorFadeLayerEvent.§#!%§,this.§7n§);
      }
      
      protected function §7n§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§^!M§ = false;
         if(this.§?!"§)
         {
            return;
         }
         if(this.§3!6§)
         {
            this.§3!6§.removeEventListener(ColorFadeLayerEvent.§#!%§,this.§7n§);
            mClip.removeChild(this.§3!6§);
            this.§3!6§.clean();
            this.§3!6§ = null;
         }
         var _loc1_:§"f§ = this.§@Q§.getItemByName("Container_Popup");
         if(this.§@Q§.container)
         {
            this.§@Q§.container.§ !<§(this);
         }
         this.§?!"§ = true;
         §2G§.resume();
         mClip.dispatchEvent(new §+`§(§+`§.§%@§,this));
      }
      
      public function get §#[§() : int
      {
         return this.§2!?§;
      }
      
      public function set §#[§(param1:int) : void
      {
         this.§2!?§ = param1;
      }
   }
}
