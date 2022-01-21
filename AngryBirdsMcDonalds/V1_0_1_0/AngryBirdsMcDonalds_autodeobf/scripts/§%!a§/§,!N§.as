package §%!a§
{
   import §&[§.§&!m§;
   import §&[§.§,!"§;
   import §&[§.§3!I§;
   import §2!g§.§<7§;
   import §2!g§.DisplayObject;
   import §2!g§.DisplayObjectContainer;
   import §2!g§.Sprite;
   
   public class §,!N§ extends §`!3§
   {
      
      public static const §+!V§:String = "background";
       
      
      private var mName:String;
      
      private var §var §:String;
      
      private var §;b§:Number;
      
      private var §[!5§:Number;
      
      private var §0F§:Number;
      
      private var §;;§:Number;
      
      private var §6&§:Number = 1.0;
      
      private var §-!F§:Boolean = true;
      
      public function §,!N§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§var § = param4;
         this.§;b§ = param5;
         this.§[!5§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§6&§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §^!H§() : String
      {
         return this.§var §;
      }
      
      public function get x() : Number
      {
         return this.§;b§;
      }
      
      public function get y() : Number
      {
         return this.§[!5§;
      }
      
      public function set §7d§(param1:Boolean) : void
      {
         this.§-!F§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§,!"§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §3!I§.§;n§(this.§^!H§,param3)))
            {
               if(_loc5_ = param3.§4!0§(this.§^!H§))
               {
                  (_loc4_ = new §<7§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§+!V§) as Sprite)
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
               if(this.name == §+!V§)
               {
                  if(!this.§-!F§)
                  {
                  }
               }
               _loc4_.scaleX = this.§6&§;
               _loc4_.scaleY = this.§6&§;
            }
            return false;
         }
         return true;
      }
      
      public function §6!@§(param1:Number, param2:Number) : void
      {
         this.§0F§ = param1;
         this.§;;§ = param2;
      }
      
      override public function clone() : §`!3§
      {
         var _loc1_:§,!N§ = new §,!N§(time,duration,this.mName,this.§var §,this.§;b§,this.§[!5§,this.§6&§);
         _loc1_.§-!F§ = this.§-!F§;
         _loc1_.§0F§ = this.§0F§;
         _loc1_.§;;§ = this.§;;§;
         return _loc1_;
      }
   }
}
