package §_-bs§
{
   import §_-UX§.DisplayObject;
   import §_-UX§.DisplayObjectContainer;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-rQ§.§_-MV§;
   import §_-rQ§.§_-Q2§;
   import §_-rQ§.§_-hA§;
   
   public class §_-jM§ extends §_-bA§
   {
      
      public static const §_-Hm§:String = "background";
       
      
      private var mName:String;
      
      private var §_-DB§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-NR§:Number;
      
      private var §_-gD§:Number;
      
      private var §_-UM§:Boolean = true;
      
      public function §_-jM§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-DB§ = param4;
         this.mX = param5;
         this.mY = param6;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-69§() : String
      {
         return this.§_-DB§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-Lc§(param1:Boolean) : void
      {
         this.§_-UM§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-MV§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(!super.update(param1,param2))
         {
            _loc3_ = §_-Q2§.§_-7f§(this.§_-69§,§_-hA§.§_-G4§);
            if(!_loc3_)
            {
               if(_loc4_ = §_-hA§.§_-G4§.§_-E4§(this.§_-69§))
               {
                  _loc3_ = new §_-2S§(_loc4_.texture);
                  _loc3_.x = -_loc4_.pivotX;
                  _loc3_.y = -_loc4_.pivotY;
               }
            }
            if(_loc3_)
            {
               if(_loc5_ = param2.getChildByName(§_-Hm§) as Sprite)
               {
                  param2 = _loc5_;
               }
               _loc3_.x += this.x;
               _loc3_.y += this.y;
               _loc3_.name = this.name;
               if(_loc6_ = param2.getChildByName(this.name))
               {
                  (_loc7_ = _loc6_.parent).removeChild(_loc6_,true);
                  _loc7_.addChild(_loc3_);
               }
               else
               {
                  param2.addChild(_loc3_);
               }
               if(this.name == §_-Hm§)
               {
                  if(this.§_-UM§)
                  {
                     param2.y += §_-ki§.§_-BR§ + (§_-ki§.§_-UU§ - this.§_-gD§) / 2;
                  }
                  else
                  {
                     param2.x += (§_-ki§.§_-EK§ - this.§_-NR§) / 2;
                     param2.y = §_-ki§.§_-UU§ - this.§_-gD§ + this.y + §_-ki§.§_-BR§ - param2.§_-uY§.top;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function §_-Bn§(param1:Number, param2:Number) : void
      {
         this.§_-NR§ = param1;
         this.§_-gD§ = param2;
      }
      
      override public function clone() : §_-bA§
      {
         var _loc1_:§_-jM§ = new §_-jM§(time,duration,this.mName,this.§_-DB§,this.mX,this.mY);
         _loc1_.§_-UM§ = this.§_-UM§;
         _loc1_.§_-NR§ = this.§_-NR§;
         _loc1_.§_-gD§ = this.§_-gD§;
         return _loc1_;
      }
   }
}
