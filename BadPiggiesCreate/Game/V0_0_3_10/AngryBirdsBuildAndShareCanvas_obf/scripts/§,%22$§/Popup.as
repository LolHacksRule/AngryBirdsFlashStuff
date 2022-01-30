package §,"$§
{
   import §0!d§.§>!4§;
   import §1U§.§"!V§;
   import §4!t§.§=p§;
   import §<8§.§'X§;
   import §]!X§.§?7§;
   import §]!X§.ColorFadeLayerEvent;
   
   public class Popup extends §>!4§
   {
      
      public static const §,9§:int = 0;
      
      public static const §[!n§:int = 1;
      
      public static const §&J§:int = 2;
       
      
      protected const §!"5§:Number = 0.25;
      
      protected var §`H§:§?7§;
      
      protected var §?>§:§=p§;
      
      protected var §7o§:Boolean = false;
      
      private var §-!§:int = 0;
      
      private var §=8§:Boolean = false;
      
      public function Popup(param1:XML, param2:§=p§)
      {
         super(param1,param2.container);
         this.§`H§ = new §?7§(0,0,0,0);
         param2.container.§2!%§(this);
         this.§?>§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§=8§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §"!V§.pause();
         this.§=8§ = true;
         mClip.addChildAt(this.§`H§,0);
         if(param1)
         {
            this.§`H§.§%H§(0.7,this.§!"5§);
         }
         else
         {
            this.§`H§.§8s§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§`H§ == null)
         {
            this.close();
            return;
         }
         this.§`H§.§%H§(0,this.§!"5§);
         this.§`H§.addEventListener(ColorFadeLayerEvent.§]"&§,this.§,!P§);
      }
      
      protected function §,!P§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§=8§ = false;
         if(this.§7o§)
         {
            return;
         }
         if(this.§`H§)
         {
            this.§`H§.removeEventListener(ColorFadeLayerEvent.§]"&§,this.§,!P§);
            mClip.removeChild(this.§`H§);
            this.§`H§.clean();
            this.§`H§ = null;
         }
         var _loc1_:§'X§ = this.§?>§.getItemByName("Container_Popup");
         if(this.§?>§.container)
         {
            this.§?>§.container.removeComponent(this);
         }
         this.§7o§ = true;
         §"!V§.resume();
         mClip.dispatchEvent(new §8!x§(§8!x§.§=!#§,this));
      }
      
      public function get §&!<§() : int
      {
         return this.§-!§;
      }
      
      public function set §&!<§(param1:int) : void
      {
         this.§-!§ = param1;
      }
   }
}
