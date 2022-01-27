package §"1§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §%!$§ extends Sprite
   {
      
      private static const §;!5§:int = 1000;
       
      
      private var §'o§:TextField;
      
      private var §3,§:Boolean;
      
      private var § `§:int = 0;
      
      private var §4!C§:Number = 0;
      
      private var §;k§:Array;
      
      public function §%!$§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§3,§ = param1;
         if(param1)
         {
            this.§'o§ = new TextField();
            this.§'o§.text = "...";
            this.§'o§.textColor = 16711680;
            this.§'o§.selectable = false;
            this.§'o§.height = 40;
            this.§'o§.width = 150;
            this.§'o§.mouseEnabled = false;
            addChild(this.§'o§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§;k§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§ `§;
         this.§4!C§ += param1;
         if(this.§4!C§ >= §;!5§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§4!C§ == 0 || this.§ `§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§4!C§ * this.§ `§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§;k§.length)
         {
            if(this.§;k§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§;k§[_loc4_][0] + " = " + Math.round(this.§;k§[_loc4_][2] / this.§;k§[_loc4_][1]);
            }
            this.§;k§[_loc4_][1] = 0;
            this.§;k§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§'o§.text = _loc3_;
         this.§'o§.mouseEnabled = false;
         this.§ `§ = 0;
         this.§4!C§ = 0;
      }
      
      public function §`!'§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§;k§.length)
         {
            if(this.§;k§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§;k§[this.§;k§.length] = new Array();
            _loc3_ = this.§;k§.length - 1;
            this.§;k§[_loc3_][0] = param1;
            this.§;k§[_loc3_][1] = 0;
            this.§;k§[_loc3_][2] = 0;
         }
         this.§;k§[_loc3_][1] += 1;
         this.§;k§[_loc3_][2] += param2;
      }
   }
}
