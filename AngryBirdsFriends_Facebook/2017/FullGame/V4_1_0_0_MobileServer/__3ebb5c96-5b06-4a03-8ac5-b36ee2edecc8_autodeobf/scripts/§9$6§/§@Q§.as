package §9$6§
{
   import §%"<§.§9@§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §@Q§ extends §9@§
   {
       
      
      private var §4!L§:MovieClip;
      
      public function §@Q§()
      {
         super();
         this.§4!L§ = new §+$#§.§["`§("SendTypeItemRendererAsset")();
         addChild(this.§4!L§);
         this.§4!L§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§'f§);
         addEventListener(MouseEvent.ROLL_OUT,this.§!"F§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§4!L§.gotoAndStop(1);
         if(data)
         {
            this.§4!L§.txtLabel.text = this.country.name;
         }
      }
      
      private function §'f§(param1:MouseEvent) : void
      {
         this.§4!L§.gotoAndStop(2);
         this.§4!L§.txtLabel.text = this.country.name;
      }
      
      private function §!"F§(param1:MouseEvent) : void
      {
         this.§4!L§.gotoAndStop(1);
         this.§4!L§.txtLabel.text = this.country.name;
      }
      
      public function get country() : §5#&§
      {
         if(!data)
         {
            return null;
         }
         return §5#&§(data);
      }
   }
}
