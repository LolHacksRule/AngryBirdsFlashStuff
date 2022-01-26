package §_-Sc§
{
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-9c§;
   import §_-Bp§.§_-Mn§;
   import §_-vO§.DisplayObject;
   import §_-vO§.DisplayObjectContainer;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   
   public class §_-Ff§ extends § case§
   {
      
      public static const §_-mg§:String = "background";
       
      
      private var mName:String;
      
      private var §_-eP§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-x9§:Number;
      
      private var §_-Ql§:Number;
      
      private var §_-oY§:Boolean = true;
      
      public function §_-Ff§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-eP§ = param4;
         this.mX = param5;
         this.mY = param6;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-iG§() : String
      {
         return this.§_-eP§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §_-J4§(param1:Boolean) : void
      {
         this.§_-oY§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:§_-9c§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:DisplayObjectContainer = null;
         if(!super.update(param1,param2))
         {
            _loc3_ = §_-Mn§.§_-HG§(this.§_-iG§,§_-5N§.§_-9v§);
            if(!_loc3_)
            {
               if(_loc4_ = §_-5N§.§_-9v§.§switch§(this.§_-iG§))
               {
                  _loc3_ = new §_-OW§(_loc4_.texture);
                  _loc3_.x = -_loc4_.pivotX;
                  _loc3_.y = -_loc4_.pivotY;
               }
            }
            if(_loc3_)
            {
               if(_loc5_ = param2.getChildByName(§_-mg§) as Sprite)
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
               if(this.name == §_-mg§)
               {
                  if(this.§_-oY§)
                  {
                     param2.y += §_-mS§.§_-FY§ + (§_-mS§.§_-q§ - this.§_-Ql§) / 2;
                  }
                  else
                  {
                     param2.x += (§_-mS§.§_-iX§ - this.§_-x9§) / 2;
                     param2.y = §_-mS§.§_-q§ - this.§_-Ql§ + this.y + §_-mS§.§_-FY§ - param2.§_-bC§.top;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function §_-b2§(param1:Number, param2:Number) : void
      {
         this.§_-x9§ = param1;
         this.§_-Ql§ = param2;
      }
      
      override public function clone() : § case§
      {
         var _loc1_:§_-Ff§ = new §_-Ff§(time,duration,this.mName,this.§_-eP§,this.mX,this.mY);
         _loc1_.§_-oY§ = this.§_-oY§;
         _loc1_.§_-x9§ = this.§_-x9§;
         _loc1_.§_-Ql§ = this.§_-Ql§;
         return _loc1_;
      }
   }
}
