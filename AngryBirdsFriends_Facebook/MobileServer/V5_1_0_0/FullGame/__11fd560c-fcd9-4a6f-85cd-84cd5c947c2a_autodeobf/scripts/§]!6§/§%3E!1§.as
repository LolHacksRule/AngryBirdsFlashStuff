package §]!6§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §>!1§ extends Sprite
   {
      
      private static const §4"r§:int = 1000;
       
      
      private var §9#A§:TextField;
      
      private var §,#W§:Boolean;
      
      private var §"#r§:int = 0;
      
      private var §+!`§:Number = 0;
      
      private var §'#N§:Array;
      
      public function §>!1§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§,#W§ = param1;
         if(param1)
         {
            this.§9#A§ = new TextField();
            this.§9#A§.text = "...";
            this.§9#A§.textColor = 16711680;
            this.§9#A§.selectable = false;
            this.§9#A§.height = 40;
            this.§9#A§.width = 150;
            this.§9#A§.mouseEnabled = false;
            addChild(this.§9#A§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§'#N§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§"#r§;
         this.§+!`§ += param1;
         if(this.§+!`§ >= §4"r§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§+!`§ == 0 || this.§"#r§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§+!`§ * this.§"#r§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§'#N§.length)
         {
            if(this.§'#N§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§'#N§[_loc4_][0] + " = " + Math.round(this.§'#N§[_loc4_][2] / this.§'#N§[_loc4_][1]);
            }
            this.§'#N§[_loc4_][1] = 0;
            this.§'#N§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§9#A§.text = _loc3_;
         this.§9#A§.mouseEnabled = false;
         this.§"#r§ = 0;
         this.§+!`§ = 0;
      }
      
      public function §2!g§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§'#N§.length)
         {
            if(this.§'#N§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§'#N§[this.§'#N§.length] = new Array();
            _loc3_ = this.§'#N§.length - 1;
            this.§'#N§[_loc3_][0] = param1;
            this.§'#N§[_loc3_][1] = 0;
            this.§'#N§[_loc3_][2] = 0;
         }
         this.§'#N§[_loc3_][1] += 1;
         this.§'#N§[_loc3_][2] += param2;
      }
   }
}
