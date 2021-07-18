package §5!Y§
{
   import §%i§.§=!t§;
   import §1!t§.§!>§;
   import §>0§.§3"K§;
   import §>0§.ColorFadeLayerEvent;
   import §@!"§.§?l§;
   import §`"%§.§`_§;
   
   public class Popup extends §=!t§
   {
      
      public static const §!t§:int = 0;
      
      public static const §[M§:int = 1;
      
      public static const §>!L§:int = 2;
       
      
      protected const §4!r§:Number = 0.25;
      
      protected var §;!@§:§3"K§;
      
      protected var §[w§:§`_§;
      
      protected var §",§:Boolean = false;
      
      protected var §?Y§:Number = 0.7;
      
      private var §>[§:int = 0;
      
      private var §==§:Boolean = false;
      
      public function Popup(param1:XML, param2:§`_§)
      {
         super(param1,param2.container);
         this.§;!@§ = new §3"K§(0,0,0,0);
         param2.container.§2!I§(this);
         this.§[w§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§==§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §?l§.pause();
         this.§==§ = true;
         mClip.addChildAt(this.§;!@§,0);
         if(param1)
         {
            this.§;!@§.§!!4§(this.§?Y§,this.§4!r§);
         }
         else
         {
            this.§;!@§.§^!0§(this.§?Y§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§;!@§ == null)
         {
            this.close();
            return;
         }
         this.§;!@§.§!!4§(0,this.§4!r§);
         this.§;!@§.addEventListener(ColorFadeLayerEvent.§>!u§,this.§ "0§);
      }
      
      protected function § "0§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§==§ = false;
         if(this.§",§)
         {
            return;
         }
         if(this.§;!@§)
         {
            this.§;!@§.removeEventListener(ColorFadeLayerEvent.§>!u§,this.§ "0§);
            mClip.removeChild(this.§;!@§);
            this.§;!@§.clean();
            this.§;!@§ = null;
         }
         var _loc1_:§!>§ = this.§[w§.getItemByName("Container_Popup");
         if(this.§[w§.container)
         {
            this.§[w§.container.§<B§(this);
         }
         this.§",§ = true;
         mClip.dispatchEvent(new §>"E§(§>"E§.§6"-§,this));
      }
      
      public function get §""W§() : int
      {
         return this.§>[§;
      }
      
      public function set §""W§(param1:int) : void
      {
         this.§>[§ = param1;
      }
   }
}
