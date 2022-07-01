package §]!]§
{
   import §0!_§.§!!G§;
   import §0!_§.§%;§;
   import §0!_§.§19§;
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   import §`!B§.DisplayObjectContainer;
   import §`!B§.Sprite;
   
   public class §@Y§ extends §;Y§
   {
      
      public static const §=!5§:String = "background";
       
      
      private var mName:String;
      
      private var §,!c§:String;
      
      private var §0O§:Number;
      
      private var §=!v§:Number;
      
      private var §5"5§:Number;
      
      private var §"!i§:Number;
      
      private var §8U§:Number = 1.0;
      
      private var §4f§:Boolean = true;
      
      public function §@Y§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§,!c§ = param4;
         this.§0O§ = param5;
         this.§=!v§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§8U§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §[!v§() : String
      {
         return this.§,!c§;
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function set §@!J§(param1:Boolean) : void
      {
         this.§4f§ = param1;
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
            if(!(_loc4_ = §%;§.§7"2§(this.§[!v§,param3)))
            {
               if(_loc5_ = param3.§<!z§(this.§[!v§))
               {
                  (_loc4_ = new § l§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§=!5§) as Sprite)
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
               if(this.name == §=!5§)
               {
                  if(!this.§4f§)
                  {
                  }
               }
               _loc4_.scaleX = this.§8U§;
               _loc4_.scaleY = this.§8U§;
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
      
      override public function clone() : §;Y§
      {
         var _loc1_:§@Y§ = new §@Y§(time,duration,this.mName,this.§,!c§,this.§0O§,this.§=!v§,this.§8U§);
         _loc1_.§4f§ = this.§4f§;
         _loc1_.§5"5§ = this.§5"5§;
         _loc1_.§"!i§ = this.§"!i§;
         return _loc1_;
      }
   }
}
