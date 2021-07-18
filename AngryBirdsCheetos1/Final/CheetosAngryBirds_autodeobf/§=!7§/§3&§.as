package §=!7§
{
   import § `§.§2w§;
   import § `§.§6!=§;
   import § `§.§>o§;
   import §]@§.DisplayObject;
   import §]@§.DisplayObjectContainer;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   
   public class §3&§ extends §%f§
   {
      
      public static const §[!M§:String = "background";
       
      
      private var mName:String;
      
      private var §8?§:String;
      
      private var §<!Y§:Number;
      
      private var § l§:Number;
      
      private var §^!I§:Number;
      
      private var §,!X§:Number;
      
      private var §'p§:Number = 1.0;
      
      private var get:Boolean = true;
      
      public function §3&§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8?§ = param4;
         this.§<!Y§ = param5;
         this.§ l§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§'p§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §87§() : String
      {
         return this.§8?§;
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function set §true §(param1:Boolean) : void
      {
         this.get = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!=§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §>o§.§#]§(this.§87§,param3)))
            {
               if(_loc5_ = param3.§4!,§(this.§87§))
               {
                  (_loc4_ = new §`!C§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§[!M§) as Sprite)
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
               if(this.name == §[!M§)
               {
                  if(!this.get)
                  {
                  }
               }
               _loc4_.scaleX = this.§'p§;
               _loc4_.scaleY = this.§'p§;
            }
            return false;
         }
         return true;
      }
      
      public function §%r§(param1:Number, param2:Number) : void
      {
         this.§^!I§ = param1;
         this.§,!X§ = param2;
      }
      
      override public function clone() : §%f§
      {
         var _loc1_:§3&§ = new §3&§(time,duration,this.mName,this.§8?§,this.§<!Y§,this.§ l§,this.§'p§);
         _loc1_.get = this.get;
         _loc1_.§^!I§ = this.§^!I§;
         _loc1_.§,!X§ = this.§,!X§;
         return _loc1_;
      }
   }
}
