package §;!3§
{
   import §8§.§"!E§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §[k§ extends §"!E§
   {
       
      
      private var mAsset:MovieClip;
      
      public function §[k§()
      {
         super();
         this.mAsset = new §%!Z§.§;",§("SendTypeItemRendererAsset")();
         addChild(this.mAsset);
         this.mAsset.stop();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§>!k§);
         addEventListener(MouseEvent.ROLL_OUT,this.§3!k§);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.mAsset.gotoAndStop(1);
         if(data)
         {
            this.mAsset.txtLabel.text = this.§8!C§.§0G§;
         }
      }
      
      private function §>!k§(param1:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(2);
         this.mAsset.txtLabel.text = this.§8!C§.§0G§;
      }
      
      private function §3!k§(param1:MouseEvent) : void
      {
         this.mAsset.gotoAndStop(1);
         this.mAsset.txtLabel.text = this.§8!C§.§0G§;
      }
      
      public function get §8!C§() : §%"+§
      {
         if(!data)
         {
            return null;
         }
         return §%"+§(data);
      }
   }
}
