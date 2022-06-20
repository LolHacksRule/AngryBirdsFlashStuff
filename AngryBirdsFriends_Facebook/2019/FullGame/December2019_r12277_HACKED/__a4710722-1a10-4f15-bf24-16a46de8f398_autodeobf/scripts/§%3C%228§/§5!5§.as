package §<"8§
{
   import §!#s§.§ !Q§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §5!5§ extends § !Q§
   {
       
      
      private var §7"e§:MovieClip;
      
      public function §5!5§()
      {
         super();
         this.§7"e§ = new §=@§.§9!x§("SendTypeItemRendererAsset")();
         addChild(this.§7"e§);
         this.§7"e§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§6y§);
         addEventListener(MouseEvent.ROLL_OUT,this.§?!z§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§7"e§.gotoAndStop(1);
         if(data)
         {
            this.§7"e§.txtLabel.text = this.country.name;
         }
      }
      
      private function §6y§(param1:MouseEvent) : void
      {
         this.§7"e§.gotoAndStop(2);
         this.§7"e§.txtLabel.text = this.country.name;
      }
      
      private function §?!z§(param1:MouseEvent) : void
      {
         this.§7"e§.gotoAndStop(1);
         this.§7"e§.txtLabel.text = this.country.name;
      }
      
      public function get country() : § %§
      {
         if(!data)
         {
            return null;
         }
         return § %§(data);
      }
   }
}
