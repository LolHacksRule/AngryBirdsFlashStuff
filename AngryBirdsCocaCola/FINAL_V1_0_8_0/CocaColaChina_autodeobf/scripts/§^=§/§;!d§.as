package §^=§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §;!d§ extends Sprite
   {
      
      private static const §04§:int = 1000;
       
      
      private var §-!_§:TextField;
      
      private var §?!8§:Boolean;
      
      private var §"!U§:int = 0;
      
      private var §4!^§:Number = 0;
      
      private var §^D§:Array;
      
      public function §;!d§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§?!8§ = param1;
         if(param1)
         {
            this.§-!_§ = new TextField();
            this.§-!_§.text = "...";
            this.§-!_§.textColor = 16711680;
            this.§-!_§.selectable = false;
            this.§-!_§.height = 40;
            this.§-!_§.width = 150;
            this.§-!_§.mouseEnabled = false;
            addChild(this.§-!_§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§^D§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§"!U§;
         this.§4!^§ += param1;
         if(this.§4!^§ >= §04§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§4!^§ == 0 || this.§"!U§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§4!^§ * this.§"!U§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§^D§.length)
         {
            if(this.§^D§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§^D§[_loc4_][0] + " = " + Math.round(this.§^D§[_loc4_][2] / this.§^D§[_loc4_][1]);
            }
            this.§^D§[_loc4_][1] = 0;
            this.§^D§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§-!_§.text = _loc3_;
         this.§-!_§.mouseEnabled = false;
         this.§"!U§ = 0;
         this.§4!^§ = 0;
      }
      
      public function §&E§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^D§.length)
         {
            if(this.§^D§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§^D§[this.§^D§.length] = new Array();
            _loc3_ = this.§^D§.length - 1;
            this.§^D§[_loc3_][0] = param1;
            this.§^D§[_loc3_][1] = 0;
            this.§^D§[_loc3_][2] = 0;
         }
         this.§^D§[_loc3_][1] += 1;
         this.§^D§[_loc3_][2] += param2;
      }
   }
}
