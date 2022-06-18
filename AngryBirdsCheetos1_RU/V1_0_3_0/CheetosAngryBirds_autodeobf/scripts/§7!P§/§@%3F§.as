package §7!P§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §@?§ extends Sprite
   {
      
      private static const §0_§:int = 1000;
       
      
      private var §[<§:TextField;
      
      private var §[!D§:Boolean;
      
      private var §5!#§:int = 0;
      
      private var §[g§:Number = 0;
      
      private var §^e§:Array;
      
      public function §@?§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§[!D§ = param1;
         if(param1)
         {
            this.§[<§ = new TextField();
            this.§[<§.text = "...";
            this.§[<§.textColor = 16711680;
            this.§[<§.selectable = false;
            this.§[<§.height = 40;
            this.§[<§.width = 150;
            this.§[<§.mouseEnabled = false;
            addChild(this.§[<§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§^e§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§5!#§;
         this.§[g§ += param1;
         if(this.§[g§ >= §0_§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§[g§ == 0 || this.§5!#§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§[g§ * this.§5!#§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§^e§.length)
         {
            if(this.§^e§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§^e§[_loc4_][0] + " = " + Math.round(this.§^e§[_loc4_][2] / this.§^e§[_loc4_][1]);
            }
            this.§^e§[_loc4_][1] = 0;
            this.§^e§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§[<§.text = _loc3_;
         this.§[<§.mouseEnabled = false;
         this.§5!#§ = 0;
         this.§[g§ = 0;
      }
      
      public function §%!>§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^e§.length)
         {
            if(this.§^e§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§^e§[this.§^e§.length] = new Array();
            _loc3_ = this.§^e§.length - 1;
            this.§^e§[_loc3_][0] = param1;
            this.§^e§[_loc3_][1] = 0;
            this.§^e§[_loc3_][2] = 0;
         }
         this.§^e§[_loc3_][1] += 1;
         this.§^e§[_loc3_][2] += param2;
      }
   }
}
