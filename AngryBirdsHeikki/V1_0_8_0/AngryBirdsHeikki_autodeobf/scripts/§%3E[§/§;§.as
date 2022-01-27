package §>[§
{
   import §=!E§.DisplayObject;
   import §=!E§.DisplayObjectContainer;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §]!C§.§'!!§;
   import §]!C§.§0!d§;
   import §]!C§.§@!0§;
   
   public class §;§ extends §%!U§
   {
      
      public static const §,!E§:String = "background";
       
      
      private var mName:String;
      
      private var §3y§:String;
      
      private var §[!#§:Number;
      
      private var §?=§:Number;
      
      private var §+L§:Number;
      
      private var §<!@§:Number;
      
      private var §?;§:Number = 1.0;
      
      private var §<c§:Boolean = true;
      
      public function §;§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§3y§ = param4;
         this.§[!#§ = param5;
         this.§?=§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§?;§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §=p§() : String
      {
         return this.§3y§;
      }
      
      public function get x() : Number
      {
         return this.§[!#§;
      }
      
      public function get y() : Number
      {
         return this.§?=§;
      }
      
      public function set §8!D§(param1:Boolean) : void
      {
         this.§<c§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!d§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'!!§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §@!0§.§=V§(this.§=p§,param3)))
            {
               if(_loc5_ = param3.§]!B§(this.§=p§))
               {
                  (_loc4_ = new §try§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§,!E§) as Sprite)
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
               if(this.name == §,!E§)
               {
                  if(!this.§<c§)
                  {
                  }
               }
               _loc4_.scaleX = this.§?;§;
               _loc4_.scaleY = this.§?;§;
            }
            return false;
         }
         return true;
      }
      
      public function §"!C§(param1:Number, param2:Number) : void
      {
         this.§+L§ = param1;
         this.§<!@§ = param2;
      }
      
      override public function clone() : §%!U§
      {
         var _loc1_:§;§ = new §;§(time,duration,this.mName,this.§3y§,this.§[!#§,this.§?=§,this.§?;§);
         _loc1_.§<c§ = this.§<c§;
         _loc1_.§+L§ = this.§+L§;
         _loc1_.§<!@§ = this.§<!@§;
         return _loc1_;
      }
   }
}
