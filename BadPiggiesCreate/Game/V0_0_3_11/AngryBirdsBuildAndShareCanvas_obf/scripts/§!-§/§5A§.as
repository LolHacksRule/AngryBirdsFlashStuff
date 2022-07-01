package §!-§
{
   import §1!Y§.§8C§;
   import §1!Y§.DisplayObject;
   import §1!Y§.DisplayObjectContainer;
   import §1!Y§.Sprite;
   import §[_§.§%!X§;
   import §[_§.§'!N§;
   import §[_§.§2!B§;
   
   public class §5A§ extends §[u§
   {
      
      public static const §+!U§:String = "background";
       
      
      private var mName:String;
      
      private var §"!K§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §1§:Number;
      
      private var §+!4§:Number;
      
      private var §]P§:Number = 1.0;
      
      private var §^!j§:Boolean = true;
      
      public function §5A§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§"!K§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§]P§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get static() : String
      {
         return this.§"!K§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §1!<§(param1:Boolean) : void
      {
         this.§^!j§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2!B§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'!N§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §%!X§.§?!3§(this.static,param3)))
            {
               if(_loc5_ = param3.§+!p§(this.static))
               {
                  (_loc4_ = new §8C§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§+!U§) as Sprite)
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
               if(this.name == §+!U§)
               {
                  if(!this.§^!j§)
                  {
                  }
               }
               _loc4_.scaleX = this.§]P§;
               _loc4_.scaleY = this.§]P§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§1§ = param1;
         this.§+!4§ = param2;
      }
      
      override public function clone() : §[u§
      {
         var _loc1_:§5A§ = new §5A§(time,duration,this.mName,this.§"!K§,this.mX,this.mY,this.§]P§);
         _loc1_.§^!j§ = this.§^!j§;
         _loc1_.§1§ = this.§1§;
         _loc1_.§+!4§ = this.§+!4§;
         return _loc1_;
      }
   }
}
