package §`!,§
{
   import §,H§.§;!9§;
   import §,H§.DisplayObject;
   import §,H§.DisplayObjectContainer;
   import §,H§.Sprite;
   import §2!4§.§3&§;
   import §2!4§.§5T§;
   import §2!4§.§>5§;
   
   public class §`x§ extends §&H§
   {
      
      public static const §6! §:String = "background";
       
      
      private var mName:String;
      
      private var §4Y§:String;
      
      private var §,!_§:Number;
      
      private var §4b§:Number;
      
      private var §,!E§:Number;
      
      private var §''§:Number;
      
      private var §%!B§:Number = 1.0;
      
      private var §89§:Boolean = true;
      
      public function §`x§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§4Y§ = param4;
         this.§,!_§ = param5;
         this.§4b§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§%!B§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §1!V§() : String
      {
         return this.§4Y§;
      }
      
      public function get x() : Number
      {
         return this.§,!_§;
      }
      
      public function get y() : Number
      {
         return this.§4b§;
      }
      
      public function set §[!R§(param1:Boolean) : void
      {
         this.§89§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5T§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§>5§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §3&§.§'g§(this.§1!V§,param3)))
            {
               if(_loc5_ = param3.§]N§(this.§1!V§))
               {
                  (_loc4_ = new §;!9§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§6! §) as Sprite)
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
               if(this.name == §6! §)
               {
                  if(!this.§89§)
                  {
                  }
               }
               _loc4_.scaleX = this.§%!B§;
               _loc4_.scaleY = this.§%!B§;
            }
            return false;
         }
         return true;
      }
      
      public function §;0§(param1:Number, param2:Number) : void
      {
         this.§,!E§ = param1;
         this.§''§ = param2;
      }
      
      override public function clone() : §&H§
      {
         var _loc1_:§`x§ = new §`x§(time,duration,this.mName,this.§4Y§,this.§,!_§,this.§4b§,this.§%!B§);
         _loc1_.§89§ = this.§89§;
         _loc1_.§,!E§ = this.§,!E§;
         _loc1_.§''§ = this.§''§;
         return _loc1_;
      }
   }
}
