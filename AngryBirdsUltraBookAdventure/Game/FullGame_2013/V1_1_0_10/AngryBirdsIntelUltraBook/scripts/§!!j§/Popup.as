package §!!j§
{
   import §2y§.§=!o§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>!q§.ColorFadeLayerEvent;
   import §>f§.§&!G§;
   import §@!&§.§7!>§;
   
   public class Popup extends §=!o§
   {
      
      public static const §]p§:int = 0;
      
      public static const §!!D§:int = 1;
      
      public static const §[M§:int = 2;
       
      
      protected const §<K§:Number = 0.25;
      
      protected var §`!%§:§!^§;
      
      protected var §2!r§:§&!G§;
      
      protected var §1!r§:Boolean = false;
      
      protected var §9!e§:Number = 0.7;
      
      private var §2!>§:int = 0;
      
      private var §!!S§:Boolean = false;
      
      public function Popup(param1:XML, param2:§&!G§)
      {
         super(param1,param2.§^!W§);
         this.§`!%§ = new §!^§(0,0,0,0);
         param2.§^!W§.addComponent(this);
         this.§2!r§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§!!S§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §,!s§.pause();
         this.§!!S§ = true;
         mClip.addChildAt(this.§`!%§,0);
         if(param1)
         {
            this.§`!%§.§^p§(this.§9!e§,this.§<K§);
         }
         else
         {
            this.§`!%§.§!0§(this.§9!e§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§`!%§ == null)
         {
            this.close();
            return;
         }
         this.§`!%§.§^p§(0,this.§<K§);
         this.§`!%§.addEventListener(ColorFadeLayerEvent.§&G§,this.§[-§);
      }
      
      protected function §[-§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§!!S§ = false;
         if(this.§1!r§)
         {
            return;
         }
         if(this.§`!%§)
         {
            this.§`!%§.removeEventListener(ColorFadeLayerEvent.§&G§,this.§[-§);
            mClip.removeChild(this.§`!%§);
            this.§`!%§.clean();
            this.§`!%§ = null;
         }
         var _loc1_:§7!>§ = this.§2!r§.getItemByName("Container_Popup");
         if(this.§2!r§.§^!W§)
         {
            this.§2!r§.§^!W§.§=!=§(this);
         }
         this.§1!r§ = true;
         mClip.dispatchEvent(new §5!`§(§5!`§.§#V§,this));
      }
      
      public function get §4i§() : int
      {
         return this.§2!>§;
      }
      
      public function set §4i§(param1:int) : void
      {
         this.§2!>§ = param1;
      }
   }
}
