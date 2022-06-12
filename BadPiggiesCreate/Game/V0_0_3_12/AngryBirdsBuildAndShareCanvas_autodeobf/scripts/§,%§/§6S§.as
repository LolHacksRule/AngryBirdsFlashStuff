package §,%§
{
   import §@!-§.§"K§;
   import §@!-§.§3"1§;
   import §@!-§.§>"&§;
   import §@!i§.§%Q§;
   import §@!i§.DisplayObject;
   import §@!i§.DisplayObjectContainer;
   import §@!i§.Sprite;
   
   public class §6S§ extends §"!2§
   {
      
      public static const §`"§:String = "background";
       
      
      private var mName:String;
      
      private var §?!p§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §%w§:Number;
      
      private var §-N§:Number;
      
      private var §6U§:Number = 1.0;
      
      private var §4P§:Boolean = true;
      
      public function §6S§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§?!p§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§6U§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §0I§() : String
      {
         return this.§?!p§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §,@§(param1:Boolean) : void
      {
         this.§4P§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3"1§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§"K§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §>"&§.§4b§(this.§0I§,param3)))
            {
               if(_loc5_ = param3.§`!+§(this.§0I§))
               {
                  (_loc4_ = new §%Q§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§`"§) as Sprite)
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
               if(this.name == §`"§)
               {
                  if(!this.§4P§)
                  {
                  }
               }
               _loc4_.scaleX = this.§6U§;
               _loc4_.scaleY = this.§6U§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§%w§ = param1;
         this.§-N§ = param2;
      }
      
      override public function clone() : §"!2§
      {
         var _loc1_:§6S§ = new §6S§(time,duration,this.mName,this.§?!p§,this.mX,this.mY,this.§6U§);
         _loc1_.§4P§ = this.§4P§;
         _loc1_.§%w§ = this.§%w§;
         _loc1_.§-N§ = this.§-N§;
         return _loc1_;
      }
   }
}
