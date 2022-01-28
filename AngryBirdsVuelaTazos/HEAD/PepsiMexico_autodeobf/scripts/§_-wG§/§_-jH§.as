package §_-wG§
{
   import §_-3b§.§_-Lf§;
   import §_-3b§.§_-Og§;
   import §_-3b§.§_-wg§;
   import §_-SE§.DisplayObject;
   import §_-SE§.DisplayObjectContainer;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   
   public class §_-jH§ extends include
   {
      
      public static const §_-ah§:String = "background";
       
      
      private var mName:String;
      
      private var §_-cV§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-3Y§:Number;
      
      private var §_-cy§:Number;
      
      private var §_-d4§:Number = 1.0;
      
      private var §_-FP§:Boolean = true;
      
      public function §_-jH§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-cV§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§_-d4§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-sb§() : String
      {
         return this.§_-cV§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-ip§(param1:Boolean) : void
      {
         this.§_-FP§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Og§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§_-Lf§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §_-wg§.§_-FV§(this.§_-sb§,param3)))
            {
               if(_loc5_ = param3.§_-lH§(this.§_-sb§))
               {
                  (_loc4_ = new §_-rl§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§_-ah§) as Sprite)
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
               if(this.name == §_-ah§)
               {
                  if(!this.§_-FP§)
                  {
                  }
               }
               _loc4_.scaleX = this.§_-d4§;
               _loc4_.scaleY = this.§_-d4§;
            }
            return false;
         }
         return true;
      }
      
      public function §_-e5§(param1:Number, param2:Number) : void
      {
         this.§_-3Y§ = param1;
         this.§_-cy§ = param2;
      }
      
      override public function clone() : include
      {
         var _loc1_:§_-jH§ = new §_-jH§(time,duration,this.mName,this.§_-cV§,this.mX,this.mY,this.§_-d4§);
         _loc1_.§_-FP§ = this.§_-FP§;
         _loc1_.§_-3Y§ = this.§_-3Y§;
         _loc1_.§_-cy§ = this.§_-cy§;
         return _loc1_;
      }
   }
}
