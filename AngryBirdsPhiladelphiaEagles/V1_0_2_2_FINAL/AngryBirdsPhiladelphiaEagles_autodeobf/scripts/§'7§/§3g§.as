package §'7§
{
   import § N§.§1!A§;
   import § N§.DisplayObject;
   import § N§.DisplayObjectContainer;
   import § N§.Sprite;
   import §#e§.§%Y§;
   import §#e§.§'?§;
   import §#e§.§`!9§;
   
   public class §3g§ extends §@!F§
   {
      
      public static const §,V§:String = "background";
       
      
      private var mName:String;
      
      private var §4!6§:String;
      
      private var §]!B§:Number;
      
      private var §5G§:Number;
      
      private var §6! §:Number;
      
      private var §@g§:Number;
      
      private var §^!7§:Number = 1.0;
      
      private var §96§:Boolean = true;
      
      public function §3g§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§4!6§ = param4;
         this.§]!B§ = param5;
         this.§5G§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§^!7§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §!C§() : String
      {
         return this.§4!6§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function set §2h§(param1:Boolean) : void
      {
         this.§96§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§`!9§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §%Y§.§3k§(this.§!C§,param3)))
            {
               if(_loc5_ = param3.§&! §(this.§!C§))
               {
                  (_loc4_ = new §1!A§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§,V§) as Sprite)
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
               if(this.name == §,V§)
               {
                  if(!this.§96§)
                  {
                  }
               }
               _loc4_.scaleX = this.§^!7§;
               _loc4_.scaleY = this.§^!7§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6! § = param1;
         this.§@g§ = param2;
      }
      
      override public function clone() : §@!F§
      {
         var _loc1_:§3g§ = new §3g§(time,duration,this.mName,this.§4!6§,this.§]!B§,this.§5G§,this.§^!7§);
         _loc1_.§96§ = this.§96§;
         _loc1_.§6! § = this.§6! §;
         _loc1_.§@g§ = this.§@g§;
         return _loc1_;
      }
   }
}
