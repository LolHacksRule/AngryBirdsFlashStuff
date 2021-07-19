package §2v§
{
   import §'!D§.§?!h§;
   import §3!,§.§#x§;
   import §3!,§.ColorFadeLayerEvent;
   import §>M§.§#!a§;
   import §>P§.§5!§;
   import §`h§.§@!Z§;
   
   public class Popup extends §#!a§
   {
       
      
      private const each:Number = 0.25;
      
      protected var §8!H§:§#x§;
      
      protected var §7!;§:§5!§;
      
      private var §!!;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§5!§)
      {
         super(param1,param2.container);
         this.§8!H§ = new §#x§(0,0,0,0);
         param2.container.addComponent(this);
         this.§7!;§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §@!Z§.§@0§();
         if(this.§8!H§ != null)
         {
            mClip.addChildAt(this.§8!H§,0);
            if(param1)
            {
               this.§8!H§.§'H§(0.7,this.each);
            }
            else
            {
               this.§8!H§.§"!c§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§8!H§ == null)
         {
            this.close();
            return;
         }
         this.§8!H§.§'H§(0,this.each);
         this.§8!H§.addEventListener(ColorFadeLayerEvent.§79§,this.§!! §);
      }
      
      private function §!! §(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§!!;§)
         {
            return;
         }
         if(this.§8!H§)
         {
            this.§8!H§.removeEventListener(ColorFadeLayerEvent.§79§,this.§!! §);
            mClip.removeChild(this.§8!H§);
            this.§8!H§.clean();
            this.§8!H§ = null;
         }
         var _loc1_:§?!h§ = this.§7!;§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§7!;§.container)
         {
            this.§7!;§.container.removeComponent(this);
         }
         this.§!!;§ = true;
         if(§&O§.§2!,§ == false)
         {
            §@!Z§.§,R§();
         }
         mClip.dispatchEvent(new §2l§(§2l§.§[6§,this));
      }
   }
}
