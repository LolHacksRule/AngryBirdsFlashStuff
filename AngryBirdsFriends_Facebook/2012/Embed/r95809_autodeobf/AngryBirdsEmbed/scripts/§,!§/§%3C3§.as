package §,!§
{
   import §->§.§2! §;
   import §->§.DisplayObject;
   import §->§.DisplayObjectContainer;
   import §->§.Sprite;
   import §[!$§.§"!%§;
   import §[!$§.§89§;
   import §[!$§.§>"§;
   
   public class §<3§ extends §4k§
   {
      
      public static const §%!0§:String = "background";
       
      
      private var mName:String;
      
      private var §`=§:String;
      
      private var §#d§:Number;
      
      private var §7^§:Number;
      
      private var § !;§:Number;
      
      private var §[&§:Number;
      
      private var §2a§:Number = 1.0;
      
      private var §"!>§:Boolean = true;
      
      public function §<3§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§`=§ = param4;
         this.§#d§ = param5;
         this.§7^§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§2a§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §&!?§() : String
      {
         return this.§`=§;
      }
      
      public function get x() : Number
      {
         return this.§#d§;
      }
      
      public function get y() : Number
      {
         return this.§7^§;
      }
      
      public function set § o§(param1:Boolean) : void
      {
         this.§"!>§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§"!%§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§89§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §>"§.§",§(this.§&!?§,param3)))
            {
               if(_loc5_ = param3.§<I§(this.§&!?§))
               {
                  (_loc4_ = new §2! §(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§%!0§) as Sprite)
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
               if(this.name == §%!0§)
               {
                  if(!this.§"!>§)
                  {
                  }
               }
               _loc4_.scaleX = this.§2a§;
               _loc4_.scaleY = this.§2a§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§ !;§ = param1;
         this.§[&§ = param2;
      }
      
      override public function clone() : §4k§
      {
         var _loc1_:§<3§ = new §<3§(time,duration,this.mName,this.§`=§,this.§#d§,this.§7^§,this.§2a§);
         _loc1_.§"!>§ = this.§"!>§;
         _loc1_.§ !;§ = this.§ !;§;
         _loc1_.§[&§ = this.§[&§;
         return _loc1_;
      }
   }
}
