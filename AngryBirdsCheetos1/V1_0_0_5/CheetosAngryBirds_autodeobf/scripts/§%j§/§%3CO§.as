package §%j§
{
   import §!!R§.§#q§;
   import §!!R§.DisplayObject;
   import §!!R§.DisplayObjectContainer;
   import §!!R§.Sprite;
   import §&!W§.§&!$§;
   import §&!W§.§2!'§;
   import §&!W§.§8!K§;
   
   public class §<O§ extends §;!X§
   {
      
      public static const §,L§:String = "background";
       
      
      private var mName:String;
      
      private var §do§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §6!>§:Number;
      
      private var §?l§:Number;
      
      private var §8k§:Number = 1.0;
      
      private var §2-§:Boolean = true;
      
      public function §<O§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§do§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§8k§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §=l§() : String
      {
         return this.§do§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §=P§(param1:Boolean) : void
      {
         this.§2-§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§8!K§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§&!$§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §2!'§.§^l§(this.§=l§,param3)))
            {
               if(_loc5_ = param3.§"7§(this.§=l§))
               {
                  (_loc4_ = new §#q§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§,L§) as Sprite)
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
               if(this.name == §,L§)
               {
                  if(!this.§2-§)
                  {
                  }
               }
               _loc4_.scaleX = this.§8k§;
               _loc4_.scaleY = this.§8k§;
            }
            return false;
         }
         return true;
      }
      
      public function §,T§(param1:Number, param2:Number) : void
      {
         this.§6!>§ = param1;
         this.§?l§ = param2;
      }
      
      override public function clone() : §;!X§
      {
         var _loc1_:§<O§ = new §<O§(time,duration,this.mName,this.§do§,this.mX,this.mY,this.§8k§);
         _loc1_.§2-§ = this.§2-§;
         _loc1_.§6!>§ = this.§6!>§;
         _loc1_.§?l§ = this.§?l§;
         return _loc1_;
      }
   }
}
