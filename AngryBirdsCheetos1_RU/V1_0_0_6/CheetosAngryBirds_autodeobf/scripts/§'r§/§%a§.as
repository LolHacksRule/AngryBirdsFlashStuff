package §'r§
{
   import §"k§.§02§;
   import §"k§.§4w§;
   import §"k§.§5!7§;
   import §;!Q§.§%o§;
   import §;!Q§.DisplayObject;
   import §;!Q§.DisplayObjectContainer;
   import §;!Q§.Sprite;
   
   public class §%a§ extends §,!H§
   {
      
      public static const §?K§:String = "background";
       
      
      private var mName:String;
      
      private var §1!B§:String;
      
      private var §"9§:Number;
      
      private var §[g§:Number;
      
      private var §<!&§:Number;
      
      private var §@!Y§:Number;
      
      private var §7§:Number = 1.0;
      
      private var §while§:Boolean = true;
      
      public function §%a§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§1!B§ = param4;
         this.§"9§ = param5;
         this.§[g§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§7§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §3z§() : String
      {
         return this.§1!B§;
      }
      
      public function get x() : Number
      {
         return this.§"9§;
      }
      
      public function get y() : Number
      {
         return this.§[g§;
      }
      
      public function set §@l§(param1:Boolean) : void
      {
         this.§while§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§02§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§5!7§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §4w§.§9;§(this.§3z§,param3)))
            {
               if(_loc5_ = param3.§'!R§(this.§3z§))
               {
                  (_loc4_ = new §%o§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§?K§) as Sprite)
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
               if(this.name == §?K§)
               {
                  if(!this.§while§)
                  {
                  }
               }
               _loc4_.scaleX = this.§7§;
               _loc4_.scaleY = this.§7§;
            }
            return false;
         }
         return true;
      }
      
      public function §7q§(param1:Number, param2:Number) : void
      {
         this.§<!&§ = param1;
         this.§@!Y§ = param2;
      }
      
      override public function clone() : §,!H§
      {
         var _loc1_:§%a§ = new §%a§(time,duration,this.mName,this.§1!B§,this.§"9§,this.§[g§,this.§7§);
         _loc1_.§while§ = this.§while§;
         _loc1_.§<!&§ = this.§<!&§;
         _loc1_.§@!Y§ = this.§@!Y§;
         return _loc1_;
      }
   }
}
