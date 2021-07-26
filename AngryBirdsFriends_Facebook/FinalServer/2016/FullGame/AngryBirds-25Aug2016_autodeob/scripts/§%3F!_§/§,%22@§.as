package §?!_§
{
   import §6#O§.§3?§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §,"@§ extends §3?§
   {
       
      
      private var §2#M§:MovieClip;
      
      public function §,"@§()
      {
         super();
         this.§2#M§ = new §@`§.§4!i§("SendTypeItemRendererAsset")();
         addChild(this.§2#M§);
         this.§2#M§.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§8#`§);
         addEventListener(MouseEvent.ROLL_OUT,this.§-"U§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.§2#M§.gotoAndStop(1);
         if(data)
         {
            this.§2#M§.txtLabel.text = this.country.name;
         }
      }
      
      private function §8#`§(param1:MouseEvent) : void
      {
         this.§2#M§.gotoAndStop(2);
         this.§2#M§.txtLabel.text = this.country.name;
      }
      
      private function §-"U§(param1:MouseEvent) : void
      {
         this.§2#M§.gotoAndStop(1);
         this.§2#M§.txtLabel.text = this.country.name;
      }
      
      public function get country() : §,$!§
      {
         if(!data)
         {
            return null;
         }
         return §,$!§(data);
      }
   }
}
