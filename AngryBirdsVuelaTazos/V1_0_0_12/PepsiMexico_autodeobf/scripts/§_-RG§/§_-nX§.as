package §_-RG§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-nX§ extends Sprite
   {
      
      private static const §_-OP§:int = 1000;
       
      
      private var §_-Qe§:TextField;
      
      private var §_-YO§:Boolean;
      
      private var §_-Ny§:int = 0;
      
      private var §_-Zb§:Number = 0;
      
      private var §_-cE§:Array;
      
      public function §_-nX§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-YO§ = param1;
         if(param1)
         {
            this.§_-Qe§ = new TextField();
            this.§_-Qe§.text = "...";
            this.§_-Qe§.textColor = 16711680;
            this.§_-Qe§.selectable = false;
            this.§_-Qe§.height = 40;
            this.§_-Qe§.width = 150;
            this.§_-Qe§.mouseEnabled = false;
            addChild(this.§_-Qe§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-cE§ = new Array();
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-Ny§;
         this.§_-Zb§ += param1;
         if(this.§_-Zb§ >= §_-OP§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-Zb§ == 0 || this.§_-Ny§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-Zb§ * this.§_-Ny§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-cE§.length)
         {
            if(this.§_-cE§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-cE§[_loc4_][0] + " = " + Math.round(this.§_-cE§[_loc4_][2] / this.§_-cE§[_loc4_][1]);
            }
            this.§_-cE§[_loc4_][1] = 0;
            this.§_-cE§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-Qe§.text = _loc3_;
         this.§_-Ny§ = 0;
         this.§_-Zb§ = 0;
      }
      
      public function §_-Lj§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-cE§.length)
         {
            if(this.§_-cE§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-cE§[this.§_-cE§.length] = new Array();
            _loc3_ = this.§_-cE§.length - 1;
            this.§_-cE§[_loc3_][0] = param1;
            this.§_-cE§[_loc3_][1] = 0;
            this.§_-cE§[_loc3_][2] = 0;
         }
         this.§_-cE§[_loc3_][1] += 1;
         this.§_-cE§[_loc3_][2] += param2;
      }
   }
}
