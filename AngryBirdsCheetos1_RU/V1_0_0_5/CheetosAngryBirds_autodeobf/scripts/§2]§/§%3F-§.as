package §2]§
{
   import §@!§.§ !N§;
   import §@!§.§>!4§;
   import §@!§.§?! §;
   import §null §.§%!G§;
   import §null §.DisplayObject;
   import §null §.DisplayObjectContainer;
   import §null §.Sprite;
   
   public class §?-§ extends §#!F§
   {
      
      public static const §]$§:String = "background";
       
      
      private var mName:String;
      
      private var §%!S§:String;
      
      private var §+!L§:Number;
      
      private var §!;§:Number;
      
      private var §`!S§:Number;
      
      private var §]n§:Number;
      
      private var §!R§:Number = 1.0;
      
      private var §8!"§:Boolean = true;
      
      public function §?-§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§%!S§ = param4;
         this.§+!L§ = param5;
         this.§!;§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§!R§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §0!A§() : String
      {
         return this.§%!S§;
      }
      
      public function get x() : Number
      {
         return this.§+!L§;
      }
      
      public function get y() : Number
      {
         return this.§!;§;
      }
      
      public function set § !"§(param1:Boolean) : void
      {
         this.§8!"§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?! §) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§ !N§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §>!4§.§+!<§(this.§0!A§,param3)))
            {
               if(_loc5_ = param3.§-J§(this.§0!A§))
               {
                  (_loc4_ = new §%!G§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§]$§) as Sprite)
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
               if(this.name == §]$§)
               {
                  if(!this.§8!"§)
                  {
                  }
               }
               _loc4_.scaleX = this.§!R§;
               _loc4_.scaleY = this.§!R§;
            }
            return false;
         }
         return true;
      }
      
      public function §<x§(param1:Number, param2:Number) : void
      {
         this.§`!S§ = param1;
         this.§]n§ = param2;
      }
      
      override public function clone() : §#!F§
      {
         var _loc1_:§?-§ = new §?-§(time,duration,this.mName,this.§%!S§,this.§+!L§,this.§!;§,this.§!R§);
         _loc1_.§8!"§ = this.§8!"§;
         _loc1_.§`!S§ = this.§`!S§;
         _loc1_.§]n§ = this.§]n§;
         return _loc1_;
      }
   }
}
