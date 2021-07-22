package §=!f§
{
   import §,#+§.§>!Y§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §!#R§ extends §>!Y§
   {
       
      
      private var §^#n§:MovieClip;
      
      public function §!#R§()
      {
         super();
         this.§^#n§ = new §6$A§.§1!m§("SendTypeItemRendererAsset")();
         addChild(this.§^#n§);
         this.§^#n§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§5#]§);
         addEventListener(MouseEvent.ROLL_OUT,this.§##x§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§^#n§.gotoAndStop(1);
         if(data)
         {
            this.§^#n§.txtLabel.text = this.country.name;
         }
      }
      
      private function §5#]§(param1:MouseEvent) : void
      {
         this.§^#n§.gotoAndStop(2);
         this.§^#n§.txtLabel.text = this.country.name;
      }
      
      private function §##x§(param1:MouseEvent) : void
      {
         this.§^#n§.gotoAndStop(1);
         this.§^#n§.txtLabel.text = this.country.name;
      }
      
      public function get country() : §8q§
      {
         if(!data)
         {
            return null;
         }
         return §8q§(data);
      }
   }
}
