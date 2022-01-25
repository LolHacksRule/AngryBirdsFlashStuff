package §<c§
{
   import §8r§.§-!$§;
   import §8r§.§5Q§;
   import §8r§.§@V§;
   import §;t§.§=_§;
   import §;t§.DisplayObject;
   import §;t§.DisplayObjectContainer;
   import §;t§.Sprite;
   
   public class §+5§ extends §^N§
   {
      
      public static const §'m§:String = "background";
       
      
      private var mName:String;
      
      private var §#%§:String;
      
      private var §?H§:Number;
      
      private var §>!a§:Number;
      
      private var §=$§:Number;
      
      private var §1T§:Number;
      
      private var §"!+§:Number = 1.0;
      
      private var §[!>§:Boolean = true;
      
      public function §+5§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§#%§ = param4;
         this.§?H§ = param5;
         this.§>!a§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§"!+§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9!7§() : String
      {
         return this.§#%§;
      }
      
      public function get x() : Number
      {
         return this.§?H§;
      }
      
      public function get y() : Number
      {
         return this.§>!a§;
      }
      
      public function set §=!%§(param1:Boolean) : void
      {
         this.§[!>§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@V§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§-!$§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §5Q§.§=X§(this.§9!7§,param3)))
            {
               if(_loc5_ = param3.§1!I§(this.§9!7§))
               {
                  (_loc4_ = new §=_§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§'m§) as Sprite)
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
               if(this.name == §'m§)
               {
                  if(!this.§[!>§)
                  {
                  }
               }
               _loc4_.scaleX = this.§"!+§;
               _loc4_.scaleY = this.§"!+§;
            }
            return false;
         }
         return true;
      }
      
      public function §-!A§(param1:Number, param2:Number) : void
      {
         this.§=$§ = param1;
         this.§1T§ = param2;
      }
      
      override public function clone() : §^N§
      {
         var _loc1_:§+5§ = new §+5§(time,duration,this.mName,this.§#%§,this.§?H§,this.§>!a§,this.§"!+§);
         _loc1_.§[!>§ = this.§[!>§;
         _loc1_.§=$§ = this.§=$§;
         _loc1_.§1T§ = this.§1T§;
         return _loc1_;
      }
   }
}
