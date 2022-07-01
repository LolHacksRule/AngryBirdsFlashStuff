package §&!!§
{
   import §'x§.§?z§;
   import §+!d§.§8!=§;
   import §;!A§.§#!w§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §<!k§.ColorFadeLayerEvent;
   
   public class Popup extends §#!w§
   {
      
      public static const §=!5§:int = 0;
      
      public static const §<!`§:int = 1;
      
      public static const §`8§:int = 2;
       
      
      protected const §;!Y§:Number = 0.25;
      
      protected var §;v§:§!!g§;
      
      protected var §7S§:§`5§;
      
      protected var §-[§:Boolean = false;
      
      private var §6!o§:int = 0;
      
      private var §[!7§:Boolean = false;
      
      public function Popup(param1:XML, param2:§`5§)
      {
         super(param1,param2.container);
         this.§;v§ = new §!!g§(0,0,0,0);
         param2.container.§&!W§(this);
         this.§7S§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§[!7§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §?z§.pause();
         this.§[!7§ = true;
         mClip.addChildAt(this.§;v§,0);
         if(param1)
         {
            this.§;v§.§6"+§(0.7,this.§;!Y§);
         }
         else
         {
            this.§;v§.§;8§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§;v§ == null)
         {
            this.close();
            return;
         }
         this.§;v§.§6"+§(0,this.§;!Y§);
         this.§;v§.addEventListener(ColorFadeLayerEvent.§#"-§,this.§-g§);
      }
      
      protected function §-g§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§[!7§ = false;
         if(this.§-[§)
         {
            return;
         }
         if(this.§;v§)
         {
            this.§;v§.removeEventListener(ColorFadeLayerEvent.§#"-§,this.§-g§);
            mClip.removeChild(this.§;v§);
            this.§;v§.clean();
            this.§;v§ = null;
         }
         var _loc1_:§8!=§ = this.§7S§.getItemByName("Container_Popup");
         if(this.§7S§.container)
         {
            this.§7S§.container.removeComponent(this);
         }
         this.§-[§ = true;
         §?z§.resume();
         mClip.dispatchEvent(new §%!]§(§%!]§.§["3§,this));
      }
      
      public function get §;!c§() : int
      {
         return this.§6!o§;
      }
      
      public function set §;!c§(param1:int) : void
      {
         this.§6!o§ = param1;
      }
   }
}
