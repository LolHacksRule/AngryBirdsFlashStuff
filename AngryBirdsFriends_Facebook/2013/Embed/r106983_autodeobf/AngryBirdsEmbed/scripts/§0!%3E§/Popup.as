package §0!>§
{
   import §+3§.§8O§;
   import §+3§.ColorFadeLayerEvent;
   import §2T§.§+!I§;
   import §6h§.§[!4§;
   import §7J§.§07§;
   import §?H§.§+!B§;
   
   public class Popup extends §+!I§
   {
      
      public static const §[!3§:int = 0;
      
      public static const §5!5§:int = 1;
      
      public static const §<!=§:int = 2;
       
      
      protected const §2N§:Number = 0.25;
      
      protected var §22§:§8O§;
      
      protected var §-!C§:§+!B§;
      
      protected var §7!7§:Boolean = false;
      
      protected var §#!-§:Number = 0.7;
      
      private var §+?§:int = 0;
      
      private var §"!E§:Boolean = false;
      
      public function Popup(param1:XML, param2:§+!B§)
      {
         super(param1,param2.container);
         this.§22§ = new §8O§(0,0,0,0);
         param2.container.§,!A§(this);
         this.§-!C§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§"!E§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §[!4§.pause();
         this.§"!E§ = true;
         mClip.addChildAt(this.§22§,0);
         if(param1)
         {
            this.§22§.§&<§(this.§#!-§,this.§2N§);
         }
         else
         {
            this.§22§.§'`§(this.§#!-§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§22§ == null)
         {
            this.close();
            return;
         }
         this.§22§.§&<§(0,this.§2N§);
         this.§22§.addEventListener(ColorFadeLayerEvent.§%K§,this.§3w§);
      }
      
      protected function §3w§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§"!E§ = false;
         if(this.§7!7§)
         {
            return;
         }
         if(this.§22§)
         {
            this.§22§.removeEventListener(ColorFadeLayerEvent.§%K§,this.§3w§);
            mClip.removeChild(this.§22§);
            this.§22§.clean();
            this.§22§ = null;
         }
         var _loc1_:§07§ = this.§-!C§.getItemByName("Container_Popup");
         if(this.§-!C§.container)
         {
            this.§-!C§.container.§%!N§(this);
         }
         this.§7!7§ = true;
         mClip.dispatchEvent(new §do§(§do§.§9E§,this));
      }
      
      public function get §"$§() : int
      {
         return this.§+?§;
      }
      
      public function set §"$§(param1:int) : void
      {
         this.§+?§ = param1;
      }
   }
}
