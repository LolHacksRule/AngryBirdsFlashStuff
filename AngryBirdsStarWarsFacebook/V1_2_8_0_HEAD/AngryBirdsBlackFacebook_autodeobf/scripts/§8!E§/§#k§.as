package §8!E§
{
   import §+D§.§ #^§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §#k§
   {
       
      
      protected var §=#=§:§ #^§;
      
      protected var §?;§:MovieClip;
      
      protected var §=#F§:TextField;
      
      public function §#k§(param1:§ #^§)
      {
         super();
         this.init(param1);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§=#=§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§=#=§.visible;
      }
      
      protected function init(param1:§ #^§) : void
      {
         this.§=#=§ = param1;
         this.§?;§ = MovieClip(this.§=#=§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
         this.§=#F§ = TextField(this.§=#=§.getItemByName("TextField_EaglePercentage").mClip.text);
         this.updateScore(0);
         this.§="r§(0);
      }
      
      public function dispose() : void
      {
      }
      
      public function updateScore(param1:int) : void
      {
         this.§?;§.scaleX = param1 / 100;
      }
      
      public function §="r§(param1:int) : void
      {
         this.§=#F§.text = int(param1) + "%";
      }
   }
}
