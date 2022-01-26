package §_-ex§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-i8§ extends Sprite
   {
      
      private static const §_-Oz§:int = 1000;
       
      
      private var §_-Ve§:TextField;
      
      private var §_-Gz§:Boolean;
      
      private var §_-Ny§:int = 0;
      
      private var §_-pI§:Number = 0;
      
      private var §var §:Array;
      
      public function §_-i8§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-Gz§ = param1;
         if(param1)
         {
            this.§_-Ve§ = new TextField();
            this.§_-Ve§.text = "...";
            this.§_-Ve§.textColor = 16711680;
            this.§_-Ve§.selectable = false;
            this.§_-Ve§.height = 40;
            this.§_-Ve§.width = 150;
            this.§_-Ve§.mouseEnabled = false;
            addChild(this.§_-Ve§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§var § = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-Ny§;
         this.§_-pI§ += param1;
         if(this.§_-pI§ >= §_-Oz§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-pI§ == 0 || this.§_-Ny§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-pI§ * this.§_-Ny§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§var §.length)
         {
            if(this.§var §[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§var §[_loc4_][0] + " = " + Math.round(this.§var §[_loc4_][2] / this.§var §[_loc4_][1]);
            }
            this.§var §[_loc4_][1] = 0;
            this.§var §[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-Ve§.text = _loc3_;
         this.§_-Ve§.mouseEnabled = false;
         this.§_-Ny§ = 0;
         this.§_-pI§ = 0;
      }
      
      public function §_-QN§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§var §.length)
         {
            if(this.§var §[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§var §[this.§var §.length] = new Array();
            _loc3_ = this.§var §.length - 1;
            this.§var §[_loc3_][0] = param1;
            this.§var §[_loc3_][1] = 0;
            this.§var §[_loc3_][2] = 0;
         }
         this.§var §[_loc3_][1] += 1;
         this.§var §[_loc3_][2] += param2;
      }
   }
}
