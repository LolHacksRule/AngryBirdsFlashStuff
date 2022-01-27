package §6!C§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §^!;§ extends Sprite
   {
      
      private static const §2!J§:int = 1000;
       
      
      private var §8!C§:TextField;
      
      private var §>!^§:Boolean;
      
      private var §^!4§:int = 0;
      
      private var §;!a§:Number = 0;
      
      private var §'"D§:Array;
      
      public function §^!;§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§>!^§ = param1;
         if(param1)
         {
            this.§8!C§ = new TextField();
            this.§8!C§.text = "...";
            this.§8!C§.textColor = 16711680;
            this.§8!C§.selectable = false;
            this.§8!C§.height = 40;
            this.§8!C§.width = 150;
            this.§8!C§.mouseEnabled = false;
            addChild(this.§8!C§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§'"D§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§^!4§;
         this.§;!a§ += param1;
         if(this.§;!a§ >= §2!J§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§;!a§ == 0 || this.§^!4§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§;!a§ * this.§^!4§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§'"D§.length)
         {
            if(this.§'"D§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§'"D§[_loc4_][0] + " = " + Math.round(this.§'"D§[_loc4_][2] / this.§'"D§[_loc4_][1]);
            }
            this.§'"D§[_loc4_][1] = 0;
            this.§'"D§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§8!C§.text = _loc3_;
         this.§8!C§.mouseEnabled = false;
         this.§^!4§ = 0;
         this.§;!a§ = 0;
      }
      
      public function §5K§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§'"D§.length)
         {
            if(this.§'"D§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§'"D§[this.§'"D§.length] = new Array();
            _loc3_ = this.§'"D§.length - 1;
            this.§'"D§[_loc3_][0] = param1;
            this.§'"D§[_loc3_][1] = 0;
            this.§'"D§[_loc3_][2] = 0;
         }
         this.§'"D§[_loc3_][1] += 1;
         this.§'"D§[_loc3_][2] += param2;
      }
   }
}
