package §"!@§
{
   import §+!]§.§!,§;
   import §+!]§.§+!=§;
   import §+!]§.§9+§;
   import §6!;§.§!>§;
   import §6!;§.DisplayObject;
   import §6!;§.DisplayObjectContainer;
   import §6!;§.Sprite;
   
   public class §3v§ extends §,!T§
   {
      
      public static const §?!E§:String = "background";
       
      
      private var mName:String;
      
      private var §]!9§:String;
      
      private var §5T§:Number;
      
      private var §![§:Number;
      
      private var §@S§:Number;
      
      private var §1!U§:Number;
      
      private var §^d§:Number = 1.0;
      
      private var §!!;§:Boolean = true;
      
      public function §3v§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§]!9§ = param4;
         this.§5T§ = param5;
         this.§![§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§^d§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get § !F§() : String
      {
         return this.§]!9§;
      }
      
      public function get x() : Number
      {
         return this.§5T§;
      }
      
      public function get y() : Number
      {
         return this.§![§;
      }
      
      public function set §^!A§(param1:Boolean) : void
      {
         this.§!!;§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!,§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§+!=§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §9+§.§&!]§(this.§ !F§,param3)))
            {
               if(_loc5_ = param3.§#P§(this.§ !F§))
               {
                  (_loc4_ = new §!>§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§?!E§) as Sprite)
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
               if(this.name == §?!E§)
               {
                  if(!this.§!!;§)
                  {
                  }
               }
               _loc4_.scaleX = this.§^d§;
               _loc4_.scaleY = this.§^d§;
            }
            return false;
         }
         return true;
      }
      
      public function §'!3§(param1:Number, param2:Number) : void
      {
         this.§@S§ = param1;
         this.§1!U§ = param2;
      }
      
      override public function clone() : §,!T§
      {
         var _loc1_:§3v§ = new §3v§(time,duration,this.mName,this.§]!9§,this.§5T§,this.§![§,this.§^d§);
         _loc1_.§!!;§ = this.§!!;§;
         _loc1_.§@S§ = this.§@S§;
         _loc1_.§1!U§ = this.§1!U§;
         return _loc1_;
      }
   }
}
