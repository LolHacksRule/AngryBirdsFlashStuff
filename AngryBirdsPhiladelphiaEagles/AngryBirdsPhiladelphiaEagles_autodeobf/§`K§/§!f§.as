package §`K§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §!f§ extends Sprite
   {
      
      private static const §9!=§:int = 1000;
       
      
      private var §8"§:TextField;
      
      private var §;!@§:Boolean;
      
      private var §^b§:int = 0;
      
      private var §5P§:Number = 0;
      
      private var §^o§:Array;
      
      public function §!f§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§;!@§ = param1;
         if(param1)
         {
            this.§8"§ = new TextField();
            this.§8"§.text = "...";
            this.§8"§.textColor = 16711680;
            this.§8"§.selectable = false;
            this.§8"§.height = 40;
            this.§8"§.width = 150;
            this.§8"§.mouseEnabled = false;
            addChild(this.§8"§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§^o§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§^b§;
         this.§5P§ += param1;
         if(this.§5P§ >= §9!=§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§5P§ == 0 || this.§^b§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§5P§ * this.§^b§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§^o§.length)
         {
            if(this.§^o§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§^o§[_loc4_][0] + " = " + Math.round(this.§^o§[_loc4_][2] / this.§^o§[_loc4_][1]);
            }
            this.§^o§[_loc4_][1] = 0;
            this.§^o§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§8"§.text = _loc3_;
         this.§8"§.mouseEnabled = false;
         this.§^b§ = 0;
         this.§5P§ = 0;
      }
      
      public function §'!6§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^o§.length)
         {
            if(this.§^o§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§^o§[this.§^o§.length] = new Array();
            _loc3_ = this.§^o§.length - 1;
            this.§^o§[_loc3_][0] = param1;
            this.§^o§[_loc3_][1] = 0;
            this.§^o§[_loc3_][2] = 0;
         }
         this.§^o§[_loc3_][1] += 1;
         this.§^o§[_loc3_][2] += param2;
      }
   }
}
