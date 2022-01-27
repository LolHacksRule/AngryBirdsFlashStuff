package §<!<§
{
   import §2S§.§<!K§;
   import §7!!§.§,c§;
   import §7!!§.ColorFadeLayerEvent;
   import §9c§.§3i§;
   import §<!F§.§5!+§;
   import §=!H§.§"L§;
   
   public class Popup extends §"L§
   {
      
      public static const §4?§:int = 0;
      
      public static const §>7§:int = 1;
      
      public static const §9e§:int = 2;
       
      
      protected const §?Z§:Number = 0.25;
      
      protected var §=]§:§,c§;
      
      protected var §!!L§:§<!K§;
      
      protected var §0!?§:Boolean = false;
      
      private var §]+§:int = 0;
      
      private var §5;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§<!K§)
      {
         super(param1,param2.container);
         this.§=]§ = new §,c§(0,0,0,0);
         param2.container.addComponent(this);
         this.§!!L§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§5;§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §5!+§.pause();
         this.§5;§ = true;
         mClip.addChildAt(this.§=]§,0);
         if(param1)
         {
            this.§=]§.fadeToAlpha(0.7,this.§?Z§);
         }
         else
         {
            this.§=]§.§'G§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§=]§ == null)
         {
            this.close();
            return;
         }
         this.§=]§.fadeToAlpha(0,this.§?Z§);
         this.§=]§.addEventListener(ColorFadeLayerEvent.§<2§,this.§[!&§);
      }
      
      protected function §[!&§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§5;§ = false;
         if(this.§0!?§)
         {
            return;
         }
         if(this.§=]§)
         {
            this.§=]§.removeEventListener(ColorFadeLayerEvent.§<2§,this.§[!&§);
            mClip.removeChild(this.§=]§);
            this.§=]§.clean();
            this.§=]§ = null;
         }
         var _loc1_:§3i§ = this.§!!L§.getItemByName("Container_Popup");
         if(this.§!!L§.container)
         {
            this.§!!L§.container.§false§(this);
         }
         this.§0!?§ = true;
         §5!+§.resume();
         mClip.dispatchEvent(new §=b§(§=b§.§2!?§,this));
      }
      
      public function get §@i§() : int
      {
         return this.§]+§;
      }
      
      public function set §@i§(param1:int) : void
      {
         this.§]+§ = param1;
      }
   }
}
