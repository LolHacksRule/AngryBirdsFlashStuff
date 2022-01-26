package §;8§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §<!"§ extends Sprite
   {
      
      private static const § Y§:int = 1000;
       
      
      private var §0! §:TextField;
      
      private var §4o§:Boolean;
      
      private var §,T§:int = 0;
      
      private var §58§:Number = 0;
      
      private var §#e§:Array;
      
      public function §<!"§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§4o§ = param1;
         if(param1)
         {
            this.§0! § = new TextField();
            this.§0! §.text = "...";
            this.§0! §.textColor = 16711680;
            this.§0! §.selectable = false;
            this.§0! §.height = 40;
            this.§0! §.width = 150;
            this.§0! §.mouseEnabled = false;
            addChild(this.§0! §);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§#e§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§,T§;
         this.§58§ += param1;
         if(this.§58§ >= § Y§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§58§ == 0 || this.§,T§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§58§ * this.§,T§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§#e§.length)
         {
            if(this.§#e§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§#e§[_loc4_][0] + " = " + Math.round(this.§#e§[_loc4_][2] / this.§#e§[_loc4_][1]);
            }
            this.§#e§[_loc4_][1] = 0;
            this.§#e§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§0! §.text = _loc3_;
         this.§0! §.mouseEnabled = false;
         this.§,T§ = 0;
         this.§58§ = 0;
      }
      
      public function §?1§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§#e§.length)
         {
            if(this.§#e§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§#e§[this.§#e§.length] = new Array();
            _loc3_ = this.§#e§.length - 1;
            this.§#e§[_loc3_][0] = param1;
            this.§#e§[_loc3_][1] = 0;
            this.§#e§[_loc3_][2] = 0;
         }
         this.§#e§[_loc3_][1] += 1;
         this.§#e§[_loc3_][2] += param2;
      }
   }
}
