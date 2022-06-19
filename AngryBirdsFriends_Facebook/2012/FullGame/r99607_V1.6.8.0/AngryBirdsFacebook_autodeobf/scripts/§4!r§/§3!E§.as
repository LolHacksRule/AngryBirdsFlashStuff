package §4!r§
{
   import §?"<§.§#!6§;
   import §?"<§.§<"!§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.DisplayObject;
   import §]&§.DisplayObjectContainer;
   import §]&§.Sprite;
   
   public class §3!E§ extends §8!A§
   {
      
      public static const §"0§:String = "background";
       
      
      private var mName:String;
      
      private var §`%§:String;
      
      private var §>U§:Number;
      
      private var §>!c§:Number;
      
      private var §]"A§:Number;
      
      private var §>!>§:Number;
      
      private var §4Q§:Number = 1.0;
      
      private var §2"8§:Boolean = true;
      
      public function §3!E§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§`%§ = param4;
         this.§>U§ = param5;
         this.§>!c§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§4Q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §5!>§() : String
      {
         return this.§`%§;
      }
      
      public function get x() : Number
      {
         return this.§>U§;
      }
      
      public function get y() : Number
      {
         return this.§>!c§;
      }
      
      public function set §7S§(param1:Boolean) : void
      {
         this.§2"8§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<"!§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§?n§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §#!6§.§ "4§(this.§5!>§,param3)))
            {
               if(_loc5_ = param3.§?!H§(this.§5!>§))
               {
                  (_loc4_ = new §-§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§"0§) as Sprite)
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
               if(this.name == §"0§)
               {
                  if(!this.§2"8§)
                  {
                  }
               }
               _loc4_.scaleX = this.§4Q§;
               _loc4_.scaleY = this.§4Q§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]"A§ = param1;
         this.§>!>§ = param2;
      }
      
      override public function clone() : §8!A§
      {
         var _loc1_:§3!E§ = new §3!E§(time,duration,this.mName,this.§`%§,this.§>U§,this.§>!c§,this.§4Q§);
         _loc1_.§2"8§ = this.§2"8§;
         _loc1_.§]"A§ = this.§]"A§;
         _loc1_.§>!>§ = this.§>!>§;
         return _loc1_;
      }
   }
}
