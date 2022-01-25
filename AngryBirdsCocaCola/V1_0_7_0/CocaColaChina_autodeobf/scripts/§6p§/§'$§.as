package §6p§
{
   import §,!Q§.§%^§;
   import §,!Q§.DisplayObject;
   import §,!Q§.DisplayObjectContainer;
   import §,!Q§.Sprite;
   import §2l§.§#!#§;
   import §2l§.§4!Q§;
   import §2l§.§]O§;
   
   public class §'$§ extends §6!Y§
   {
      
      public static const §9![§:String = "background";
       
      
      private var mName:String;
      
      private var §`H§:String;
      
      private var §03§:Number;
      
      private var §5,§:Number;
      
      private var §8a§:Number;
      
      private var §[K§:Number;
      
      private var §9q§:Number = 1.0;
      
      private var §60§:Boolean = true;
      
      public function §'$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§`H§ = param4;
         this.§03§ = param5;
         this.§5,§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§9q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §!;§() : String
      {
         return this.§`H§;
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function set §6!5§(param1:Boolean) : void
      {
         this.§60§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§]O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§4!Q§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §#!#§.§'S§(this.§!;§,param3)))
            {
               if(_loc5_ = param3.§!v§(this.§!;§))
               {
                  (_loc4_ = new §%^§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§9![§) as Sprite)
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
               if(this.name == §9![§)
               {
                  if(!this.§60§)
                  {
                  }
               }
               _loc4_.scaleX = this.§9q§;
               _loc4_.scaleY = this.§9q§;
            }
            return false;
         }
         return true;
      }
      
      public function §7g§(param1:Number, param2:Number) : void
      {
         this.§8a§ = param1;
         this.§[K§ = param2;
      }
      
      override public function clone() : §6!Y§
      {
         var _loc1_:§'$§ = new §'$§(time,duration,this.mName,this.§`H§,this.§03§,this.§5,§,this.§9q§);
         _loc1_.§60§ = this.§60§;
         _loc1_.§8a§ = this.§8a§;
         _loc1_.§[K§ = this.§[K§;
         return _loc1_;
      }
   }
}
