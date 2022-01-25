package §?l§
{
   import §0@§.§1]§;
   import §0@§.DisplayObject;
   import §0@§.DisplayObjectContainer;
   import §0@§.Sprite;
   import §7! §.§%!h§;
   import §7! §.§3!<§;
   import §7! §.§4n§;
   
   public class §7!T§ extends §0!W§
   {
      
      public static const §;5§:String = "background";
       
      
      private var mName:String;
      
      private var §]!A§:String;
      
      private var §=!=§:Number;
      
      private var §[!;§:Number;
      
      private var §"§:Number;
      
      private var §&'§:Number;
      
      private var §,!S§:Number = 1.0;
      
      private var §+I§:Boolean = true;
      
      public function §7!T§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§]!A§ = param4;
         this.§=!=§ = param5;
         this.§[!;§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§,!S§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §<!o§() : String
      {
         return this.§]!A§;
      }
      
      public function get x() : Number
      {
         return this.§=!=§;
      }
      
      public function get y() : Number
      {
         return this.§[!;§;
      }
      
      public function set §]!2§(param1:Boolean) : void
      {
         this.§+I§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4n§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§%!h§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §3!<§.§8E§(this.§<!o§,param3)))
            {
               if(_loc5_ = param3.§-f§(this.§<!o§))
               {
                  (_loc4_ = new §1]§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§;5§) as Sprite)
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
               if(this.name == §;5§)
               {
                  if(!this.§+I§)
                  {
                  }
               }
               _loc4_.scaleX = this.§,!S§;
               _loc4_.scaleY = this.§,!S§;
            }
            return false;
         }
         return true;
      }
      
      public function §%!e§(param1:Number, param2:Number) : void
      {
         this.§"§ = param1;
         this.§&'§ = param2;
      }
      
      override public function clone() : §0!W§
      {
         var _loc1_:§7!T§ = new §7!T§(time,duration,this.mName,this.§]!A§,this.§=!=§,this.§[!;§,this.§,!S§);
         _loc1_.§+I§ = this.§+I§;
         _loc1_.§"§ = this.§"§;
         _loc1_.§&'§ = this.§&'§;
         return _loc1_;
      }
   }
}
