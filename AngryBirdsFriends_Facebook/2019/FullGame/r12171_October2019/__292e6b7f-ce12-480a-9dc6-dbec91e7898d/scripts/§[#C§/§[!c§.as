package §[#C§
{
   import §^?§.§@"<§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §[!c§ extends §@"<§
   {
       
      
      private var §?+§:MovieClip;
      
      public function §[!c§()
      {
         super();
         this.§?+§ = new §[a§.§8#k§("SendTypeItemRendererAsset")();
         addChild(this.§?+§);
         this.§?+§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§+#z§);
         addEventListener(MouseEvent.ROLL_OUT,this.§7"r§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§?+§.gotoAndStop(1);
         if(data)
         {
            this.§?+§.txtLabel.text = this.country.name;
         }
      }
      
      private function §+#z§(param1:MouseEvent) : void
      {
         this.§?+§.gotoAndStop(2);
         this.§?+§.txtLabel.text = this.country.name;
      }
      
      private function §7"r§(param1:MouseEvent) : void
      {
         this.§?+§.gotoAndStop(1);
         this.§?+§.txtLabel.text = this.country.name;
      }
      
      public function get country() : §^$2§
      {
         if(!data)
         {
            return null;
         }
         return §^$2§(data);
      }
   }
}
