package §4q§
{
   import §"^§.§9=§;
   import §5!<§.§@]§;
   import §5f§.§-G§;
   import §92§.§<'§;
   import §92§.ColorFadeLayerEvent;
   import §=u§.§7?§;
   
   public class Popup extends §7?§
   {
      
      public static const §=E§:int = 0;
      
      public static const § !9§:int = 1;
      
      public static const §>3§:int = 2;
       
      
      protected const §";§:Number = 0.25;
      
      protected var §0!G§:§<'§;
      
      protected var §"3§:§@]§;
      
      protected var §6R§:Boolean = false;
      
      private var §0V§:int = 0;
      
      private var §9$§:Boolean = false;
      
      public function Popup(param1:XML, param2:§@]§)
      {
         super(param1,param2.container);
         this.§0!G§ = new §<'§(0,0,0,0);
         param2.container.addComponent(this);
         this.§"3§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§9$§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §9=§.pause();
         this.§9$§ = true;
         mClip.addChildAt(this.§0!G§,0);
         if(param1)
         {
            this.§0!G§.fadeToAlpha(0.7,this.§";§);
         }
         else
         {
            this.§0!G§.§7T§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§0!G§ == null)
         {
            this.close();
            return;
         }
         this.§0!G§.fadeToAlpha(0,this.§";§);
         this.§0!G§.addEventListener(ColorFadeLayerEvent.§9!F§,this.§=p§);
      }
      
      protected function §=p§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§9$§ = false;
         if(this.§6R§)
         {
            return;
         }
         if(this.§0!G§)
         {
            this.§0!G§.removeEventListener(ColorFadeLayerEvent.§9!F§,this.§=p§);
            mClip.removeChild(this.§0!G§);
            this.§0!G§.clean();
            this.§0!G§ = null;
         }
         var _loc1_:§-G§ = this.§"3§.getItemByName("Container_Popup");
         if(this.§"3§.container)
         {
            this.§"3§.container.§%w§(this);
         }
         this.§6R§ = true;
         §9=§.resume();
         mClip.dispatchEvent(new §4$§(§4$§.§9U§,this));
      }
      
      public function get §&F§() : int
      {
         return this.§0V§;
      }
      
      public function set §&F§(param1:int) : void
      {
         this.§0V§ = param1;
      }
   }
}
