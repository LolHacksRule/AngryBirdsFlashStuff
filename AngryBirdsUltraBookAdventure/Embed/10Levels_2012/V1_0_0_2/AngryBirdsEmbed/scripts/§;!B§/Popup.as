package §;!B§
{
   import §-!F§.§&!A§;
   import §5H§.§[k§;
   import §87§.§<8§;
   import §87§.ColorFadeLayerEvent;
   import §<!G§.§^3§;
   import §class§.§0r§;
   
   public class Popup extends §0r§
   {
       
      
      protected const §?o§:Number = 0.25;
      
      protected var §<!4§:§<8§;
      
      protected var §8l§:§^3§;
      
      protected var §%!?§:Boolean = false;
      
      public function Popup(param1:XML, param2:§^3§)
      {
         super(param1,param2.container);
         this.§<!4§ = new §<8§(0,0,0,0);
         param2.container.§5'§(this);
         this.§8l§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §[k§.pause();
         mClip.addChildAt(this.§<!4§,0);
         if(param1)
         {
            this.§<!4§.§4J§(0.7,this.§?o§);
         }
         else
         {
            this.§<!4§.§?n§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§<!4§ == null)
         {
            this.close();
            return;
         }
         this.§<!4§.§4J§(0,this.§?o§);
         this.§<!4§.addEventListener(ColorFadeLayerEvent.§9a§,this.§''§);
      }
      
      protected function §''§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§%!?§)
         {
            return;
         }
         if(this.§<!4§)
         {
            this.§<!4§.removeEventListener(ColorFadeLayerEvent.§9a§,this.§''§);
            mClip.removeChild(this.§<!4§);
            this.§<!4§.clean();
            this.§<!4§ = null;
         }
         var _loc1_:§&!A§ = this.§8l§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§8l§.container)
         {
            this.§8l§.container.§!E§(this);
         }
         this.§%!?§ = true;
         §[k§.resume();
         mClip.dispatchEvent(new §7$§(§7$§.§^O§,this));
      }
   }
}
