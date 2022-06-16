package §00§
{
   import §!#B§.§;+§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §3# § extends §;+§
   {
       
      
      private var §##x§:MovieClip;
      
      public function §3# §()
      {
         super();
         this.§##x§ = new §!"f§.§##?§("SendTypeItemRendererAsset")();
         addChild(this.§##x§);
         this.§##x§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§`#0§);
         addEventListener(MouseEvent.ROLL_OUT,this.§ "<§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§##x§.gotoAndStop(1);
         if(data)
         {
            this.§##x§.txtLabel.text = this.country.name;
         }
      }
      
      private function §`#0§(param1:MouseEvent) : void
      {
         this.§##x§.gotoAndStop(2);
         this.§##x§.txtLabel.text = this.country.name;
      }
      
      private function § "<§(param1:MouseEvent) : void
      {
         this.§##x§.gotoAndStop(1);
         this.§##x§.txtLabel.text = this.country.name;
      }
      
      public function get country() : §9$'§
      {
         if(!data)
         {
            return null;
         }
         return §9$'§(data);
      }
   }
}
