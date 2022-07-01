package §<1§
{
   import §0!_§.§!!G§;
   import §0!_§.§%;§;
   import §0!_§.§19§;
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   import §`!B§.DisplayObjectContainer;
   import §`!B§.Sprite;
   
   public class §,!c§ extends §@",§
   {
      
      public static const §^!=§:String = "background";
       
      
      private var mName:String;
      
      private var §8U§:String;
      
      private var §0O§:Number;
      
      private var §=!v§:Number;
      
      private var §5"5§:Number;
      
      private var §"!i§:Number;
      
      private var §[!v§:Number = 1.0;
      
      private var §[!;§:Boolean = true;
      
      public function §,!c§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8U§ = param4;
         this.§0O§ = param5;
         this.§=!v§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§[!v§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §@!J§() : String
      {
         return this.§8U§;
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function set §=!5§(param1:Boolean) : void
      {
         this.§[!;§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!!G§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§19§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §%;§.§7"2§(this.§@!J§,param3)))
            {
               if(_loc5_ = param3.§<!z§(this.§@!J§))
               {
                  (_loc4_ = new § l§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§^!=§) as Sprite)
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
               if(this.name == §^!=§)
               {
                  if(!this.§[!;§)
                  {
                  }
               }
               _loc4_.scaleX = this.§[!v§;
               _loc4_.scaleY = this.§[!v§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§5"5§ = param1;
         this.§"!i§ = param2;
      }
      
      override public function clone() : §@",§
      {
         var _loc1_:§,!c§ = new §,!c§(time,duration,this.mName,this.§8U§,this.§0O§,this.§=!v§,this.§[!v§);
         _loc1_.§[!;§ = this.§[!;§;
         _loc1_.§5"5§ = this.§5"5§;
         _loc1_.§"!i§ = this.§"!i§;
         return _loc1_;
      }
   }
}
