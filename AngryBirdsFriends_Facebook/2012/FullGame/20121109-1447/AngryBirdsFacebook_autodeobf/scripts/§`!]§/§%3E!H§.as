package §`!]§
{
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.DisplayObjectContainer;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   import §6!D§.§3!K§;
   import §6!D§.§9R§;
   
   public class §>!H§ extends §>!D§
   {
      
      public static const §>J§:String = "background";
       
      
      private var mName:String;
      
      private var §5!s§:String;
      
      private var §,!k§:Number;
      
      private var §!Q§:Number;
      
      private var §`w§:Number;
      
      private var §%m§:Number;
      
      private var §,!U§:Number = 1.0;
      
      private var §"!B§:Boolean = true;
      
      public function §>!H§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§5!s§ = param4;
         this.§,!k§ = param5;
         this.§!Q§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§,!U§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §&z§() : String
      {
         return this.§5!s§;
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function set §9!M§(param1:Boolean) : void
      {
         this.§"!B§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§3!K§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §9R§.§ C§(this.§&z§,param3)))
            {
               if(_loc5_ = param3.§>s§(this.§&z§))
               {
                  (_loc4_ = new §0!N§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§>J§) as Sprite)
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
               if(this.name == §>J§)
               {
                  if(!this.§"!B§)
                  {
                  }
               }
               _loc4_.scaleX = this.§,!U§;
               _loc4_.scaleY = this.§,!U§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§`w§ = param1;
         this.§%m§ = param2;
      }
      
      override public function clone() : §>!D§
      {
         var _loc1_:§>!H§ = new §>!H§(time,duration,this.mName,this.§5!s§,this.§,!k§,this.§!Q§,this.§,!U§);
         _loc1_.§"!B§ = this.§"!B§;
         _loc1_.§`w§ = this.§`w§;
         _loc1_.§%m§ = this.§%m§;
         return _loc1_;
      }
   }
}
