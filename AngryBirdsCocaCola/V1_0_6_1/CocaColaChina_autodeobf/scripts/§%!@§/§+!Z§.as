package §%!@§
{
   import §+N§.§=!+§;
   import §+N§.§=u§;
   import §+N§.§``§;
   import §<!$§.DisplayObject;
   import §<!$§.DisplayObjectContainer;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   
   public class §+!Z§ extends §[!$§
   {
      
      public static const §'F§:String = "background";
       
      
      private var mName:String;
      
      private var §1!8§:String;
      
      private var §;i§:Number;
      
      private var §%i§:Number;
      
      private var §,E§:Number;
      
      private var §4X§:Number;
      
      private var §9F§:Number = 1.0;
      
      private var §4r§:Boolean = true;
      
      public function §+!Z§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§1!8§ = param4;
         this.§;i§ = param5;
         this.§%i§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§9F§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §`!&§() : String
      {
         return this.§1!8§;
      }
      
      public function get x() : Number
      {
         return this.§;i§;
      }
      
      public function get y() : Number
      {
         return this.§%i§;
      }
      
      public function set § `§(param1:Boolean) : void
      {
         this.§4r§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§``§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§=!+§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §=u§.§9!2§(this.§`!&§,param3)))
            {
               if(_loc5_ = param3.§-!V§(this.§`!&§))
               {
                  (_loc4_ = new §[!5§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§'F§) as Sprite)
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
               if(this.name == §'F§)
               {
                  if(!this.§4r§)
                  {
                  }
               }
               _loc4_.scaleX = this.§9F§;
               _loc4_.scaleY = this.§9F§;
            }
            return false;
         }
         return true;
      }
      
      public function §^!$§(param1:Number, param2:Number) : void
      {
         this.§,E§ = param1;
         this.§4X§ = param2;
      }
      
      override public function clone() : §[!$§
      {
         var _loc1_:§+!Z§ = new §+!Z§(time,duration,this.mName,this.§1!8§,this.§;i§,this.§%i§,this.§9F§);
         _loc1_.§4r§ = this.§4r§;
         _loc1_.§,E§ = this.§,E§;
         _loc1_.§4X§ = this.§4X§;
         return _loc1_;
      }
   }
}
