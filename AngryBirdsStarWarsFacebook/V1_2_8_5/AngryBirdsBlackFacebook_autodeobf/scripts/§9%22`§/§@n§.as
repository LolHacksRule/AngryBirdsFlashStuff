package §9"`§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §@n§ extends Sprite
   {
      
      private static const §"!v§:int = 1000;
       
      
      private var §!y§:TextField;
      
      private var §!m§:Boolean;
      
      private var §'"J§:int = 0;
      
      private var §0g§:Number = 0;
      
      private var §6!+§:Array;
      
      public function §@n§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§!m§ = param1;
         if(param1)
         {
            this.§!y§ = new TextField();
            this.§!y§.text = "...";
            this.§!y§.textColor = 16711680;
            this.§!y§.selectable = false;
            this.§!y§.height = 40;
            this.§!y§.width = 150;
            this.§!y§.mouseEnabled = false;
            addChild(this.§!y§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§6!+§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§'"J§;
         this.§0g§ += param1;
         if(this.§0g§ >= §"!v§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§0g§ == 0 || this.§'"J§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§0g§ * this.§'"J§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!+§.length)
         {
            if(this.§6!+§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§6!+§[_loc4_][0] + " = " + Math.round(this.§6!+§[_loc4_][2] / this.§6!+§[_loc4_][1]);
            }
            this.§6!+§[_loc4_][1] = 0;
            this.§6!+§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§!y§.text = _loc3_;
         this.§!y§.mouseEnabled = false;
         this.§'"J§ = 0;
         this.§0g§ = 0;
      }
      
      public function §>"1§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!+§.length)
         {
            if(this.§6!+§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§6!+§[this.§6!+§.length] = new Array();
            _loc3_ = this.§6!+§.length - 1;
            this.§6!+§[_loc3_][0] = param1;
            this.§6!+§[_loc3_][1] = 0;
            this.§6!+§[_loc3_][2] = 0;
         }
         this.§6!+§[_loc3_][1] += 1;
         this.§6!+§[_loc3_][2] += param2;
      }
   }
}
