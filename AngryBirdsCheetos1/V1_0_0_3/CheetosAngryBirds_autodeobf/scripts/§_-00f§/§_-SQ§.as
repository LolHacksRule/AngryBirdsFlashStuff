package §_-00f§
{
   import §_-4I§.§_-EA§;
   import §_-4I§.§_-Kf§;
   import §_-4I§.§_-v8§;
   import §case §.DisplayObject;
   import §case §.DisplayObjectContainer;
   import §case §.Sprite;
   import §case §.§_-G3§;
   
   public class §_-SQ§ extends §_-PQ§
   {
      
      public static const §_-f9§:String = "background";
       
      
      private var mName:String;
      
      private var §_-iJ§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-LO§:Number;
      
      private var §_-Fy§:Number;
      
      private var §_-Nj§:Number = 1.0;
      
      private var §_-TW§:Boolean = true;
      
      public function §_-SQ§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-iJ§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§_-Nj§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-Ir§() : String
      {
         return this.§_-iJ§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-do§(param1:Boolean) : void
      {
         this.§_-TW§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-v8§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§_-EA§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §_-Kf§.§_-Ma§(this.§_-Ir§,param3)))
            {
               if(_loc5_ = param3.§_-QE§(this.§_-Ir§))
               {
                  (_loc4_ = new §_-G3§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§_-f9§) as Sprite)
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
               if(this.name == §_-f9§)
               {
                  if(!this.§_-TW§)
                  {
                  }
               }
               _loc4_.scaleX = this.§_-Nj§;
               _loc4_.scaleY = this.§_-Nj§;
            }
            return false;
         }
         return true;
      }
      
      public function §_-tm§(param1:Number, param2:Number) : void
      {
         this.§_-LO§ = param1;
         this.§_-Fy§ = param2;
      }
      
      override public function clone() : §_-PQ§
      {
         var _loc1_:§_-SQ§ = new §_-SQ§(time,duration,this.mName,this.§_-iJ§,this.mX,this.mY,this.§_-Nj§);
         _loc1_.§_-TW§ = this.§_-TW§;
         _loc1_.§_-LO§ = this.§_-LO§;
         _loc1_.§_-Fy§ = this.§_-Fy§;
         return _loc1_;
      }
   }
}
