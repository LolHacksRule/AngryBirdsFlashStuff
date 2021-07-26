package §`@§
{
   import §#?§.§%C§;
   import §#?§.§6!4§;
   import §#?§.§^@§;
   import §90§.§8S§;
   import §90§.DisplayObject;
   import §90§.DisplayObjectContainer;
   import §90§.Sprite;
   
   public class §<Y§ extends §[!"§
   {
      
      public static const §;5§:String = "background";
       
      
      private var mName:String;
      
      private var §#&§:String;
      
      private var §;!>§:Number;
      
      private var §8<§:Number;
      
      private var §?U§:Number;
      
      private var §continue§:Number;
      
      private var §83§:Number = 1.0;
      
      private var §!!O§:Boolean = true;
      
      public function §<Y§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§#&§ = param4;
         this.§;!>§ = param5;
         this.§8<§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§83§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9!H§() : String
      {
         return this.§#&§;
      }
      
      public function get x() : Number
      {
         return this.§;!>§;
      }
      
      public function get y() : Number
      {
         return this.§8<§;
      }
      
      public function set §!B§(param1:Boolean) : void
      {
         this.§!!O§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!4§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§^@§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §%C§.§ N§(this.§9!H§,param3)))
            {
               if(_loc5_ = param3.§>]§(this.§9!H§))
               {
                  (_loc4_ = new §8S§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§;5§) as Sprite)
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
               if(this.name == §;5§)
               {
                  if(!this.§!!O§)
                  {
                  }
               }
               _loc4_.scaleX = this.§83§;
               _loc4_.scaleY = this.§83§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§?U§ = param1;
         this.§continue§ = param2;
      }
      
      override public function clone() : §[!"§
      {
         var _loc1_:§<Y§ = new §<Y§(time,duration,this.mName,this.§#&§,this.§;!>§,this.§8<§,this.§83§);
         _loc1_.§!!O§ = this.§!!O§;
         _loc1_.§?U§ = this.§?U§;
         _loc1_.§continue§ = this.§continue§;
         return _loc1_;
      }
   }
}
