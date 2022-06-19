package §_-CR§
{
   import §_-5p§.§_-0-B§;
   import §_-5p§.§_-4§;
   import §_-5p§.§_-Kf§;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.DisplayObjectContainer;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   
   public class §_-Sq§ extends §_-Lj§
   {
      
      public static const §_-i2§:String = "background";
       
      
      private var mName:String;
      
      private var §_-NU§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-aC§:Number;
      
      private var §_-3v§:Number;
      
      private var §_-0q§:Number = 1.0;
      
      private var §_-ci§:Boolean = true;
      
      public function §_-Sq§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-NU§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§_-0q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-4L§() : String
      {
         return this.§_-NU§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-76§(param1:Boolean) : void
      {
         this.§_-ci§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Kf§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§_-4§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §_-0-B§.§_-1-§(this.§_-4L§,param3)))
            {
               if(_loc5_ = param3.§_-I4§(this.§_-4L§))
               {
                  (_loc4_ = new §_-Nd§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§_-i2§) as Sprite)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               if(_loc7_ = param2.getChildByName(this.name))
               {
                  (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §_-i2§)
               {
                  if(!this.§_-ci§)
                  {
                  }
               }
               _loc4_.scaleX = this.§_-0q§;
               _loc4_.scaleY = this.§_-0q§;
            }
            return false;
         }
         return true;
      }
      
      public function §_-Ql§(param1:Number, param2:Number) : void
      {
         this.§_-aC§ = param1;
         this.§_-3v§ = param2;
      }
      
      override public function clone() : §_-Lj§
      {
         var _loc1_:§_-Sq§ = new §_-Sq§(time,duration,this.mName,this.§_-NU§,this.mX,this.mY,this.§_-0q§);
         _loc1_.§_-ci§ = this.§_-ci§;
         _loc1_.§_-aC§ = this.§_-aC§;
         _loc1_.§_-3v§ = this.§_-3v§;
         return _loc1_;
      }
   }
}
