package §=!M§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §!!X§ extends Sprite
   {
      
      private static const §@!,§:int = 1000;
       
      
      private var §5S§:TextField;
      
      private var §6a§:Boolean;
      
      private var §4!S§:int = 0;
      
      private var §@!f§:Number = 0;
      
      private var §7j§:Array;
      
      public function §!!X§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§6a§ = param1;
         if(param1)
         {
            this.§5S§ = new TextField();
            this.§5S§.text = "...";
            this.§5S§.textColor = 16711680;
            this.§5S§.selectable = false;
            this.§5S§.height = 40;
            this.§5S§.width = 150;
            this.§5S§.mouseEnabled = false;
            addChild(this.§5S§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§7j§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§4!S§;
         this.§@!f§ += param1;
         if(this.§@!f§ >= §@!,§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§@!f§ == 0 || this.§4!S§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§@!f§ * this.§4!S§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§7j§.length)
         {
            if(this.§7j§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§7j§[_loc4_][0] + " = " + Math.round(this.§7j§[_loc4_][2] / this.§7j§[_loc4_][1]);
            }
            this.§7j§[_loc4_][1] = 0;
            this.§7j§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§5S§.text = _loc3_;
         this.§5S§.mouseEnabled = false;
         this.§4!S§ = 0;
         this.§@!f§ = 0;
      }
      
      public function §=!f§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§7j§.length)
         {
            if(this.§7j§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§7j§[this.§7j§.length] = new Array();
            _loc3_ = this.§7j§.length - 1;
            this.§7j§[_loc3_][0] = param1;
            this.§7j§[_loc3_][1] = 0;
            this.§7j§[_loc3_][2] = 0;
         }
         this.§7j§[_loc3_][1] += 1;
         this.§7j§[_loc3_][2] += param2;
      }
   }
}
