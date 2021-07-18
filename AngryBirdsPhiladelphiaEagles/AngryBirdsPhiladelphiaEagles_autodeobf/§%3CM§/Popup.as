package §<M§
{
   import § !B§.§-#§;
   import § !B§.ColorFadeLayerEvent;
   import §"U§.§36§;
   import §6v§.§var §;
   import §8!B§.§#! §;
   import §]!-§.§`o§;
   
   public class Popup extends §36§
   {
      
      public static const §+!M§:int = 0;
      
      public static const §]!O§:int = 1;
      
      public static const §@!$§:int = 2;
       
      
      protected const §%5§:Number = 0.25;
      
      protected var §!>§:§-#§;
      
      protected var §%Q§:§`o§;
      
      protected var §+;§:Boolean = false;
      
      private var §]!#§:int = 0;
      
      private var §+e§:Boolean = false;
      
      public function Popup(param1:XML, param2:§`o§)
      {
         super(param1,param2.container);
         this.§!>§ = new §-#§(0,0,0,0);
         param2.container.addComponent(this);
         this.§%Q§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§+e§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §#! §.pause();
         this.§+e§ = true;
         mClip.addChildAt(this.§!>§,0);
         if(param1)
         {
            this.§!>§.fadeToAlpha(0.7,this.§%5§);
         }
         else
         {
            this.§!>§.§3!@§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§!>§ == null)
         {
            this.close();
            return;
         }
         this.§!>§.fadeToAlpha(0,this.§%5§);
         this.§!>§.addEventListener(ColorFadeLayerEvent.§3n§,this.§"!D§);
      }
      
      protected function §"!D§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§+e§ = false;
         if(this.§+;§)
         {
            return;
         }
         if(this.§!>§)
         {
            this.§!>§.removeEventListener(ColorFadeLayerEvent.§3n§,this.§"!D§);
            mClip.removeChild(this.§!>§);
            this.§!>§.clean();
            this.§!>§ = null;
         }
         var _loc1_:§var § = this.§%Q§.getItemByName("Container_Popup");
         if(this.§%Q§.container)
         {
            this.§%Q§.container.§[1§(this);
         }
         this.§+;§ = true;
         §#! §.resume();
         mClip.dispatchEvent(new §%,§(§%,§.§=a§,this));
      }
      
      public function get §3!P§() : int
      {
         return this.§]!#§;
      }
      
      public function set §3!P§(param1:int) : void
      {
         this.§]!#§ = param1;
      }
   }
}
