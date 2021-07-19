package §8a§
{
   import §4W§.§!]§;
   import §4W§.§9b§;
   import §4W§.§>c§;
   import §`a§.§>?§;
   import §`a§.DisplayObject;
   import §`a§.DisplayObjectContainer;
   import §`a§.Sprite;
   
   public class §do§ extends §'!U§
   {
      
      public static const §5!%§:String = "background";
       
      
      private var mName:String;
      
      private var §8k§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §?l§:Number;
      
      private var §+G§:Number;
      
      private var §=l§:Number = 1.0;
      
      private var §>_§:Boolean = true;
      
      public function §do§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8k§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§=l§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §=P§() : String
      {
         return this.§8k§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §,T§(param1:Boolean) : void
      {
         this.§>_§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§>c§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §9b§.§3z§(this.§=P§,param3)))
            {
               if(_loc5_ = param3.§]]§(this.§=P§))
               {
                  (_loc4_ = new §>?§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§5!%§) as Sprite)
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
               if(this.name == §5!%§)
               {
                  if(!this.§>_§)
                  {
                  }
               }
               _loc4_.scaleX = this.§=l§;
               _loc4_.scaleY = this.§=l§;
            }
            return false;
         }
         return true;
      }
      
      public function §,L§(param1:Number, param2:Number) : void
      {
         this.§?l§ = param1;
         this.§+G§ = param2;
      }
      
      override public function clone() : §'!U§
      {
         var _loc1_:§do§ = new §do§(time,duration,this.mName,this.§8k§,this.mX,this.mY,this.§=l§);
         _loc1_.§>_§ = this.§>_§;
         _loc1_.§?l§ = this.§?l§;
         _loc1_.§+G§ = this.§+G§;
         return _loc1_;
      }
   }
}
