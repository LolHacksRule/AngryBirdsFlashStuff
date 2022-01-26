package §_-Wy§
{
   import §_-PC§.§_-Ce§;
   import §_-PC§.§_-lx§;
   import §_-PC§.§_-qH§;
   import §_-b5§.DisplayObject;
   import §_-b5§.DisplayObjectContainer;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   
   public class §_-Ek§ extends §_-W5§
   {
      
      public static const §_-7H§:String = "background";
       
      
      private var mName:String;
      
      private var §_-h3§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-U0§:Number;
      
      private var §_-bN§:Number;
      
      private var §_-NV§:Boolean = true;
      
      public function §_-Ek§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-h3§ = param4;
         this.mX = param5;
         this.mY = param6;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-sj§() : String
      {
         return this.§_-h3§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-wP§(param1:Boolean) : void
      {
         this.§_-NV§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-qH§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(!super.update(param1,param2))
         {
            _loc3_ = §_-Ce§.§_-Ul§(this.§_-sj§,§_-lx§.§_-aP§);
            if(!_loc3_)
            {
               if(_loc4_ = §_-lx§.§_-aP§.§_-vh§(this.§_-sj§))
               {
                  _loc3_ = new §_-Xj§(_loc4_.texture);
                  _loc3_.x = -_loc4_.pivotX;
                  _loc3_.y = -_loc4_.pivotY;
               }
            }
            if(_loc3_)
            {
               if(_loc5_ = param2.getChildByName(§_-7H§) as Sprite)
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
               if(this.name == §_-7H§)
               {
                  if(this.§_-NV§)
                  {
                     param2.y += §_-o8§.§_-Ju§ + (§_-o8§.§_-ho§ - this.§_-bN§) / 2;
                  }
                  else
                  {
                     param2.x += (§_-o8§.§_-4r§ - this.§_-U0§) / 2;
                     param2.y = §_-o8§.§_-ho§ - this.§_-bN§ + this.y + §_-o8§.§_-Ju§ - param2.§_-8N§.top;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function §_-iH§(param1:Number, param2:Number) : void
      {
         this.§_-U0§ = param1;
         this.§_-bN§ = param2;
      }
      
      override public function clone() : §_-W5§
      {
         var _loc1_:§_-Ek§ = new §_-Ek§(time,duration,this.mName,this.§_-h3§,this.mX,this.mY);
         _loc1_.§_-NV§ = this.§_-NV§;
         _loc1_.§_-U0§ = this.§_-U0§;
         _loc1_.§_-bN§ = this.§_-bN§;
         return _loc1_;
      }
   }
}
