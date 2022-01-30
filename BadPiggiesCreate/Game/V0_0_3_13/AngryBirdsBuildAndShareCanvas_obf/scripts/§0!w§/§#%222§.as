package §0!w§
{
   import §`"2§.§%3§;
   import §`"2§.§6!,§;
   import §`"2§.§6L§;
   import §`L§.§-;§;
   import §`L§.DisplayObject;
   import §`L§.DisplayObjectContainer;
   import §`L§.Sprite;
   
   public class §#"2§ extends §5i§
   {
      
      public static const §%"%§:String = "background";
       
      
      private var mName:String;
      
      private var §-A§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §+!C§:Number;
      
      private var §1z§:Number;
      
      private var §6h§:Number = 1.0;
      
      private var §@!w§:Boolean = true;
      
      public function §#"2§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§-A§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§6h§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get § Q§() : String
      {
         return this.§-A§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §5"=§(param1:Boolean) : void
      {
         this.§@!w§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!,§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§%3§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §6L§.§&I§(this.§ Q§,param3)))
            {
               if(_loc5_ = param3.§'"#§(this.§ Q§))
               {
                  (_loc4_ = new §-;§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§%"%§) as Sprite)
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
               if(this.name == §%"%§)
               {
                  if(!this.§@!w§)
                  {
                  }
               }
               _loc4_.scaleX = this.§6h§;
               _loc4_.scaleY = this.§6h§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§+!C§ = param1;
         this.§1z§ = param2;
      }
      
      override public function clone() : §5i§
      {
         var _loc1_:§#"2§ = new §#"2§(time,duration,this.mName,this.§-A§,this.mX,this.mY,this.§6h§);
         _loc1_.§@!w§ = this.§@!w§;
         _loc1_.§+!C§ = this.§+!C§;
         _loc1_.§1z§ = this.§1z§;
         return _loc1_;
      }
   }
}
