package §8!w§
{
   import § !V§.§!5§;
   import § !V§.§7!P§;
   import § !V§.§=!g§;
   import §]!2§.§,!n§;
   import §]!2§.DisplayObject;
   import §]!2§.DisplayObjectContainer;
   import §]!2§.Sprite;
   
   public class §4§ extends §&p§
   {
      
      public static const §4!0§:String = "background";
       
      
      private var mName:String;
      
      private var §4n§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §=_§:Number;
      
      private var §!,§:Number;
      
      private var §]&§:Number = 1.0;
      
      private var §2!9§:Boolean = true;
      
      public function §4§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§4n§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§]&§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §>T§() : String
      {
         return this.§4n§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §-!%§(param1:Boolean) : void
      {
         this.§2!9§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§=!g§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §!5§.§ !q§(this.§>T§,param3)))
            {
               if(_loc5_ = param3.§&I§(this.§>T§))
               {
                  (_loc4_ = new §,!n§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§4!0§) as Sprite)
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
               if(this.name == §4!0§)
               {
                  if(!this.§2!9§)
                  {
                  }
               }
               _loc4_.scaleX = this.§]&§;
               _loc4_.scaleY = this.§]&§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§=_§ = param1;
         this.§!,§ = param2;
      }
      
      override public function clone() : §&p§
      {
         var _loc1_:§4§ = new §4§(time,duration,this.mName,this.§4n§,this.mX,this.mY,this.§]&§);
         _loc1_.§2!9§ = this.§2!9§;
         _loc1_.§=_§ = this.§=_§;
         _loc1_.§!,§ = this.§!,§;
         return _loc1_;
      }
   }
}
