package §2!#§
{
   import §-!0§.§'!3§;
   import §-!0§.§9X§;
   import §-!0§.§[!-§;
   import §?^§.§8!?§;
   import §?^§.DisplayObject;
   import §?^§.DisplayObjectContainer;
   import §?^§.Sprite;
   
   public class §>R§ extends §,1§
   {
      
      public static const §1S§:String = "background";
       
      
      private var mName:String;
      
      private var §'!$§:String;
      
      private var §5!>§:Number;
      
      private var §#!$§:Number;
      
      private var §9p§:Number;
      
      private var §9`§:Number;
      
      private var §3j§:Number = 1.0;
      
      private var §0Z§:Boolean = true;
      
      public function §>R§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§'!$§ = param4;
         this.§5!>§ = param5;
         this.§#!$§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§3j§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §`!&§() : String
      {
         return this.§'!$§;
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function set override(param1:Boolean) : void
      {
         this.§0Z§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§9X§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §[!-§.§["§(this.§`!&§,param3)))
            {
               if(_loc5_ = param3.§4K§(this.§`!&§))
               {
                  (_loc4_ = new §8!?§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§1S§) as Sprite)
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
               if(this.name == §1S§)
               {
                  if(!this.§0Z§)
                  {
                  }
               }
               _loc4_.scaleX = this.§3j§;
               _loc4_.scaleY = this.§3j§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§9p§ = param1;
         this.§9`§ = param2;
      }
      
      override public function clone() : §,1§
      {
         var _loc1_:§>R§ = new §>R§(time,duration,this.mName,this.§'!$§,this.§5!>§,this.§#!$§,this.§3j§);
         _loc1_.§0Z§ = this.§0Z§;
         _loc1_.§9p§ = this.§9p§;
         _loc1_.§9`§ = this.§9`§;
         return _loc1_;
      }
   }
}
