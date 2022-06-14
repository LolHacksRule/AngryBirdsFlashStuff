package §6o§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §""5§ extends Sprite
   {
      
      private static const §0X§:int = 1000;
       
      
      private var §8!]§:TextField;
      
      private var §<!k§:Boolean;
      
      private var §!"%§:int = 0;
      
      private var §#!O§:Number = 0;
      
      private var §7!W§:Array;
      
      public function §""5§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§<!k§ = param1;
         if(param1)
         {
            this.§8!]§ = new TextField();
            this.§8!]§.text = "...";
            this.§8!]§.textColor = 16711680;
            this.§8!]§.selectable = false;
            this.§8!]§.height = 40;
            this.§8!]§.width = 150;
            this.§8!]§.mouseEnabled = false;
            addChild(this.§8!]§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§7!W§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§!"%§;
         this.§#!O§ += param1;
         if(this.§#!O§ >= §0X§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§#!O§ == 0 || this.§!"%§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§#!O§ * this.§!"%§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§7!W§.length)
         {
            if(this.§7!W§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§7!W§[_loc4_][0] + " = " + Math.round(this.§7!W§[_loc4_][2] / this.§7!W§[_loc4_][1]);
            }
            this.§7!W§[_loc4_][1] = 0;
            this.§7!W§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§8!]§.text = _loc3_;
         this.§8!]§.mouseEnabled = false;
         this.§!"%§ = 0;
         this.§#!O§ = 0;
      }
      
      public function §'!9§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§7!W§.length)
         {
            if(this.§7!W§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§7!W§[this.§7!W§.length] = new Array();
            _loc3_ = this.§7!W§.length - 1;
            this.§7!W§[_loc3_][0] = param1;
            this.§7!W§[_loc3_][1] = 0;
            this.§7!W§[_loc3_][2] = 0;
         }
         this.§7!W§[_loc3_][1] += 1;
         this.§7!W§[_loc3_][2] += param2;
      }
   }
}
