package §"",§
{
   import §-![§.§3!i§;
   import §-![§.DisplayObject;
   import §-![§.DisplayObjectContainer;
   import §-![§.Sprite;
   import §6`§.§2a§;
   import §6`§.§8"&§;
   import §6`§.§[!h§;
   
   public class §[!0§ extends §`=§
   {
      
      public static const §7>§:String = "background";
       
      
      private var mName:String;
      
      private var §3"'§:String;
      
      private var §@!-§:Number;
      
      private var §'!0§:Number;
      
      private var §""7§:Number;
      
      private var §%>§:Number;
      
      private var §^y§:Number = 1.0;
      
      private var §>!I§:Boolean = true;
      
      public function §[!0§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§3"'§ = param4;
         this.§@!-§ = param5;
         this.§'!0§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§^y§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §8!Z§() : String
      {
         return this.§3"'§;
      }
      
      public function get x() : Number
      {
         return this.§@!-§;
      }
      
      public function get y() : Number
      {
         return this.§'!0§;
      }
      
      public function set §;0§(param1:Boolean) : void
      {
         this.§>!I§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§8"&§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §[!h§.§7S§(this.§8!Z§,param3)))
            {
               if(_loc5_ = param3.§&l§(this.§8!Z§))
               {
                  (_loc4_ = new §3!i§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§7>§) as Sprite)
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
               if(this.name == §7>§)
               {
                  if(!this.§>!I§)
                  {
                  }
               }
               _loc4_.scaleX = this.§^y§;
               _loc4_.scaleY = this.§^y§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§""7§ = param1;
         this.§%>§ = param2;
      }
      
      override public function clone() : §`=§
      {
         var _loc1_:§[!0§ = new §[!0§(time,duration,this.mName,this.§3"'§,this.§@!-§,this.§'!0§,this.§^y§);
         _loc1_.§>!I§ = this.§>!I§;
         _loc1_.§""7§ = this.§""7§;
         _loc1_.§%>§ = this.§%>§;
         return _loc1_;
      }
   }
}
