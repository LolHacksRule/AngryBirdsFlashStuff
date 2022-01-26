package §_-KX§
{
   import §_-KS§.§_-Wt§;
   import §_-KS§.§_-ia§;
   import §_-KS§.§_-n-§;
   import §_-se§.DisplayObject;
   import §_-se§.DisplayObjectContainer;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   
   public class §_-C9§ extends §_-Z8§
   {
      
      public static const §_-xU§:String = "background";
       
      
      private var mName:String;
      
      private var §_-aI§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-NR§:Number;
      
      private var §_-F0§:Number;
      
      private var §_-0h§:Boolean = true;
      
      public function §_-C9§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-aI§ = param4;
         this.mX = param5;
         this.mY = param6;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-GJ§() : String
      {
         return this.§_-aI§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-V1§(param1:Boolean) : void
      {
         this.§_-0h§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-Wt§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(!super.update(param1,param2))
         {
            _loc3_ = §_-n-§.get(this.§_-GJ§,§_-ia§.§_-vJ§);
            if(!_loc3_)
            {
               if(_loc4_ = §_-ia§.§_-vJ§.§_-es§(this.§_-GJ§))
               {
                  _loc3_ = new §_-N§(_loc4_.texture);
                  _loc3_.x = -_loc4_.pivotX;
                  _loc3_.y = -_loc4_.pivotY;
               }
            }
            if(_loc3_)
            {
               if(_loc5_ = param2.getChildByName(§_-xU§) as Sprite)
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
               if(this.name == §_-xU§)
               {
                  if(this.§_-0h§)
                  {
                     param2.y += §_-AR§.§_-YD§ + (§_-AR§.§_-Uw§ - this.§_-F0§) / 2;
                  }
                  else
                  {
                     param2.x += (§_-AR§.§_-ZL§ - this.§_-NR§) / 2;
                     param2.y = §_-AR§.§_-Uw§ - this.§_-F0§ + this.y + §_-AR§.§_-YD§ - param2.§_-Br§.top;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         this.§_-NR§ = param1;
         this.§_-F0§ = param2;
      }
      
      override public function clone() : §_-Z8§
      {
         var _loc1_:§_-C9§ = new §_-C9§(time,duration,this.mName,this.§_-aI§,this.mX,this.mY);
         _loc1_.§_-0h§ = this.§_-0h§;
         _loc1_.§_-NR§ = this.§_-NR§;
         _loc1_.§_-F0§ = this.§_-F0§;
         return _loc1_;
      }
   }
}
