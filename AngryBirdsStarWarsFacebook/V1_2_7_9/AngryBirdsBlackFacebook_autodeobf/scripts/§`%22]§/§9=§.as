package §`"]§
{
   import §""d§.§,m§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §9=§
   {
       
      
      protected var §=5§:§,m§;
      
      protected var §77§:MovieClip;
      
      protected var §10§:TextField;
      
      public function §9=§(param1:§,m§)
      {
         super();
         this.init(param1);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§=5§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§=5§.visible;
      }
      
      protected function init(param1:§,m§) : void
      {
         this.§=5§ = param1;
         this.§77§ = MovieClip(this.§=5§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
         this.§10§ = TextField(this.§=5§.getItemByName("TextField_EaglePercentage").mClip.text);
         this.updateScore(0);
         this.§4`§(0);
      }
      
      public function dispose() : void
      {
      }
      
      public function updateScore(param1:int) : void
      {
         this.§77§.scaleX = param1 / 100;
      }
      
      public function §4`§(param1:int) : void
      {
         this.§10§.text = int(param1) + "%";
      }
   }
}
