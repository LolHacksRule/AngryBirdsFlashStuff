package §_-wH§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-Wm§;
   import §_-1P§.§_-XN§;
   import §_-pF§.DisplayObject;
   import §_-pF§.DisplayObjectContainer;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   
   public class §_-oH§ extends §_-Xc§
   {
      
      public static const §_-2-§:String = "background";
       
      
      private var mName:String;
      
      private var §_-OG§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-Fy§:Number;
      
      private var §_-XU§:Number;
      
      private var §_-Yo§:Boolean = true;
      
      public function §_-oH§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-OG§ = param4;
         this.mX = param5;
         this.mY = param6;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-DK§() : String
      {
         return this.§_-OG§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-e9§(param1:Boolean) : void
      {
         this.§_-Yo§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-XN§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(!super.update(param1,param2))
         {
            _loc3_ = §_-Wm§.§_-fk§(this.§_-DK§,§_-3p§.§_-WK§);
            if(!_loc3_)
            {
               if(_loc4_ = §_-3p§.§_-WK§.§_-wz§(this.§_-DK§))
               {
                  _loc3_ = new §_-gY§(_loc4_.texture);
                  _loc3_.x = -_loc4_.pivotX;
                  _loc3_.y = -_loc4_.pivotY;
               }
            }
            if(_loc3_)
            {
               if(_loc5_ = param2.getChildByName(§_-2-§) as Sprite)
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
               if(this.name == §_-2-§)
               {
                  if(this.§_-Yo§)
                  {
                     param2.y += § each§.§_-aZ§ + (§ each§.§_-mI§ - this.§_-XU§) / 2;
                  }
                  else
                  {
                     param2.x += (§ each§.§_-dN§ - this.§_-Fy§) / 2;
                     param2.y = § each§.§_-mI§ - this.§_-XU§ + this.y + § each§.§_-aZ§ - param2.§_-gh§.top;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function §_-7r§(param1:Number, param2:Number) : void
      {
         this.§_-Fy§ = param1;
         this.§_-XU§ = param2;
      }
      
      override public function clone() : §_-Xc§
      {
         var _loc1_:§_-oH§ = new §_-oH§(time,duration,this.mName,this.§_-OG§,this.mX,this.mY);
         _loc1_.§_-Yo§ = this.§_-Yo§;
         _loc1_.§_-Fy§ = this.§_-Fy§;
         _loc1_.§_-XU§ = this.§_-XU§;
         return _loc1_;
      }
   }
}
