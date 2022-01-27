package §+"I§
{
   import §!!k§.§'!j§;
   import §!!k§.§0!B§;
   import §!!k§.§;m§;
   import §use§.§,!u§;
   import §use§.DisplayObject;
   import §use§.DisplayObjectContainer;
   import §use§.Sprite;
   
   public class §0"f§ extends §^"C§
   {
      
      public static const §8!Z§:String = "background";
       
      
      private var mName:String;
      
      private var §0"H§:String;
      
      private var §0U§:Number;
      
      private var §3"[§:Number;
      
      private var §0"e§:Number;
      
      private var §?!O§:Number;
      
      private var §[_§:Number = 1.0;
      
      private var §8P§:Boolean = true;
      
      public function §0"f§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§0"H§ = param4;
         this.§0U§ = param5;
         this.§3"[§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§[_§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §=!,§() : String
      {
         return this.§0"H§;
      }
      
      public function get x() : Number
      {
         return this.§0U§;
      }
      
      public function get y() : Number
      {
         return this.§3"[§;
      }
      
      public function set §+!8§(param1:Boolean) : void
      {
         this.§8P§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!B§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'!j§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §;m§.§-"p§(this.§=!,§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§=!,§))
               {
                  (_loc4_ = new §,!u§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§8!Z§) as Sprite)
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
               if(this.name == §8!Z§)
               {
                  if(!this.§8P§)
                  {
                  }
               }
               _loc4_.scaleX = this.§[_§;
               _loc4_.scaleY = this.§[_§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0"e§ = param1;
         this.§?!O§ = param2;
      }
      
      override public function clone() : §^"C§
      {
         var _loc1_:§0"f§ = new §0"f§(time,duration,this.mName,this.§0"H§,this.§0U§,this.§3"[§,this.§[_§);
         _loc1_.§8P§ = this.§8P§;
         _loc1_.§0"e§ = this.§0"e§;
         _loc1_.§?!O§ = this.§?!O§;
         return _loc1_;
      }
   }
}
