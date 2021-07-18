package §_-ya§
{
   import §_-LP§.DisplayObject;
   import §_-LP§.DisplayObjectContainer;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-Vr§;
   import §_-Ra§.§_-fR§;
   
   public class §_-fs§ extends §_-ga§
   {
      
      public static const §_-6G§:String = "background";
       
      
      private var mName:String;
      
      private var §_-2i§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-sa§:Number;
      
      private var §_-cr§:Number;
      
      private var §_-BX§:Boolean = true;
      
      public function §_-fs§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-2i§ = param4;
         this.mX = param5;
         this.mY = param6;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-lR§() : String
      {
         return this.§_-2i§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-q6§(param1:Boolean) : void
      {
         this.§_-BX§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-Vr§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(!super.update(param1,param2))
         {
            _loc3_ = §_-fR§.§_-xl§(this.§_-lR§,§_-2X§.§_-mE§);
            if(!_loc3_)
            {
               if(_loc4_ = §_-2X§.§_-mE§.§_-ln§(this.§_-lR§))
               {
                  _loc3_ = new §_-19§(_loc4_.texture);
                  _loc3_.x = -_loc4_.pivotX;
                  _loc3_.y = -_loc4_.pivotY;
               }
            }
            if(_loc3_)
            {
               if(_loc5_ = param2.getChildByName(§_-6G§) as Sprite)
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
               if(this.name == §_-6G§)
               {
                  if(this.§_-BX§)
                  {
                     param2.y += §_-tW§.§_-PN§ + (§_-tW§.§_-SP§ - this.§_-cr§) / 2;
                  }
                  else
                  {
                     param2.x += (§_-tW§.§_-1q§ - this.§_-sa§) / 2;
                     param2.y = §_-tW§.§_-SP§ - this.§_-cr§ + this.y + §_-tW§.§_-PN§ - param2.§_-cB§.top;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function §_-lX§(param1:Number, param2:Number) : void
      {
         this.§_-sa§ = param1;
         this.§_-cr§ = param2;
      }
      
      override public function clone() : §_-ga§
      {
         var _loc1_:§_-fs§ = new §_-fs§(time,duration,this.mName,this.§_-2i§,this.mX,this.mY);
         _loc1_.§_-BX§ = this.§_-BX§;
         _loc1_.§_-sa§ = this.§_-sa§;
         _loc1_.§_-cr§ = this.§_-cr§;
         return _loc1_;
      }
   }
}
