package §`!W§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6p§ extends Sprite
   {
      
      private static const §<$§:int = 1000;
       
      
      private var §?k§:TextField;
      
      private var § y§:Boolean;
      
      private var §+!1§:int = 0;
      
      private var §;!1§:Number = 0;
      
      private var §&!Q§:Array;
      
      public function §6p§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§ y§ = param1;
         if(param1)
         {
            this.§?k§ = new TextField();
            this.§?k§.text = "...";
            this.§?k§.textColor = 16711680;
            this.§?k§.selectable = false;
            this.§?k§.height = 40;
            this.§?k§.width = 150;
            this.§?k§.mouseEnabled = false;
            addChild(this.§?k§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§&!Q§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§+!1§;
         this.§;!1§ += param1;
         if(this.§;!1§ >= §<$§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§;!1§ == 0 || this.§+!1§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§;!1§ * this.§+!1§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§&!Q§.length)
         {
            if(this.§&!Q§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§&!Q§[_loc4_][0] + " = " + Math.round(this.§&!Q§[_loc4_][2] / this.§&!Q§[_loc4_][1]);
            }
            this.§&!Q§[_loc4_][1] = 0;
            this.§&!Q§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§?k§.text = _loc3_;
         this.§?k§.mouseEnabled = false;
         this.§+!1§ = 0;
         this.§;!1§ = 0;
      }
      
      public function §#!b§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§&!Q§.length)
         {
            if(this.§&!Q§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§&!Q§[this.§&!Q§.length] = new Array();
            _loc3_ = this.§&!Q§.length - 1;
            this.§&!Q§[_loc3_][0] = param1;
            this.§&!Q§[_loc3_][1] = 0;
            this.§&!Q§[_loc3_][2] = 0;
         }
         this.§&!Q§[_loc3_][1] += 1;
         this.§&!Q§[_loc3_][2] += param2;
      }
   }
}
