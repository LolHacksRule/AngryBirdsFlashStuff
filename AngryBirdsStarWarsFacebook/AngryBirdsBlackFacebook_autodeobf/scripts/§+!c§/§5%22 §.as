package §+!c§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §5" §
   {
      
      public static const § "!§:String = "normal";
      
      public static const §;"s§:String = "infinite";
      
      private static const §+"G§:int = 23;
      
      private static const §!"B§:int = 6;
       
      
      private var §]E§:int;
      
      private var §;!m§:Boolean;
      
      private var §9">§:String;
      
      protected var §9!D§:MovieClip;
      
      protected var §3#+§:TextField;
      
      protected var §%#!§:MovieClip;
      
      public function §5" §(param1:MovieClip)
      {
         super();
         this.§9!D§ = param1;
         this.§9!D§.mouseChildren = false;
         this.§9!D§.mouseEnabled = false;
         this.§3#+§ = this.§9!D§.counter;
         this.§3#+§.autoSize = TextFieldAutoSize.CENTER;
         this.§%#!§ = this.§9!D§.bg;
         this.§]E§ = 0;
         this.§;!m§ = false;
         this.refresh();
      }
      
      public function set count(param1:int) : void
      {
         this.§]E§ = param1;
         this.refresh();
      }
      
      public function get count() : int
      {
         return this.§]E§;
      }
      
      public function set § "r§(param1:Boolean) : void
      {
         this.§;!m§ = param1;
         this.refresh();
      }
      
      public function get § "r§() : Boolean
      {
         return this.§;!m§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§9!D§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§9!D§.visible;
      }
      
      protected function refresh() : void
      {
         if(this.§;!m§)
         {
            this.§3#+§.text = "";
            this.§9!D§.gotoAndStop(§;"s§);
            this.§9">§ = §;"s§;
         }
         else
         {
            this.§3#+§.text = this.§]E§.toString();
            this.§9!D§.gotoAndStop(§ "!§);
            this.§9">§ = § "!§;
         }
         this.§24§();
      }
      
      protected function §24§() : void
      {
         var _loc1_:Number = 0;
         if(this.§9">§ == § "!§)
         {
            _loc1_ = this.§3#+§.textWidth + 2 * §!"B§;
         }
         else
         {
            _loc1_ = §+"G§;
         }
         this.§%#!§.width = _loc1_ < §+"G§ ? Number(§+"G§) : Number(_loc1_);
      }
   }
}
