package §!4§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §7d§ extends Sprite
   {
      
      private static const §!!;§:int = 1000;
       
      
      private var §[k§:TextField;
      
      private var §'!=§:Boolean;
      
      private var § null§:int = 0;
      
      private var §]!T§:Number = 0;
      
      private var §'4§:Array;
      
      public function §7d§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§'!=§ = param1;
         if(param1)
         {
            this.§[k§ = new TextField();
            this.§[k§.text = "...";
            this.§[k§.textColor = 16711680;
            this.§[k§.selectable = false;
            this.§[k§.height = 40;
            this.§[k§.width = 150;
            this.§[k§.mouseEnabled = false;
            addChild(this.§[k§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§'4§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§ null§;
         this.§]!T§ += param1;
         if(this.§]!T§ >= §!!;§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§]!T§ == 0 || this.§ null§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§]!T§ * this.§ null§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§'4§.length)
         {
            if(this.§'4§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§'4§[_loc4_][0] + " = " + Math.round(this.§'4§[_loc4_][2] / this.§'4§[_loc4_][1]);
            }
            this.§'4§[_loc4_][1] = 0;
            this.§'4§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§[k§.text = _loc3_;
         this.§[k§.mouseEnabled = false;
         this.§ null§ = 0;
         this.§]!T§ = 0;
      }
      
      public function §0v§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§'4§.length)
         {
            if(this.§'4§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§'4§[this.§'4§.length] = new Array();
            _loc3_ = this.§'4§.length - 1;
            this.§'4§[_loc3_][0] = param1;
            this.§'4§[_loc3_][1] = 0;
            this.§'4§[_loc3_][2] = 0;
         }
         this.§'4§[_loc3_][1] += 1;
         this.§'4§[_loc3_][2] += param2;
      }
   }
}
