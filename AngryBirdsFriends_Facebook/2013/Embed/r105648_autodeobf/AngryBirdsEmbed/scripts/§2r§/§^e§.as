package §2r§
{
   import §;^§.§ @§;
   import §;^§.DisplayObject;
   import §;^§.DisplayObjectContainer;
   import §;^§.Sprite;
   import §=!K§.§?;§;
   import §=!K§.§@p§;
   import §=!K§.§^Q§;
   
   public class §^e§ extends §]6§
   {
      
      public static const §[o§:String = "background";
       
      
      private var mName:String;
      
      private var §!j§:String;
      
      private var § H§:Number;
      
      private var §=§:Number;
      
      private var §<w§:Number;
      
      private var §"!?§:Number;
      
      private var §6g§:Number = 1.0;
      
      private var §?+§:Boolean = true;
      
      public function §^e§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§!j§ = param4;
         this.§ H§ = param5;
         this.§=§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§6g§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §>N§() : String
      {
         return this.§!j§;
      }
      
      public function get x() : Number
      {
         return this.§ H§;
      }
      
      public function get y() : Number
      {
         return this.§=§;
      }
      
      public function set §=!6§(param1:Boolean) : void
      {
         this.§?+§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§^Q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§@p§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §?;§.§'B§(this.§>N§,param3)))
            {
               if(_loc5_ = param3.§=!B§(this.§>N§))
               {
                  (_loc4_ = new § @§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§[o§) as Sprite)
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
               if(this.name == §[o§)
               {
                  if(!this.§?+§)
                  {
                  }
               }
               _loc4_.scaleX = this.§6g§;
               _loc4_.scaleY = this.§6g§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<w§ = param1;
         this.§"!?§ = param2;
      }
      
      override public function clone() : §]6§
      {
         var _loc1_:§^e§ = new §^e§(time,duration,this.mName,this.§!j§,this.§ H§,this.§=§,this.§6g§);
         _loc1_.§?+§ = this.§?+§;
         _loc1_.§<w§ = this.§<w§;
         _loc1_.§"!?§ = this.§"!?§;
         return _loc1_;
      }
   }
}
