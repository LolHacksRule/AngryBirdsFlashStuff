package §?!'§
{
   import §&!<§.§>!V§;
   import §,P§.§'_§;
   import §<!]§.ColorFadeLayerEvent;
   import §<!]§.§]!v§;
   import §=!7§.§>!;§;
   import §@y§.§0"4§;
   
   public class Popup extends §>!;§
   {
      
      public static const §5w§:int = 0;
      
      public static const §-"=§:int = 1;
      
      public static const §=u§:int = 2;
       
      
      protected const §3§:Number = 0.25;
      
      protected var §<E§:§]!v§;
      
      protected var §-^§:§>!V§;
      
      protected var §2L§:Boolean = false;
      
      protected var §3C§:Number = 0.7;
      
      private var §8"4§:int = 0;
      
      private var §+!f§:Boolean = false;
      
      public function Popup(param1:XML, param2:§>!V§)
      {
         super(param1,param2.container);
         this.§<E§ = new §]!v§(0,0,0,0);
         param2.container.§#i§(this);
         this.§-^§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§+!f§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §'_§.pause();
         this.§+!f§ = true;
         mClip.addChildAt(this.§<E§,0);
         if(param1)
         {
            this.§<E§.§[!r§(this.§3C§,this.§3§);
         }
         else
         {
            this.§<E§.§0"+§(this.§3C§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§<E§ == null)
         {
            this.close();
            return;
         }
         this.§<E§.§[!r§(0,this.§3§);
         this.§<E§.addEventListener(ColorFadeLayerEvent.§;x§,this.§9!>§);
      }
      
      protected function §9!>§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§+!f§ = false;
         if(this.§2L§)
         {
            return;
         }
         if(this.§<E§)
         {
            this.§<E§.removeEventListener(ColorFadeLayerEvent.§;x§,this.§9!>§);
            mClip.removeChild(this.§<E§);
            this.§<E§.clean();
            this.§<E§ = null;
         }
         var _loc1_:§0"4§ = this.§-^§.getItemByName("Container_Popup");
         if(this.§-^§.container)
         {
            this.§-^§.container.removeComponent(this);
         }
         this.§2L§ = true;
         §'_§.resume();
         mClip.dispatchEvent(new §`![§(§`![§.§;!U§,this));
      }
      
      public function get §9=§() : int
      {
         return this.§8"4§;
      }
      
      public function set §9=§(param1:int) : void
      {
         this.§8"4§ = param1;
      }
   }
}
