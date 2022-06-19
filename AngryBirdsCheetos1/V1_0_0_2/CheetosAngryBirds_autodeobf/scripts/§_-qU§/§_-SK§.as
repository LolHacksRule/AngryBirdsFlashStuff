package §_-qU§
{
   import §_-GY§.DisplayObject;
   import §_-GY§.DisplayObjectContainer;
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-V0§;
   import §_-my§.§_-W5§;
   
   public class §_-SK§ extends §_-BV§
   {
      
      public static const §_-gp§:String = "background";
       
      
      private var mName:String;
      
      private var §_-1d§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-a9§:Number;
      
      private var §_-7y§:Number;
      
      private var §_-0-G§:Number = 1.0;
      
      private var §_-cd§:Boolean = true;
      
      public function §_-SK§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-1d§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§_-0-G§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §for§() : String
      {
         return this.§_-1d§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-0-9§(param1:Boolean) : void
      {
         this.§_-cd§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-V0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§_-GX§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §_-W5§.§_-tU§(this.§for§,param3)))
            {
               if(_loc5_ = param3.§_-8O§(this.§for§))
               {
                  (_loc4_ = new §_-4W§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§_-gp§) as Sprite)
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
               if(this.name == §_-gp§)
               {
                  if(!this.§_-cd§)
                  {
                  }
               }
               _loc4_.scaleX = this.§_-0-G§;
               _loc4_.scaleY = this.§_-0-G§;
            }
            return false;
         }
         return true;
      }
      
      public function §_-z7§(param1:Number, param2:Number) : void
      {
         this.§_-a9§ = param1;
         this.§_-7y§ = param2;
      }
      
      override public function clone() : §_-BV§
      {
         var _loc1_:§_-SK§ = new §_-SK§(time,duration,this.mName,this.§_-1d§,this.mX,this.mY,this.§_-0-G§);
         _loc1_.§_-cd§ = this.§_-cd§;
         _loc1_.§_-a9§ = this.§_-a9§;
         _loc1_.§_-7y§ = this.§_-7y§;
         return _loc1_;
      }
   }
}
