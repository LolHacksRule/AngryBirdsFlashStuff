package §-!6§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §]![§ extends Sprite
   {
      
      private static const §,g§:int = 1000;
       
      
      private var §4=§:TextField;
      
      private var §&!G§:Boolean;
      
      private var §0! §:int = 0;
      
      private var §%!M§:Number = 0;
      
      private var §%f§:Array;
      
      public function §]![§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§&!G§ = param1;
         if(param1)
         {
            this.§4=§ = new TextField();
            this.§4=§.text = "...";
            this.§4=§.textColor = 16711680;
            this.§4=§.selectable = false;
            this.§4=§.height = 40;
            this.§4=§.width = 150;
            this.§4=§.mouseEnabled = false;
            addChild(this.§4=§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§%f§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§0! §;
         this.§%!M§ += param1;
         if(this.§%!M§ >= §,g§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§%!M§ == 0 || this.§0! § == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§%!M§ * this.§0! §;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§%f§.length)
         {
            if(this.§%f§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§%f§[_loc4_][0] + " = " + Math.round(this.§%f§[_loc4_][2] / this.§%f§[_loc4_][1]);
            }
            this.§%f§[_loc4_][1] = 0;
            this.§%f§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§4=§.text = _loc3_;
         this.§4=§.mouseEnabled = false;
         this.§0! § = 0;
         this.§%!M§ = 0;
      }
      
      public function §0!J§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§%f§.length)
         {
            if(this.§%f§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§%f§[this.§%f§.length] = new Array();
            _loc3_ = this.§%f§.length - 1;
            this.§%f§[_loc3_][0] = param1;
            this.§%f§[_loc3_][1] = 0;
            this.§%f§[_loc3_][2] = 0;
         }
         this.§%f§[_loc3_][1] += 1;
         this.§%f§[_loc3_][2] += param2;
      }
   }
}
