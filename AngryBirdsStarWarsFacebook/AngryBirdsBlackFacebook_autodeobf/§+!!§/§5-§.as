package §+!!§
{
   import §,!,§.§0!d§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §5-§ extends §0!d§
   {
       
      
      private var mAsset:MovieClip;
      
      public function §5-§()
      {
         super();
         this.mAsset = new §5_§.§`"G§("SendTypeItemRendererAsset")();
         addChild(this.mAsset);
         this.mAsset.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§!!§);
         addEventListener(MouseEvent.ROLL_OUT,this.§3"§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.mAsset.gotoAndStop(1);
         if(data)
         {
            this.mAsset.txtLabel.text = this.§>"`§.§=§;
         }
      }
      
      private function §!!§(param1:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(2);
         this.mAsset.txtLabel.text = this.§>"`§.§=§;
      }
      
      private function §3"§(param1:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(1);
         this.mAsset.txtLabel.text = this.§>"`§.§=§;
      }
      
      public function get §>"`§() : §<"`§
      {
         if(!data)
         {
            return null;
         }
         return §<"`§(data);
      }
   }
}
