package § N§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §+l§ extends Sprite
   {
      
      private static const §2!a§:int = 1000;
       
      
      private var §&5§:TextField;
      
      private var §[I§:Boolean;
      
      private var §#@§:int = 0;
      
      private var §9p§:Number = 0;
      
      private var §0W§:Array;
      
      public function §+l§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§[I§ = param1;
         if(param1)
         {
            this.§&5§ = new TextField();
            this.§&5§.text = "...";
            this.§&5§.textColor = 16711680;
            this.§&5§.selectable = false;
            this.§&5§.height = 40;
            this.§&5§.width = 150;
            this.§&5§.mouseEnabled = false;
            addChild(this.§&5§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§0W§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§#@§;
         this.§9p§ += param1;
         if(this.§9p§ >= §2!a§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§9p§ == 0 || this.§#@§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§9p§ * this.§#@§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§0W§.length)
         {
            if(this.§0W§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§0W§[_loc4_][0] + " = " + Math.round(this.§0W§[_loc4_][2] / this.§0W§[_loc4_][1]);
            }
            this.§0W§[_loc4_][1] = 0;
            this.§0W§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§&5§.text = _loc3_;
         this.§&5§.mouseEnabled = false;
         this.§#@§ = 0;
         this.§9p§ = 0;
      }
      
      public function §'X§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§0W§.length)
         {
            if(this.§0W§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§0W§[this.§0W§.length] = new Array();
            _loc3_ = this.§0W§.length - 1;
            this.§0W§[_loc3_][0] = param1;
            this.§0W§[_loc3_][1] = 0;
            this.§0W§[_loc3_][2] = 0;
         }
         this.§0W§[_loc3_][1] += 1;
         this.§0W§[_loc3_][2] += param2;
      }
   }
}
