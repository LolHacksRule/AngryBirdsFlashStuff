package §3A§
{
   import §<k§.§"!=§;
   import §<k§.DisplayObject;
   import §<k§.DisplayObjectContainer;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §[n§.§%U§;
   import §[n§.§?+§;
   
   public class §'h§ extends §-§
   {
      
      public static const §?s§:String = "background";
       
      
      private var mName:String;
      
      private var §[z§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §!0§:Number;
      
      private var §+K§:Number;
      
      private var §!v§:Number = 1.0;
      
      private var §6!$§:Boolean = true;
      
      public function §'h§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§[z§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§!v§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §6p§() : String
      {
         return this.§[z§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §8f§(param1:Boolean) : void
      {
         this.§6!$§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?+§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§#H§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §%U§.§^5§(this.§6p§,param3)))
            {
               if(_loc5_ = param3.§&P§(this.§6p§))
               {
                  (_loc4_ = new §"!=§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§?s§) as Sprite)
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
               if(this.name == §?s§)
               {
                  if(!this.§6!$§)
                  {
                  }
               }
               _loc4_.scaleX = this.§!v§;
               _loc4_.scaleY = this.§!v§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§!0§ = param1;
         this.§+K§ = param2;
      }
      
      override public function clone() : §-§
      {
         var _loc1_:§'h§ = new §'h§(time,duration,this.mName,this.§[z§,this.mX,this.mY,this.§!v§);
         _loc1_.§6!$§ = this.§6!$§;
         _loc1_.§!0§ = this.§!0§;
         _loc1_.§+K§ = this.§+K§;
         return _loc1_;
      }
   }
}
