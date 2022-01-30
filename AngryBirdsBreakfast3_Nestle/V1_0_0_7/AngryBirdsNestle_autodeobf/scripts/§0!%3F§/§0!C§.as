package §0!?§
{
   import § !=§.§0F§;
   import § !=§.DisplayObject;
   import § !=§.DisplayObjectContainer;
   import § !=§.Sprite;
   import §;L§.§"!X§;
   import §;L§.§?D§;
   import §;L§.§[!H§;
   
   public class §0!C§ extends §&!G§
   {
      
      public static const §2I§:String = "background";
       
      
      private var mName:String;
      
      private var §^!>§:String;
      
      private var §'!a§:Number;
      
      private var §[6§:Number;
      
      private var §`!p§:Number;
      
      private var §<c§:Number;
      
      private var §4!O§:Number = 1.0;
      
      private var §9O§:Boolean = true;
      
      public function §0!C§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§^!>§ = param4;
         this.§'!a§ = param5;
         this.§[6§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§4!O§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §=]§() : String
      {
         return this.§^!>§;
      }
      
      public function get x() : Number
      {
         return this.§'!a§;
      }
      
      public function get y() : Number
      {
         return this.§[6§;
      }
      
      public function set §;N§(param1:Boolean) : void
      {
         this.§9O§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§"!X§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§[!H§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §?D§.§!"3§(this.§=]§,param3)))
            {
               if(_loc5_ = param3.§""#§(this.§=]§))
               {
                  (_loc4_ = new §0F§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§2I§) as Sprite)
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
               if(this.name == §2I§)
               {
                  if(!this.§9O§)
                  {
                  }
               }
               _loc4_.scaleX = this.§4!O§;
               _loc4_.scaleY = this.§4!O§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§`!p§ = param1;
         this.§<c§ = param2;
      }
      
      override public function clone() : §&!G§
      {
         var _loc1_:§0!C§ = new §0!C§(time,duration,this.mName,this.§^!>§,this.§'!a§,this.§[6§,this.§4!O§);
         _loc1_.§9O§ = this.§9O§;
         _loc1_.§`!p§ = this.§`!p§;
         _loc1_.§<c§ = this.§<c§;
         return _loc1_;
      }
   }
}
