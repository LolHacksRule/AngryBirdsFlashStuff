package §3"8§
{
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   import §1"s§.DisplayObjectContainer;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §3"$§.§&§;
   import §3"$§.§]!h§;
   
   public class §9U§ extends §-"r§
   {
      
      public static const §95§:String = "background";
       
      
      private var mName:String;
      
      private var §<b§:String;
      
      private var §]!_§:Number;
      
      private var §#j§:Number;
      
      private var §^"t§:Number;
      
      private var §`!y§:Number;
      
      private var §&Z§:Number = 1.0;
      
      private var §&"I§:Boolean = true;
      
      public function §9U§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§<b§ = param4;
         this.§]!_§ = param5;
         this.§#j§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§&Z§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4"j§() : String
      {
         return this.§<b§;
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function set §,!P§(param1:Boolean) : void
      {
         this.§&"I§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&"0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§]!h§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §&#7§.§@"G§(this.§4"j§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§4"j§))
               {
                  (_loc4_ = new §-i§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§95§) as Sprite)
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
               if(this.name == §95§)
               {
                  if(!this.§&"I§)
                  {
                  }
               }
               _loc4_.scaleX = this.§&Z§;
               _loc4_.scaleY = this.§&Z§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^"t§ = param1;
         this.§`!y§ = param2;
      }
      
      override public function clone() : §-"r§
      {
         var _loc1_:§9U§ = new §9U§(time,duration,this.mName,this.§<b§,this.§]!_§,this.§#j§,this.§&Z§);
         _loc1_.§&"I§ = this.§&"I§;
         _loc1_.§^"t§ = this.§^"t§;
         _loc1_.§`!y§ = this.§`!y§;
         return _loc1_;
      }
   }
}
