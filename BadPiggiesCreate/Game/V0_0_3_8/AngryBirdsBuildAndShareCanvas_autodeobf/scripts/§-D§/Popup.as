package §-D§
{
   import §!D§.§+! §;
   import §0!!§.§%!w§;
   import §0!!§.ColorFadeLayerEvent;
   import §9!7§.§0!`§;
   import §?!V§.§ T§;
   import §`%§.§8!0§;
   
   public class Popup extends §+! §
   {
      
      public static const §5&§:int = 0;
      
      public static const §4"+§:int = 1;
      
      public static const §?!U§:int = 2;
       
      
      protected const §1@§:Number = 0.25;
      
      protected var §;!z§:§%!w§;
      
      protected var §5!q§:§ T§;
      
      protected var §9!P§:Boolean = false;
      
      private var §5"%§:int = 0;
      
      private var §>h§:Boolean = false;
      
      public function Popup(param1:XML, param2:§ T§)
      {
         super(param1,param2.container);
         this.§;!z§ = new §%!w§(0,0,0,0);
         param2.container.§">§(this);
         this.§5!q§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>h§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §8!0§.pause();
         this.§>h§ = true;
         mClip.addChildAt(this.§;!z§,0);
         if(param1)
         {
            this.§;!z§.§4g§(0.7,this.§1@§);
         }
         else
         {
            this.§;!z§.§1$§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§;!z§ == null)
         {
            this.close();
            return;
         }
         this.§;!z§.§4g§(0,this.§1@§);
         this.§;!z§.addEventListener(ColorFadeLayerEvent.§'2§,this.§6i§);
      }
      
      protected function §6i§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§>h§ = false;
         if(this.§9!P§)
         {
            return;
         }
         if(this.§;!z§)
         {
            this.§;!z§.removeEventListener(ColorFadeLayerEvent.§'2§,this.§6i§);
            mClip.removeChild(this.§;!z§);
            this.§;!z§.clean();
            this.§;!z§ = null;
         }
         var _loc1_:§0!`§ = this.§5!q§.getItemByName("Container_Popup");
         if(this.§5!q§.container)
         {
            this.§5!q§.container.§90§(this);
         }
         this.§9!P§ = true;
         §8!0§.resume();
         mClip.dispatchEvent(new §3[§(§3[§.§#M§,this));
      }
      
      public function get §7U§() : int
      {
         return this.§5"%§;
      }
      
      public function set §7U§(param1:int) : void
      {
         this.§5"%§ = param1;
      }
   }
}
