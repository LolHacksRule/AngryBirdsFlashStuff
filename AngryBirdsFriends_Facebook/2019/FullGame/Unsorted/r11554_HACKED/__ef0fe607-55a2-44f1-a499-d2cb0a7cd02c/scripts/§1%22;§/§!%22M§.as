package §1";§
{
   import §#a§.§<#h§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §!"M§ extends §<#h§
   {
       
      
      private var §3"§:MovieClip;
      
      public function §!"M§()
      {
         super();
         this.§3"§ = new §2"O§.§`>§("SendTypeItemRendererAsset")();
         addChild(this.§3"§);
         this.§3"§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§%$A§);
         addEventListener(MouseEvent.ROLL_OUT,this.§`"U§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§3"§.gotoAndStop(1);
         if(data)
         {
            this.§3"§.txtLabel.text = this.country.name;
         }
      }
      
      private function §%$A§(param1:MouseEvent) : void
      {
         this.§3"§.gotoAndStop(2);
         this.§3"§.txtLabel.text = this.country.name;
      }
      
      private function §`"U§(param1:MouseEvent) : void
      {
         this.§3"§.gotoAndStop(1);
         this.§3"§.txtLabel.text = this.country.name;
      }
      
      public function get country() : §^a§
      {
         if(!data)
         {
            return null;
         }
         return §^a§(data);
      }
   }
}
