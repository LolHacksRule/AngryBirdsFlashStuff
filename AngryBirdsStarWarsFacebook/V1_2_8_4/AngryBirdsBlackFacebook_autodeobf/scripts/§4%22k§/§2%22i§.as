package §4"k§
{
   import §=Z§.§@!8§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §2"i§
   {
       
      
      protected var §3!m§:§@!8§;
      
      protected var § 8§:MovieClip;
      
      protected var §="$§:TextField;
      
      public function §2"i§(param1:§@!8§)
      {
         super();
         this.init(param1);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§3!m§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§3!m§.visible;
      }
      
      protected function init(param1:§@!8§) : void
      {
         this.§3!m§ = param1;
         this.§ 8§ = MovieClip(this.§3!m§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
         this.§="$§ = TextField(this.§3!m§.getItemByName("TextField_EaglePercentage").mClip.text);
         this.updateScore(0);
         this.§1"w§(0);
      }
      
      public function dispose() : void
      {
      }
      
      public function updateScore(param1:int) : void
      {
         this.§ 8§.scaleX = param1 / 100;
      }
      
      public function §1"w§(param1:int) : void
      {
         this.§="$§.text = int(param1) + "%";
      }
   }
}
