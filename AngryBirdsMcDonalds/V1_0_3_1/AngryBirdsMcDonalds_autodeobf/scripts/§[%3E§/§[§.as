package §[>§
{
   import § !%§.§0!U§;
   import § !%§.§6%§;
   import § !%§.§7!>§;
   import §&c§.§%!a§;
   import §&c§.DisplayObject;
   import §&c§.DisplayObjectContainer;
   import §&c§.Sprite;
   
   public class §[§ extends §?m§
   {
      
      public static const §2!i§:String = "background";
       
      
      private var mName:String;
      
      private var §^!2§:String;
      
      private var § !^§:Number;
      
      private var §0p§:Number;
      
      private var §+![§:Number;
      
      private var §]d§:Number;
      
      private var §#j§:Number = 1.0;
      
      private var §2!Y§:Boolean = true;
      
      public function §[§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§^!2§ = param4;
         this.§ !^§ = param5;
         this.§0p§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§#j§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §3H§() : String
      {
         return this.§^!2§;
      }
      
      public function get x() : Number
      {
         return this.§ !^§;
      }
      
      public function get y() : Number
      {
         return this.§0p§;
      }
      
      public function set §[!,§(param1:Boolean) : void
      {
         this.§2!Y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§0!U§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §6%§.§>!o§(this.§3H§,param3)))
            {
               if(_loc5_ = param3.§1m§(this.§3H§))
               {
                  (_loc4_ = new §%!a§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§2!i§) as Sprite)
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
               if(this.name == §2!i§)
               {
                  if(!this.§2!Y§)
                  {
                  }
               }
               _loc4_.scaleX = this.§#j§;
               _loc4_.scaleY = this.§#j§;
            }
            return false;
         }
         return true;
      }
      
      public function §#!4§(param1:Number, param2:Number) : void
      {
         this.§+![§ = param1;
         this.§]d§ = param2;
      }
      
      override public function clone() : §?m§
      {
         var _loc1_:§[§ = new §[§(time,duration,this.mName,this.§^!2§,this.§ !^§,this.§0p§,this.§#j§);
         _loc1_.§2!Y§ = this.§2!Y§;
         _loc1_.§+![§ = this.§+![§;
         _loc1_.§]d§ = this.§]d§;
         return _loc1_;
      }
   }
}
