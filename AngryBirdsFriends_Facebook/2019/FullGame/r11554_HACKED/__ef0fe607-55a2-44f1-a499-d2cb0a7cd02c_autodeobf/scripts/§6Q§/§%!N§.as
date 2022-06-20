package §6Q§
{
   import §!6§.DisplayObject;
   import §!6§.DisplayObjectContainer;
   import §!6§.Image;
   import §!6§.Sprite;
   import §^"[§.§6"M§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   
   public class §%!N§ extends §?d§
   {
      
      public static const §,#9§:String = "background";
       
      
      private var §-!O§:String;
      
      private var §6"S§:String;
      
      private var §-##§:Number;
      
      private var §0#[§:Number;
      
      private var §@#Z§:Number;
      
      private var §+#j§:Number;
      
      private var §?!S§:Number = 1.0;
      
      private var §+!Y§:Boolean = true;
      
      public function §%!N§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§-!O§ = param3;
         this.§6"S§ = param4;
         this.§-##§ = param5;
         this.§0#[§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§?!S§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function get imageName() : String
      {
         return this.§6"S§;
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function set §9$?§(param1:Boolean) : void
      {
         this.§+!Y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=#;§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§^!8§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §6"M§.§6"1§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§,#9§) as Sprite)
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
               if(this.name == §,#9§)
               {
                  if(!this.§+!Y§)
                  {
                  }
               }
               _loc4_.scaleX = this.§?!S§;
               _loc4_.scaleY = this.§?!S§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§@#Z§ = param1;
         this.§+#j§ = param2;
      }
      
      override public function clone() : §?d§
      {
         var _loc1_:§%!N§ = new §%!N§(time,duration,this.§-!O§,this.§6"S§,this.§-##§,this.§0#[§,this.§?!S§);
         _loc1_.§+!Y§ = this.§+!Y§;
         _loc1_.§@#Z§ = this.§@#Z§;
         _loc1_.§+#j§ = this.§+#j§;
         return _loc1_;
      }
   }
}
