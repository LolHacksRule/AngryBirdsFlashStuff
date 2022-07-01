package §]J§
{
   import §&!&§.§&"1§;
   import §0Q§.ColorFadeLayerEvent;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §<!I§.§%2§;
   import §<Z§.§7!!§;
   
   public class Popup extends §%2§
   {
      
      public static const §3L§:int = 0;
      
      public static const §'! §:int = 1;
      
      public static const §4M§:int = 2;
       
      
      protected const §'!,§:Number = 0.25;
      
      protected var §#h§:§]`§;
      
      protected var §%!a§:§7!!§;
      
      protected var §"!h§:Boolean = false;
      
      private var §@" §:int = 0;
      
      private var §88§:Boolean = false;
      
      public function Popup(param1:XML, param2:§7!!§)
      {
         super(param1,param2.container);
         this.§#h§ = new §]`§(0,0,0,0);
         param2.container.§?!;§(this);
         this.§%!a§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§88§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §%s§.pause();
         this.§88§ = true;
         mClip.addChildAt(this.§#h§,0);
         if(param1)
         {
            this.§#h§.§8!%§(0.7,this.§'!,§);
         }
         else
         {
            this.§#h§.§3!4§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§#h§ == null)
         {
            this.close();
            return;
         }
         this.§#h§.§8!%§(0,this.§'!,§);
         this.§#h§.addEventListener(ColorFadeLayerEvent.§]!-§,this.§""8§);
      }
      
      protected function §""8§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§88§ = false;
         if(this.§"!h§)
         {
            return;
         }
         if(this.§#h§)
         {
            this.§#h§.removeEventListener(ColorFadeLayerEvent.§]!-§,this.§""8§);
            mClip.removeChild(this.§#h§);
            this.§#h§.clean();
            this.§#h§ = null;
         }
         var _loc1_:§&"1§ = this.§%!a§.getItemByName("Container_Popup");
         if(this.§%!a§.container)
         {
            this.§%!a§.container.removeComponent(this);
         }
         this.§"!h§ = true;
         §%s§.resume();
         mClip.dispatchEvent(new §]!m§(§]!m§.§+&§,this));
      }
      
      public function get §2!I§() : int
      {
         return this.§@" §;
      }
      
      public function set §2!I§(param1:int) : void
      {
         this.§@" § = param1;
      }
   }
}
