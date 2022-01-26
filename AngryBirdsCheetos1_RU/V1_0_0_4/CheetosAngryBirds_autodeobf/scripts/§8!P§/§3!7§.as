package §8!P§
{
   import §1!A§.§;a§;
   import §1!A§.DisplayObject;
   import §1!A§.DisplayObjectContainer;
   import §1!A§.Sprite;
   import §8K§.§9!S§;
   import §8K§.§>g§;
   import §8K§.§@j§;
   
   public class §3!7§ extends §60§
   {
      
      public static const §5]§:String = "background";
       
      
      private var mName:String;
      
      private var §8!G§:String;
      
      private var §6!Z§:Number;
      
      private var §,!A§:Number;
      
      private var §^S§:Number;
      
      private var §6-§:Number;
      
      private var §=!§:Number = 1.0;
      
      private var §9!#§:Boolean = true;
      
      public function §3!7§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8!G§ = param4;
         this.§6!Z§ = param5;
         this.§,!A§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§=!§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §@v§() : String
      {
         return this.§8!G§;
      }
      
      public function get x() : Number
      {
         return this.§6!Z§;
      }
      
      public function get y() : Number
      {
         return this.§,!A§;
      }
      
      public function set §<!I§(param1:Boolean) : void
      {
         this.§9!#§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>g§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§9!S§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §@j§.§7!O§(this.§@v§,param3)))
            {
               if(_loc5_ = param3.§0!F§(this.§@v§))
               {
                  (_loc4_ = new §;a§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§5]§) as Sprite)
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
               if(this.name == §5]§)
               {
                  if(!this.§9!#§)
                  {
                  }
               }
               _loc4_.scaleX = this.§=!§;
               _loc4_.scaleY = this.§=!§;
            }
            return false;
         }
         return true;
      }
      
      public function §#t§(param1:Number, param2:Number) : void
      {
         this.§^S§ = param1;
         this.§6-§ = param2;
      }
      
      override public function clone() : §60§
      {
         var _loc1_:§3!7§ = new §3!7§(time,duration,this.mName,this.§8!G§,this.§6!Z§,this.§,!A§,this.§=!§);
         _loc1_.§9!#§ = this.§9!#§;
         _loc1_.§^S§ = this.§^S§;
         _loc1_.§6-§ = this.§6-§;
         return _loc1_;
      }
   }
}
