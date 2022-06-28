package §9!7§
{
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.DisplayObjectContainer;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§49§;
   import §5`§.§?y§;
   
   public class §9v§ extends §`E§
   {
      
      public static const §6!-§:String = "background";
       
      
      private var mName:String;
      
      private var §^P§:String;
      
      private var §^C§:Number;
      
      private var §0§:Number;
      
      private var §5;§:Number;
      
      private var §>!'§:Number;
      
      private var §+'§:Number = 1.0;
      
      private var §%J§:Boolean = true;
      
      public function §9v§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§^P§ = param4;
         this.§^C§ = param5;
         this.§0§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§+'§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §#!§() : String
      {
         return this.§^P§;
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function set § T§(param1:Boolean) : void
      {
         this.§%J§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§%F§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §49§.§"4§(this.§#!§,param3)))
            {
               if(_loc5_ = param3.§9,§(this.§#!§))
               {
                  (_loc4_ = new §4K§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§6!-§) as Sprite)
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
               if(this.name == §6!-§)
               {
                  if(!this.§%J§)
                  {
                  }
               }
               _loc4_.scaleX = this.§+'§;
               _loc4_.scaleY = this.§+'§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§5;§ = param1;
         this.§>!'§ = param2;
      }
      
      override public function clone() : §`E§
      {
         var _loc1_:§9v§ = new §9v§(time,duration,this.mName,this.§^P§,this.§^C§,this.§0§,this.§+'§);
         _loc1_.§%J§ = this.§%J§;
         _loc1_.§5;§ = this.§5;§;
         _loc1_.§>!'§ = this.§>!'§;
         return _loc1_;
      }
   }
}
