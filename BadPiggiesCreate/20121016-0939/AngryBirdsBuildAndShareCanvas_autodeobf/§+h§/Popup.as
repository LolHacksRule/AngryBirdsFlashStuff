package §+h§
{
   import §%c§.§=!X§;
   import §'!A§.§-!2§;
   import §'p§.§"S§;
   import §1"2§.§'s§;
   import §[!w§.§4!i§;
   import §[!w§.ColorFadeLayerEvent;
   
   public class Popup extends §"S§
   {
      
      public static const §="0§:int = 0;
      
      public static const §00§:int = 1;
      
      public static const §-8§:int = 2;
       
      
      protected const §0!]§:Number = 0.25;
      
      protected var §?!+§:§4!i§;
      
      protected var §&!D§:§'s§;
      
      protected var §["5§:Boolean = false;
      
      protected var §7I§:Number = 0.7;
      
      private var §5"%§:int = 0;
      
      private var §>!+§:Boolean = false;
      
      public function Popup(param1:XML, param2:§'s§)
      {
         super(param1,param2.container);
         this.§?!+§ = new §4!i§(0,0,0,0);
         param2.container.§;!R§(this);
         this.§&!D§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>!+§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §=!X§.pause();
         this.§>!+§ = true;
         mClip.addChildAt(this.§?!+§,0);
         if(param1)
         {
            this.§?!+§.§>=§(this.§7I§,this.§0!]§);
         }
         else
         {
            this.§?!+§.§]!G§(this.§7I§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§?!+§ == null)
         {
            this.close();
            return;
         }
         this.§?!+§.§>=§(0,this.§0!]§);
         this.§?!+§.addEventListener(ColorFadeLayerEvent.§-2§,this.§5">§);
      }
      
      protected function §5">§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§>!+§ = false;
         if(this.§["5§)
         {
            return;
         }
         if(this.§?!+§)
         {
            this.§?!+§.removeEventListener(ColorFadeLayerEvent.§-2§,this.§5">§);
            mClip.removeChild(this.§?!+§);
            this.§?!+§.clean();
            this.§?!+§ = null;
         }
         var _loc1_:§-!2§ = this.§&!D§.getItemByName("Container_Popup");
         if(this.§&!D§.container)
         {
            this.§&!D§.container.removeComponent(this);
         }
         this.§["5§ = true;
         §=!X§.resume();
         mClip.dispatchEvent(new §+1§(§+1§.§9!R§,this));
      }
      
      public function get §0!x§() : int
      {
         return this.§5"%§;
      }
      
      public function set §0!x§(param1:int) : void
      {
         this.§5"%§ = param1;
      }
   }
}
