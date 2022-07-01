package §9A§
{
   import §%t§.§#B§;
   import §%t§.§-!5§;
   import §%t§.§^-§;
   import §^I§.§=!+§;
   import §^I§.DisplayObject;
   import §^I§.DisplayObjectContainer;
   import §^I§.Sprite;
   
   public class §;w§ extends §'"$§
   {
      
      public static const §^,§:String = "background";
       
      
      private var mName:String;
      
      private var §'f§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §4!z§:Number;
      
      private var §@R§:Number;
      
      private var §[D§:Number = 1.0;
      
      private var §,P§:Boolean = true;
      
      public function §;w§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§'f§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§[D§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §?!O§() : String
      {
         return this.§'f§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set § !z§(param1:Boolean) : void
      {
         this.§,P§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-!5§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§#B§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §^-§.§#f§(this.§?!O§,param3)))
            {
               if(_loc5_ = param3.§ !Z§(this.§?!O§))
               {
                  (_loc4_ = new §=!+§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§^,§) as Sprite)
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
               if(this.name == §^,§)
               {
                  if(!this.§,P§)
                  {
                  }
               }
               _loc4_.scaleX = this.§[D§;
               _loc4_.scaleY = this.§[D§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§4!z§ = param1;
         this.§@R§ = param2;
      }
      
      override public function clone() : §'"$§
      {
         var _loc1_:§;w§ = new §;w§(time,duration,this.mName,this.§'f§,this.mX,this.mY,this.§[D§);
         _loc1_.§,P§ = this.§,P§;
         _loc1_.§4!z§ = this.§4!z§;
         _loc1_.§@R§ = this.§@R§;
         return _loc1_;
      }
   }
}
