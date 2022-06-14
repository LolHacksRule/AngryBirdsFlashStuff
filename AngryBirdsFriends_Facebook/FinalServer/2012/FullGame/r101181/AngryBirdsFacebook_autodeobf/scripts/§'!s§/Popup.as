package §'!s§
{
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §&q§.ColorFadeLayerEvent;
   import §2!i§.§7'§;
   import §4!e§.§`'§;
   import §]!A§.;
   
   public class Popup extends §`'§
   {
      
      public static const §^!]§:int = 0;
      
      public static const §%!x§:int = 1;
      
      public static const §97§:int = 2;
       
      
      protected const §?L§:Number = 0.25;
      
      protected var §-9§:§%1§;
      
      protected var §]"3§:§7!A§;
      
      protected var §,&§:Boolean = false;
      
      protected var §?!f§:Number = 0.7;
      
      private var §-!§:int = 0;
      
      private var §>!f§:Boolean = false;
      
      public function Popup(param1:XML, param2:§7!A§)
      {
         super(param1,param2.§%4§);
         this.§-9§ = new §%1§(0,0,0,0);
         param2.§%4§.addComponent(this);
         this.§]"3§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>!f§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §#6§.pause();
         this.§>!f§ = true;
         mClip.addChildAt(this.§-9§,0);
         if(param1)
         {
            this.§-9§.§?!,§(this.§?!f§,this.§?L§);
         }
         else
         {
            this.§-9§.§6!8§(this.§?!f§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§-9§ == null)
         {
            this.close();
            return;
         }
         this.§-9§.§?!,§(0,this.§?L§);
         this.§-9§.addEventListener(ColorFadeLayerEvent.§"![§,this.§0?§);
      }
      
      protected function §0?§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§>!f§ = false;
         if(this.§,&§)
         {
            return;
         }
         if(this.§-9§)
         {
            this.§-9§.removeEventListener(ColorFadeLayerEvent.§"![§,this.§0?§);
            mClip.removeChild(this.§-9§);
            this.§-9§.clean();
            this.§-9§ = null;
         }
         var _loc1_:§7'§ = this.§]"3§.getItemByName("Container_Popup");
         if(this.§]"3§.§%4§)
         {
            this.§]"3§.§%4§.§="2§(this);
         }
         this.§,&§ = true;
         §#6§.resume();
         mClip.dispatchEvent(new §%Z§(§%Z§.§&I§,this));
      }
      
      public function get §]"5§() : int
      {
         return this.§-!§;
      }
      
      public function set §]"5§(param1:int) : void
      {
         this.§-!§ = param1;
      }
   }
}
