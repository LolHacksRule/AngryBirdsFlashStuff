package §[!<§
{
   import §%-§.§%!,§;
   import §%-§.DisplayObject;
   import §%-§.DisplayObjectContainer;
   import §%-§.Sprite;
   import §<h§.§-!0§;
   import §<h§.§;@§;
   import §<h§.§]^§;
   
   public class §6u§ extends §#v§
   {
      
      public static const override:String = "background";
       
      
      private var mName:String;
      
      private var §>R§:String;
      
      private var §5!>§:Number;
      
      private var §#!$§:Number;
      
      private var §9Q§:Number;
      
      private var §9p§:Number;
      
      private var §'!$§:Number = 1.0;
      
      private var §8!F§:Boolean = true;
      
      public function §6u§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§>R§ = param4;
         this.§5!>§ = param5;
         this.§#!$§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§'!$§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §3j§() : String
      {
         return this.§>R§;
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function set §`!&§(param1:Boolean) : void
      {
         this.§8!F§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§;@§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§]^§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §-!0§.§"1§(this.§3j§,param3)))
            {
               if(_loc5_ = param3.§-+§(this.§3j§))
               {
                  (_loc4_ = new §%!,§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(override) as Sprite)
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
               if(this.name == override)
               {
                  if(!this.§8!F§)
                  {
                  }
               }
               _loc4_.scaleX = this.§'!$§;
               _loc4_.scaleY = this.§'!$§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§9Q§ = param1;
         this.§9p§ = param2;
      }
      
      override public function clone() : §#v§
      {
         var _loc1_:§6u§ = new §6u§(time,duration,this.mName,this.§>R§,this.§5!>§,this.§#!$§,this.§'!$§);
         _loc1_.§8!F§ = this.§8!F§;
         _loc1_.§9Q§ = this.§9Q§;
         _loc1_.§9p§ = this.§9p§;
         return _loc1_;
      }
   }
}
