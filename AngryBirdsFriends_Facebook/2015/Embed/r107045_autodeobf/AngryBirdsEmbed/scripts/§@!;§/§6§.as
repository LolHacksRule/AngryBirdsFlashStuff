package §@!;§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6§ extends Sprite
   {
      
      private static const §%D§:int = 1000;
       
      
      private var §42§:TextField;
      
      private var §["§:Boolean;
      
      private var §#!2§:int = 0;
      
      private var §"e§:Number = 0;
      
      private var §0H§:Array;
      
      public function §6§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§["§ = param1;
         if(param1)
         {
            this.§42§ = new TextField();
            this.§42§.text = "...";
            this.§42§.textColor = 16711680;
            this.§42§.selectable = false;
            this.§42§.height = 40;
            this.§42§.width = 150;
            this.§42§.mouseEnabled = false;
            addChild(this.§42§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§0H§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§#!2§;
         this.§"e§ += param1;
         if(this.§"e§ >= §%D§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§"e§ == 0 || this.§#!2§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§"e§ * this.§#!2§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§0H§.length)
         {
            if(this.§0H§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§0H§[_loc4_][0] + " = " + Math.round(this.§0H§[_loc4_][2] / this.§0H§[_loc4_][1]);
            }
            this.§0H§[_loc4_][1] = 0;
            this.§0H§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§42§.text = _loc3_;
         this.§42§.mouseEnabled = false;
         this.§#!2§ = 0;
         this.§"e§ = 0;
      }
      
      public function §8<§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§0H§.length)
         {
            if(this.§0H§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§0H§[this.§0H§.length] = new Array();
            _loc3_ = this.§0H§.length - 1;
            this.§0H§[_loc3_][0] = param1;
            this.§0H§[_loc3_][1] = 0;
            this.§0H§[_loc3_][2] = 0;
         }
         this.§0H§[_loc3_][1] += 1;
         this.§0H§[_loc3_][2] += param2;
      }
   }
}
