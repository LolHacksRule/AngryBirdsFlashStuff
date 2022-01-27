package §`"]§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §?"f§
   {
      
      public static const §"!R§:String = "normal";
      
      public static const §"7§:String = "infinite";
      
      private static const §4'§:int = 23;
      
      private static const §@!q§:int = 6;
       
      
      private var §=!f§:int;
      
      private var §2u§:Boolean;
      
      private var §@"T§:String;
      
      protected var §="L§:MovieClip;
      
      protected var §<!I§:TextField;
      
      protected var §2"O§:MovieClip;
      
      public function §?"f§(param1:MovieClip)
      {
         super();
         this.§="L§ = param1;
         this.§="L§.mouseChildren = false;
         this.§="L§.mouseEnabled = false;
         this.§<!I§ = this.§="L§.counter;
         this.§<!I§.autoSize = TextFieldAutoSize.CENTER;
         this.§2"O§ = this.§="L§.bg;
         this.§=!f§ = 0;
         this.§2u§ = false;
         this.refresh();
      }
      
      public function set count(param1:int) : void
      {
         this.§=!f§ = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§=!f§;
      }
      
      public function set § var§(param1:Boolean) : void
      {
         this.§2u§ = param1;
         this.refresh();
      }
      
      public function get § var§() : Boolean
      {
         return this.§2u§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§="L§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§="L§.visible;
      }
      
      protected function refresh() : void
      {
         if(this.§2u§)
         {
            this.§<!I§.text = "";
            this.§="L§.gotoAndStop(§"7§);
            this.§@"T§ = §"7§;
         }
         else
         {
            this.§<!I§.text = this.§=!f§.toString();
            this.§="L§.gotoAndStop(§"!R§);
            this.§@"T§ = §"!R§;
         }
         this.§,!^§();
      }
      
      protected function §,!^§() : void
      {
         var _loc1_:Number = 0;
         if(this.§@"T§ == §"!R§)
         {
            _loc1_ = this.§<!I§.textWidth + 2 * §@!q§;
         }
         else
         {
            _loc1_ = §4'§;
         }
         this.§2"O§.width = _loc1_ < §4'§ ? Number(§4'§) : Number(_loc1_);
      }
   }
}
