package §'d§
{
   import §"!B§.§;!1§;
   import §>!O§.§[+§;
   import §@a§.§8H§;
   import §]!=§.§]!"§;
   import §`! §.§!!K§;
   import §`! §.ColorFadeLayerEvent;
   
   public class Popup extends §;!1§
   {
      
      public static const §6!!§:int = 0;
      
      public static const §;!O§:int = 1;
      
      public static const §7&§:int = 2;
       
      
      protected const §#!1§:Number = 0.25;
      
      protected var § 5§:§!!K§;
      
      protected var §]A§:§8H§;
      
      protected var §`!K§:Boolean = false;
      
      protected var §'5§:Number = 0.7;
      
      private var §'!I§:int = 0;
      
      private var § &§:Boolean = false;
      
      public function Popup(param1:XML, param2:§8H§)
      {
         super(param1,param2.container);
         this.§ 5§ = new §!!K§(0,0,0,0);
         param2.container.§"&§(this);
         this.§]A§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§ &§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §[+§.pause();
         this.§ &§ = true;
         mClip.addChildAt(this.§ 5§,0);
         if(param1)
         {
            this.§ 5§.§3h§(this.§'5§,this.§#!1§);
         }
         else
         {
            this.§ 5§.§0!O§(this.§'5§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§ 5§ == null)
         {
            this.close();
            return;
         }
         this.§ 5§.§3h§(0,this.§#!1§);
         this.§ 5§.addEventListener(ColorFadeLayerEvent.§4$§,this.§[!?§);
      }
      
      protected function §[!?§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§ &§ = false;
         if(this.§`!K§)
         {
            return;
         }
         if(this.§ 5§)
         {
            this.§ 5§.removeEventListener(ColorFadeLayerEvent.§4$§,this.§[!?§);
            mClip.removeChild(this.§ 5§);
            this.§ 5§.clean();
            this.§ 5§ = null;
         }
         var _loc1_:§]!"§ = this.§]A§.getItemByName("Container_Popup");
         if(this.§]A§.container)
         {
            this.§]A§.container.§`7§(this);
         }
         this.§`!K§ = true;
         mClip.dispatchEvent(new §]'§(§]'§.§]!A§,this));
      }
      
      public function get §"F§() : int
      {
         return this.§'!I§;
      }
      
      public function set §"F§(param1:int) : void
      {
         this.§'!I§ = param1;
      }
   }
}
