package §@<§
{
   import §!!0§.override;
   import §&b§.§[F§;
   import §4M§.§^'§;
   import §8]§.§&8§;
   import §>g§.§-!H§;
   import §>g§.ColorFadeLayerEvent;
   
   public class Popup extends §&8§
   {
      
      public static const §>P§:int = 0;
      
      public static const §'Q§:int = 1;
      
      public static const §[>§:int = 2;
       
      
      protected const §>b§:Number = 0.25;
      
      protected var §26§:§-!H§;
      
      protected var §0B§:§^'§;
      
      protected var §[J§:Boolean = false;
      
      private var §;?§:int = 0;
      
      public function Popup(param1:XML, param2:§^'§)
      {
         super(param1,param2.container);
         this.§26§ = new §-!H§(0,0,0,0);
         param2.container.addComponent(this);
         this.§0B§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §[F§.pause();
         mClip.addChildAt(this.§26§,0);
         if(param1)
         {
            this.§26§.fadeToAlpha(0.7,this.§>b§);
         }
         else
         {
            this.§26§.§0!§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§26§ == null)
         {
            this.close();
            return;
         }
         this.§26§.fadeToAlpha(0,this.§>b§);
         this.§26§.addEventListener(ColorFadeLayerEvent.§6!O§,this.§%u§);
      }
      
      protected function §%u§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§[J§)
         {
            return;
         }
         if(this.§26§)
         {
            this.§26§.removeEventListener(ColorFadeLayerEvent.§6!O§,this.§%u§);
            mClip.removeChild(this.§26§);
            this.§26§.clean();
            this.§26§ = null;
         }
         var _loc1_:override = this.§0B§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§0B§.container)
         {
            this.§0B§.container.§8t§(this);
         }
         this.§[J§ = true;
         §[F§.resume();
         mClip.dispatchEvent(new §!z§(§!z§.§#!Q§,this));
      }
      
      public function get §true§() : int
      {
         return this.§;?§;
      }
      
      public function set §true§(param1:int) : void
      {
         this.§;?§ = param1;
      }
   }
}
