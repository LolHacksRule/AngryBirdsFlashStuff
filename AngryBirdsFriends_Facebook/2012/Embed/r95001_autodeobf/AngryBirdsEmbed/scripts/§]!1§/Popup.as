package §]!1§
{
   import §"!F§.ColorFadeLayerEvent;
   import §"!F§.§^$§;
   import §0u§.§^S§;
   import §10§.§#!4§;
   import §4-§.§-%§;
   import §6!,§.§[H§;
   
   public class Popup extends §-%§
   {
       
      
      protected const §7!8§:Number = 0.25;
      
      protected var §2!C§:§^$§;
      
      protected var §+!$§:§[H§;
      
      protected var §[!3§:Boolean = false;
      
      public function Popup(param1:XML, param2:§[H§)
      {
         super(param1,param2.container);
         this.§2!C§ = new §^$§(0,0,0,0);
         param2.container.§?v§(this);
         this.§+!$§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §#!4§.pause();
         mClip.addChildAt(this.§2!C§,0);
         if(param1)
         {
            this.§2!C§.§3t§(0.7,this.§7!8§);
         }
         else
         {
            this.§2!C§.§`>§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§2!C§ == null)
         {
            this.close();
            return;
         }
         this.§2!C§.§3t§(0,this.§7!8§);
         this.§2!C§.addEventListener(ColorFadeLayerEvent.§3M§,this.§0$§);
      }
      
      protected function §0$§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§[!3§)
         {
            return;
         }
         if(this.§2!C§)
         {
            this.§2!C§.removeEventListener(ColorFadeLayerEvent.§3M§,this.§0$§);
            mClip.removeChild(this.§2!C§);
            this.§2!C§.clean();
            this.§2!C§ = null;
         }
         var _loc1_:§^S§ = this.§+!$§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§+!$§.container)
         {
            this.§+!$§.container.§+X§(this);
         }
         this.§[!3§ = true;
         §#!4§.resume();
         mClip.dispatchEvent(new §"!A§(§"!A§.§>j§,this));
      }
   }
}
