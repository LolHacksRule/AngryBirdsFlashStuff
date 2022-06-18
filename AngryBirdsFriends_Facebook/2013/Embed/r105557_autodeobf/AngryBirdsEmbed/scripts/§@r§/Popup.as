package §@r§
{
   import §"!K§.§,U§;
   import §"?§.ColorFadeLayerEvent;
   import §"?§.§]A§;
   import §#]§.§'5§;
   import §&U§.§0!5§;
   import §1t§.§@B§;
   
   public class Popup extends §0!5§
   {
      
      public static const §15§:int = 0;
      
      public static const §,m§:int = 1;
      
      public static const §0!1§:int = 2;
       
      
      protected const §#c§:Number = 0.25;
      
      protected var §@v§:§]A§;
      
      protected var §1y§:§,U§;
      
      protected var §#[§:Boolean = false;
      
      protected var §=4§:Number = 0.7;
      
      private var §2c§:int = 0;
      
      private var §]!;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§,U§)
      {
         super(param1,param2.container);
         this.§@v§ = new §]A§(0,0,0,0);
         param2.container.§8!@§(this);
         this.§1y§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§]!;§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §'5§.pause();
         this.§]!;§ = true;
         mClip.addChildAt(this.§@v§,0);
         if(param1)
         {
            this.§@v§.§%H§(this.§=4§,this.§#c§);
         }
         else
         {
            this.§@v§.§#!,§(this.§=4§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§@v§ == null)
         {
            this.close();
            return;
         }
         this.§@v§.§%H§(0,this.§#c§);
         this.§@v§.addEventListener(ColorFadeLayerEvent.§[%§,this.§,!C§);
      }
      
      protected function §,!C§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§]!;§ = false;
         if(this.§#[§)
         {
            return;
         }
         if(this.§@v§)
         {
            this.§@v§.removeEventListener(ColorFadeLayerEvent.§[%§,this.§,!C§);
            mClip.removeChild(this.§@v§);
            this.§@v§.clean();
            this.§@v§ = null;
         }
         var _loc1_:§@B§ = this.§1y§.getItemByName("Container_Popup");
         if(this.§1y§.container)
         {
            this.§1y§.container.§5k§(this);
         }
         this.§#[§ = true;
         mClip.dispatchEvent(new §-w§(§-w§.§;E§,this));
      }
      
      public function get §]3§() : int
      {
         return this.§2c§;
      }
      
      public function set §]3§(param1:int) : void
      {
         this.§2c§ = param1;
      }
   }
}
