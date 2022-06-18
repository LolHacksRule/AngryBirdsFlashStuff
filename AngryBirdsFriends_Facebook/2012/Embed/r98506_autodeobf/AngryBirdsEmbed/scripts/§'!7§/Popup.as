package §'!7§
{
   import §+n§.§&+§;
   import §3'§.§>!F§;
   import §74§.§1!C§;
   import §74§.ColorFadeLayerEvent;
   import §[R§.§5h§;
   import §`t§.§^?§;
   
   public class Popup extends §>!F§
   {
      
      public static const §&O§:int = 0;
      
      public static const §3&§:int = 1;
      
      public static const §!p§:int = 2;
       
      
      protected const §,s§:Number = 0.25;
      
      protected var §-t§:§1!C§;
      
      protected var §#[§:§5h§;
      
      protected var §"k§:Boolean = false;
      
      private var §?]§:int = 0;
      
      private var §>M§:Boolean = false;
      
      public function Popup(param1:XML, param2:§5h§)
      {
         super(param1,param2.container);
         this.§-t§ = new §1!C§(0,0,0,0);
         param2.container.§<]§(this);
         this.§#[§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>M§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §^?§.pause();
         this.§>M§ = true;
         mClip.addChildAt(this.§-t§,0);
         if(param1)
         {
            this.§-t§.§>w§(0.7,this.§,s§);
         }
         else
         {
            this.§-t§.§?!5§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§-t§ == null)
         {
            this.close();
            return;
         }
         this.§-t§.§>w§(0,this.§,s§);
         this.§-t§.addEventListener(ColorFadeLayerEvent.§#!F§,this.§80§);
      }
      
      protected function §80§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§>M§ = false;
         if(this.§"k§)
         {
            return;
         }
         if(this.§-t§)
         {
            this.§-t§.removeEventListener(ColorFadeLayerEvent.§#!F§,this.§80§);
            mClip.removeChild(this.§-t§);
            this.§-t§.clean();
            this.§-t§ = null;
         }
         var _loc1_:§&+§ = this.§#[§.getItemByName("Container_Popup");
         if(this.§#[§.container)
         {
            this.§#[§.container.§-!H§(this);
         }
         this.§"k§ = true;
         §^?§.resume();
         mClip.dispatchEvent(new §`^§(§`^§.§>y§,this));
      }
      
      public function get § e§() : int
      {
         return this.§?]§;
      }
      
      public function set § e§(param1:int) : void
      {
         this.§?]§ = param1;
      }
   }
}
