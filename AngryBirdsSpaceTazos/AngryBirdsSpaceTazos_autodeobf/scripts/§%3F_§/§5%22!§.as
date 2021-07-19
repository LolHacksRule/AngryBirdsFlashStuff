package §?_§
{
   import §4&§.§ j§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.DisplayObjectContainer;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   
   public class §5"!§ extends §3'§
   {
      
      public static const §!#§:String = "background";
       
      
      private var mName:String;
      
      private var §6K§:String;
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §<!f§:Number;
      
      private var §8>§:Number;
      
      private var §8T§:Number = 1.0;
      
      private var §=w§:Boolean = true;
      
      public function §5"!§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§6K§ = param4;
         this.§""4§ = param5;
         this.§%W§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§8T§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §[e§() : String
      {
         return this.§6K§;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function set §"n§(param1:Boolean) : void
      {
         this.§=w§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'!"§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = § j§.§8!x§(this.§[e§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§[e§))
               {
                  (_loc4_ = new §`y§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§!#§) as Sprite)
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
               if(this.name == §!#§)
               {
                  if(!this.§=w§)
                  {
                  }
               }
               _loc4_.scaleX = this.§8T§;
               _loc4_.scaleY = this.§8T§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<!f§ = param1;
         this.§8>§ = param2;
      }
      
      override public function clone() : §3'§
      {
         var _loc1_:§5"!§ = new §5"!§(time,duration,this.mName,this.§6K§,this.§""4§,this.§%W§,this.§8T§);
         _loc1_.§=w§ = this.§=w§;
         _loc1_.§<!f§ = this.§<!f§;
         _loc1_.§8>§ = this.§8>§;
         return _loc1_;
      }
   }
}
