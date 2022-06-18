package §+i§
{
   import §7u§.§&!C§;
   import §7u§.DisplayObject;
   import §7u§.DisplayObjectContainer;
   import §7u§.Sprite;
   import §`!B§.§&?§;
   import §`!B§.§4!I§;
   import §`!B§.§=m§;
   
   public class §#!T§ extends §'6§
   {
      
      public static const §0n§:String = "background";
       
      
      private var mName:String;
      
      private var §4t§:String;
      
      private var §,G§:Number;
      
      private var §-+§:Number;
      
      private var §5I§:Number;
      
      private var §1Q§:Number;
      
      private var §?^§:Number = 1.0;
      
      private var §4b§:Boolean = true;
      
      public function §#!T§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§4t§ = param4;
         this.§,G§ = param5;
         this.§-+§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§?^§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §<4§() : String
      {
         return this.§4t§;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§-+§;
      }
      
      public function set §&&§(param1:Boolean) : void
      {
         this.§4b§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§4!I§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §&?§.§^!U§(this.§<4§,param3)))
            {
               if(_loc5_ = param3.§@d§(this.§<4§))
               {
                  (_loc4_ = new §&!C§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§0n§) as Sprite)
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
               if(this.name == §0n§)
               {
                  if(!this.§4b§)
                  {
                  }
               }
               _loc4_.scaleX = this.§?^§;
               _loc4_.scaleY = this.§?^§;
            }
            return false;
         }
         return true;
      }
      
      public function §,!K§(param1:Number, param2:Number) : void
      {
         this.§5I§ = param1;
         this.§1Q§ = param2;
      }
      
      override public function clone() : §'6§
      {
         var _loc1_:§#!T§ = new §#!T§(time,duration,this.mName,this.§4t§,this.§,G§,this.§-+§,this.§?^§);
         _loc1_.§4b§ = this.§4b§;
         _loc1_.§5I§ = this.§5I§;
         _loc1_.§1Q§ = this.§1Q§;
         return _loc1_;
      }
   }
}
