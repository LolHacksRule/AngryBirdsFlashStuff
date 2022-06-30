package §>X§
{
   import §#!f§.§9!,§;
   import §#!f§.DisplayObject;
   import §#!f§.DisplayObjectContainer;
   import §#!f§.Sprite;
   import §3!§.§-e§;
   import §3!§.§2!$§;
   import §3!§.§`!Z§;
   
   public class §=!$§ extends §5!4§
   {
      
      public static const §&&§:String = "background";
       
      
      private var mName:String;
      
      private var §2C§:String;
      
      private var §`B§:Number;
      
      private var §,!9§:Number;
      
      private var §>5§:Number;
      
      private var §`!I§:Number;
      
      private var §^q§:Number = 1.0;
      
      private var §&A§:Boolean = true;
      
      public function §=!$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§2C§ = param4;
         this.§`B§ = param5;
         this.§,!9§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§^q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §!"§() : String
      {
         return this.§2C§;
      }
      
      public function get x() : Number
      {
         return this.§`B§;
      }
      
      public function get y() : Number
      {
         return this.§,!9§;
      }
      
      public function set §8q§(param1:Boolean) : void
      {
         this.§&A§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-e§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§2!$§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §`!Z§.§,Y§(this.§!"§,param3)))
            {
               if(_loc5_ = param3.§1%§(this.§!"§))
               {
                  (_loc4_ = new §9!,§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§&&§) as Sprite)
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
               if(this.name == §&&§)
               {
                  if(!this.§&A§)
                  {
                  }
               }
               _loc4_.scaleX = this.§^q§;
               _loc4_.scaleY = this.§^q§;
            }
            return false;
         }
         return true;
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         this.§>5§ = param1;
         this.§`!I§ = param2;
      }
      
      override public function clone() : §5!4§
      {
         var _loc1_:§=!$§ = new §=!$§(time,duration,this.mName,this.§2C§,this.§`B§,this.§,!9§,this.§^q§);
         _loc1_.§&A§ = this.§&A§;
         _loc1_.§>5§ = this.§>5§;
         _loc1_.§`!I§ = this.§`!I§;
         return _loc1_;
      }
   }
}
