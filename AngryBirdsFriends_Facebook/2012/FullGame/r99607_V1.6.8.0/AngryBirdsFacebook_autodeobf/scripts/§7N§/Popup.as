package §7N§
{
   import §"",§.§-!D§;
   import §#""§.§+!J§;
   import §#""§.ColorFadeLayerEvent;
   import §+I§.§9!%§;
   import §1"2§.§#z§;
   import §]!F§.§"!j§;
   
   public class Popup extends §-!D§
   {
      
      public static const §3g§:int = 0;
      
      public static const §'"8§:int = 1;
      
      public static const §1!L§:int = 2;
       
      
      protected const §;r§:Number = 0.25;
      
      protected var §#!i§:§+!J§;
      
      protected var §0!'§:§"!j§;
      
      protected var §'!?§:Boolean = false;
      
      private var §%!f§:int = 0;
      
      private var §>!S§:Boolean = false;
      
      public function Popup(param1:XML, param2:§"!j§)
      {
         super(param1,param2.§7!>§);
         this.§#!i§ = new §+!J§(0,0,0,0);
         param2.§7!>§.addComponent(this);
         this.§0!'§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>!S§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §9!%§.pause();
         this.§>!S§ = true;
         mClip.addChildAt(this.§#!i§,0);
         if(param1)
         {
            this.§#!i§.§ !2§(0.7,this.§;r§);
         }
         else
         {
            this.§#!i§.§>!!§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§#!i§ == null)
         {
            this.close();
            return;
         }
         this.§#!i§.§ !2§(0,this.§;r§);
         this.§#!i§.addEventListener(ColorFadeLayerEvent.§>&§,this.§3!3§);
      }
      
      protected function §3!3§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§>!S§ = false;
         if(this.§'!?§)
         {
            return;
         }
         if(this.§#!i§)
         {
            this.§#!i§.removeEventListener(ColorFadeLayerEvent.§>&§,this.§3!3§);
            mClip.removeChild(this.§#!i§);
            this.§#!i§.clean();
            this.§#!i§ = null;
         }
         var _loc1_:§#z§ = this.§0!'§.getItemByName("Container_Popup");
         if(this.§0!'§.§7!>§)
         {
            this.§0!'§.§7!>§.§?!b§(this);
         }
         this.§'!?§ = true;
         §9!%§.resume();
         mClip.dispatchEvent(new §2$§(§2$§.§"!H§,this));
      }
      
      public function get §3!l§() : int
      {
         return this.§%!f§;
      }
      
      public function set §3!l§(param1:int) : void
      {
         this.§%!f§ = param1;
      }
   }
}
