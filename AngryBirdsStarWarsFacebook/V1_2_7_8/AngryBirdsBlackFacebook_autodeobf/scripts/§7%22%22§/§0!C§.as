package §7""§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §0!C§
   {
      
      public static const §]!`§:String = "normal";
      
      public static const §<!i§:String = "infinite";
      
      private static const §1"Y§:int = 23;
      
      private static const §["o§:int = 6;
       
      
      private var §`"y§:int;
      
      private var §3"k§:Boolean;
      
      private var §06§:String;
      
      protected var §"#7§:MovieClip;
      
      protected var §function§:TextField;
      
      protected var §!!X§:MovieClip;
      
      public function §0!C§(param1:MovieClip)
      {
         super();
         this.§"#7§ = param1;
         this.§"#7§.mouseChildren = false;
         this.§"#7§.mouseEnabled = false;
         this.§function§ = this.§"#7§.counter;
         this.§function§.autoSize = TextFieldAutoSize.CENTER;
         this.§!!X§ = this.§"#7§.bg;
         this.§`"y§ = 0;
         this.§3"k§ = false;
         this.refresh();
      }
      
      public function set count(param1:int) : void
      {
         this.§`"y§ = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§`"y§;
      }
      
      public function set §1"r§(param1:Boolean) : void
      {
         this.§3"k§ = param1;
         this.refresh();
      }
      
      public function get §1"r§() : Boolean
      {
         return this.§3"k§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§"#7§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§"#7§.visible;
      }
      
      protected function refresh() : void
      {
         if(this.§3"k§)
         {
            this.§function§.text = "";
            this.§"#7§.gotoAndStop(§<!i§);
            this.§06§ = §<!i§;
         }
         else
         {
            this.§function§.text = this.§`"y§.toString();
            this.§"#7§.gotoAndStop(§]!`§);
            this.§06§ = §]!`§;
         }
         this.§%M§();
      }
      
      protected function §%M§() : void
      {
         var _loc1_:Number = 0;
         if(this.§06§ == §]!`§)
         {
            _loc1_ = this.§function§.textWidth + 2 * §["o§;
         }
         else
         {
            _loc1_ = §1"Y§;
         }
         this.§!!X§.width = _loc1_ < §1"Y§ ? Number(§1"Y§) : Number(_loc1_);
      }
   }
}
