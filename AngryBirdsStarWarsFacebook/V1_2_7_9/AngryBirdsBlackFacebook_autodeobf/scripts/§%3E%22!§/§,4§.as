package §>"!§
{
   import §9!&§.§`-§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §,4§ extends §`-§
   {
       
      
      private var mAsset:MovieClip;
      
      public function §,4§()
      {
         super();
         this.mAsset = new §5"]§.§4!K§("SendTypeItemRendererAsset")();
         addChild(this.mAsset);
         this.mAsset.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§[!,§);
         addEventListener(MouseEvent.ROLL_OUT,this.§]b§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.mAsset.gotoAndStop(1);
         if(data)
         {
            this.mAsset.txtLabel.text = this.§67§.§4R§;
         }
      }
      
      private function §[!,§(param1:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(2);
         this.mAsset.txtLabel.text = this.§67§.§4R§;
      }
      
      private function §]b§(param1:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(1);
         this.mAsset.txtLabel.text = this.§67§.§4R§;
      }
      
      public function get §67§() : §%"F§
      {
         if(!data)
         {
            return null;
         }
         return §%"F§(data);
      }
   }
}
