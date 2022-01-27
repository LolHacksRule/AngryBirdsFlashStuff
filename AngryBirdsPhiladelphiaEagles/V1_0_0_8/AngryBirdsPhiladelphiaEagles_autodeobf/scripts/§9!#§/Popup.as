package §9!#§
{
   import §!t§.§;j§;
   import §#@§.§,k§;
   import §#@§.ColorFadeLayerEvent;
   import §5F§.§!!A§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   
   public class Popup extends §;j§
   {
      
      public static const §4!$§:int = 0;
      
      public static const §=!D§:int = 1;
      
      public static const §5!=§:int = 2;
       
      
      protected const §]m§:Number = 0.25;
      
      protected var §9!L§:§,k§;
      
      protected var §8!,§:§"Q§;
      
      protected var §7O§:Boolean = false;
      
      private var §5!<§:int = 0;
      
      private var §3_§:Boolean = false;
      
      public function Popup(param1:XML, param2:§"Q§)
      {
         super(param1,param2.container);
         this.§9!L§ = new §,k§(0,0,0,0);
         param2.container.addComponent(this);
         this.§8!,§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§3_§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §0!E§.pause();
         this.§3_§ = true;
         mClip.addChildAt(this.§9!L§,0);
         if(param1)
         {
            this.§9!L§.fadeToAlpha(0.7,this.§]m§);
         }
         else
         {
            this.§9!L§.§@k§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§9!L§ == null)
         {
            this.close();
            return;
         }
         this.§9!L§.fadeToAlpha(0,this.§]m§);
         this.§9!L§.addEventListener(ColorFadeLayerEvent.§`S§,this.§-[§);
      }
      
      protected function §-[§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§3_§ = false;
         if(this.§7O§)
         {
            return;
         }
         if(this.§9!L§)
         {
            this.§9!L§.removeEventListener(ColorFadeLayerEvent.§`S§,this.§-[§);
            mClip.removeChild(this.§9!L§);
            this.§9!L§.clean();
            this.§9!L§ = null;
         }
         var _loc1_:§!!A§ = this.§8!,§.getItemByName("Container_Popup");
         if(this.§8!,§.container)
         {
            this.§8!,§.container.§]a§(this);
         }
         this.§7O§ = true;
         §0!E§.resume();
         mClip.dispatchEvent(new §>m§(§>m§.§5i§,this));
      }
      
      public function get §,!@§() : int
      {
         return this.§5!<§;
      }
      
      public function set §,!@§(param1:int) : void
      {
         this.§5!<§ = param1;
      }
   }
}
