package §'D§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §`E§ extends Sprite
   {
      
      private static const §?x§:int = 1000;
       
      
      private var §!!9§:TextField;
      
      private var §&=§:Boolean;
      
      private var §?!H§:int = 0;
      
      private var §3l§:Number = 0;
      
      private var §@V§:Array;
      
      public function §`E§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§&=§ = param1;
         if(param1)
         {
            this.§!!9§ = new TextField();
            this.§!!9§.text = "...";
            this.§!!9§.textColor = 16711680;
            this.§!!9§.selectable = false;
            this.§!!9§.height = 40;
            this.§!!9§.width = 150;
            this.§!!9§.mouseEnabled = false;
            addChild(this.§!!9§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§@V§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§?!H§;
         this.§3l§ += param1;
         if(this.§3l§ >= §?x§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§3l§ == 0 || this.§?!H§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§3l§ * this.§?!H§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§@V§.length)
         {
            if(this.§@V§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§@V§[_loc4_][0] + " = " + Math.round(this.§@V§[_loc4_][2] / this.§@V§[_loc4_][1]);
            }
            this.§@V§[_loc4_][1] = 0;
            this.§@V§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§!!9§.text = _loc3_;
         this.§!!9§.mouseEnabled = false;
         this.§?!H§ = 0;
         this.§3l§ = 0;
      }
      
      public function §+!_§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§@V§.length)
         {
            if(this.§@V§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§@V§[this.§@V§.length] = new Array();
            _loc3_ = this.§@V§.length - 1;
            this.§@V§[_loc3_][0] = param1;
            this.§@V§[_loc3_][1] = 0;
            this.§@V§[_loc3_][2] = 0;
         }
         this.§@V§[_loc3_][1] += 1;
         this.§@V§[_loc3_][2] += param2;
      }
   }
}
