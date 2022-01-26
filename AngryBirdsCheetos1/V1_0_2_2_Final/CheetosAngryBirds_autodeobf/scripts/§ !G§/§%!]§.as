package § !G§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §%!]§ extends Sprite
   {
      
      private static const §1%§:int = 1000;
       
      
      private var §0!S§:TextField;
      
      private var §'?§:Boolean;
      
      private var §`![§:int = 0;
      
      private var §=!%§:Number = 0;
      
      private var §+!W§:Array;
      
      public function §%!]§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§'?§ = param1;
         if(param1)
         {
            this.§0!S§ = new TextField();
            this.§0!S§.text = "...";
            this.§0!S§.textColor = 16711680;
            this.§0!S§.selectable = false;
            this.§0!S§.height = 40;
            this.§0!S§.width = 150;
            this.§0!S§.mouseEnabled = false;
            addChild(this.§0!S§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§+!W§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§`![§;
         this.§=!%§ += param1;
         if(this.§=!%§ >= §1%§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§=!%§ == 0 || this.§`![§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§=!%§ * this.§`![§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§+!W§.length)
         {
            if(this.§+!W§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§+!W§[_loc4_][0] + " = " + Math.round(this.§+!W§[_loc4_][2] / this.§+!W§[_loc4_][1]);
            }
            this.§+!W§[_loc4_][1] = 0;
            this.§+!W§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§0!S§.text = _loc3_;
         this.§0!S§.mouseEnabled = false;
         this.§`![§ = 0;
         this.§=!%§ = 0;
      }
      
      public function §-m§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§+!W§.length)
         {
            if(this.§+!W§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§+!W§[this.§+!W§.length] = new Array();
            _loc3_ = this.§+!W§.length - 1;
            this.§+!W§[_loc3_][0] = param1;
            this.§+!W§[_loc3_][1] = 0;
            this.§+!W§[_loc3_][2] = 0;
         }
         this.§+!W§[_loc3_][1] += 1;
         this.§+!W§[_loc3_][2] += param2;
      }
   }
}
