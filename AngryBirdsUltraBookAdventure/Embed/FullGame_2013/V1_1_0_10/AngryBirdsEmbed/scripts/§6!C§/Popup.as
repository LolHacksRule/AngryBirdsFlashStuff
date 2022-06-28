package §6!C§
{
   import §%4§.§"e§;
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import §0,§.§4V§;
   import §0,§.ColorFadeLayerEvent;
   import §5!L§.§=w§;
   
   public class Popup extends §"e§
   {
      
      public static const §^!B§:int = 0;
      
      public static const §[j§:int = 1;
      
      public static const §-!4§:int = 2;
       
      
      protected const §<!N§:Number = 0.25;
      
      protected var §+f§:§4V§;
      
      protected var §,<§:§4!,§;
      
      protected var §`#§:Boolean = false;
      
      protected var §5d§:Number = 0.7;
      
      private var §8Z§:int = 0;
      
      private var §2x§:Boolean = false;
      
      public function Popup(param1:XML, param2:§4!,§)
      {
         super(param1,param2.container);
         this.§+f§ = new §4V§(0,0,0,0);
         param2.container.§9!@§(this);
         this.§,<§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§2x§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §=w§.pause();
         this.§2x§ = true;
         mClip.addChildAt(this.§+f§,0);
         if(param1)
         {
            this.§+f§.§[!'§(this.§5d§,this.§<!N§);
         }
         else
         {
            this.§+f§.§0z§(this.§5d§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§+f§ == null)
         {
            this.close();
            return;
         }
         this.§+f§.§[!'§(0,this.§<!N§);
         this.§+f§.addEventListener(ColorFadeLayerEvent.§?!5§,this.§5-§);
      }
      
      protected function §5-§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§2x§ = false;
         if(this.§`#§)
         {
            return;
         }
         if(this.§+f§)
         {
            this.§+f§.removeEventListener(ColorFadeLayerEvent.§?!5§,this.§5-§);
            mClip.removeChild(this.§+f§);
            this.§+f§.clean();
            this.§+f§ = null;
         }
         var _loc1_:§'!,§ = this.§,<§.getItemByName("Container_Popup");
         if(this.§,<§.container)
         {
            this.§,<§.container.§^Y§(this);
         }
         this.§`#§ = true;
         mClip.dispatchEvent(new §%n§(§%n§.§<6§,this));
      }
      
      public function get §=g§() : int
      {
         return this.§8Z§;
      }
      
      public function set §=g§(param1:int) : void
      {
         this.§8Z§ = param1;
      }
   }
}
