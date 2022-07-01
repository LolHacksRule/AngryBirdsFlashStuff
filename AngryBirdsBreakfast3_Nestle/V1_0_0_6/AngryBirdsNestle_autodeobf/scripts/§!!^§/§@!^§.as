package §!!^§
{
   import §,!q§.§+Q§;
   import §,!q§.DisplayObject;
   import §,!q§.DisplayObjectContainer;
   import §,!q§.Sprite;
   import §-!b§.§=!T§;
   import §-!b§.§[!3§;
   import §-!b§.§[E§;
   
   public class §@!^§ extends §,!@§
   {
      
      public static const §+4§:String = "background";
       
      
      private var mName:String;
      
      private var §3W§:String;
      
      private var §@S§:Number;
      
      private var §#B§:Number;
      
      private var §9z§:Number;
      
      private var §8#§:Number;
      
      private var §5!S§:Number = 1.0;
      
      private var §8Z§:Boolean = true;
      
      public function §@!^§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§3W§ = param4;
         this.§@S§ = param5;
         this.§#B§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§5!S§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §?u§() : String
      {
         return this.§3W§;
      }
      
      public function get x() : Number
      {
         return this.§@S§;
      }
      
      public function get y() : Number
      {
         return this.§#B§;
      }
      
      public function set §=!B§(param1:Boolean) : void
      {
         this.§8Z§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§[E§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§=!T§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §[!3§.§9!w§(this.§?u§,param3)))
            {
               if(_loc5_ = param3.§^"§(this.§?u§))
               {
                  (_loc4_ = new §+Q§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§+4§) as Sprite)
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
               if(this.name == §+4§)
               {
                  if(!this.§8Z§)
                  {
                  }
               }
               _loc4_.scaleX = this.§5!S§;
               _loc4_.scaleY = this.§5!S§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§9z§ = param1;
         this.§8#§ = param2;
      }
      
      override public function clone() : §,!@§
      {
         var _loc1_:§@!^§ = new §@!^§(time,duration,this.mName,this.§3W§,this.§@S§,this.§#B§,this.§5!S§);
         _loc1_.§8Z§ = this.§8Z§;
         _loc1_.§9z§ = this.§9z§;
         _loc1_.§8#§ = this.§8#§;
         return _loc1_;
      }
   }
}
