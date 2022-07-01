package §#!O§
{
   import §#'§.§3!D§;
   import §-!f§.§-!,§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §0I§.§!!p§;
   import §0I§.§]@§;
   import §2?§.§!!m§;
   import §2?§.§in §;
   import §6!4§.§<!D§;
   import §6_§.§,!>§;
   import §6_§.§7W§;
   import §6_§.§8!K§;
   import §@"3§.§0!N§;
   import flash.geom.Rectangle;
   
   public class §-u§
   {
       
      
      private var § !Y§:int;
      
      private var §[!6§:Number;
      
      private var §5q§:Boolean;
      
      protected var §]!c§:Sprite;
      
      private var §6"#§:Array;
      
      private var §17§:Boolean = true;
      
      private var §'+§:§,!>§;
      
      private var §=!'§:Sprite;
      
      private var § !9§:Sprite;
      
      private var § !f§:Number;
      
      private var § N§:Number;
      
      protected var §79§:Number = 1.0;
      
      protected var §1e§:Number = 0.0;
      
      protected var §,r§:Number = 0.0;
      
      protected var §50§:Number = 0.0;
      
      protected var §<!"§:Number = 0.0;
      
      protected var §]!<§:Number = 0.0;
      
      protected var §#T§:Number = 0.0;
      
      protected var §@!z§:Boolean;
      
      public function §-u§(param1:§!!m§, param2:Sprite, param3:§,!>§, param4:Number)
      {
         this.§6"#§ = [];
         super();
         this.§'+§ = param3;
         this.§]!c§ = param2;
         this.§[!6§ = param1.speed;
         this.§5q§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §6!M§() : Number
      {
         return this.§[!6§;
      }
      
      public function get §,!K§() : Boolean
      {
         return this.§5q§;
      }
      
      protected function get §74§() : Number
      {
         return this.§ !Y§;
      }
      
      protected function §<!N§(param1:§7W§) : void
      {
         this.§,r§ = param1.pivotY;
         if(!this.§5q§)
         {
            this.§1e§ = param1.pivotX;
         }
         else
         {
            this.§1e§ = 0;
         }
      }
      
      protected function §3!^§(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§^!f§;
         this.§,r§ = _loc2_.bottom;
         this.§1e§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §`!S§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§7W§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §8!K§.§5!A§(param1,this.§'+§,param2)))
         {
            if(!(_loc5_ = this.§'+§.§^!$§(param1)))
            {
               return;
            }
            this.§79§ = param3 * _loc5_.scale;
            this.§<!N§(_loc5_);
            this.§ !Y§ = _loc5_.width - 2;
         }
         else
         {
            this.§79§ = param3;
            this.§3!^§(_loc4_);
            this.§ !Y§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§ !Y§ = Math.round(this.§ !Y§);
      }
      
      protected function §;!>§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§0"4§(param1,param2)).x = (_loc6_ - 1) * this.§ !Y§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§8!K§.§,!F§(param1))
         {
            _loc8_ = this.§<4§(_loc5_);
            _loc5_.§@-§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §<4§(param1:Sprite) : Sprite
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(param1.numChildren > 0 && param1.getChildAt(0) is Sprite)
         {
            _loc3_ = Sprite(param1.getChildAt(0)).numChildren;
            _loc4_ = _loc3_ - 1;
            while(_loc4_ >= 0)
            {
               _loc5_ = 0;
               while(_loc5_ < param1.numChildren)
               {
                  if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                  {
                     _loc7_ = _loc6_.getChildAt(_loc4_);
                     _loc2_.addChildAt(_loc7_,0);
                     _loc7_.x += _loc6_.x;
                  }
                  _loc5_++;
               }
               _loc4_--;
            }
         }
         return _loc2_;
      }
      
      protected function §0"4§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§7W§ = null;
         var _loc3_:DisplayObject = §8!K§.§5!A§(param1,this.§'+§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§'+§.§^!$§(param1);
            _loc3_ = new §-!,§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function §4v§(param1:Number, param2:int) : int
      {
         return (2 + §!!p§.§+'§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§!!m§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§79§ = param1.scale;
         }
         else
         {
            this.§79§ = 1;
         }
         this.§`!S§(param1.§>!B§,param1.highQuality,this.§79§);
         if(this.§ !Y§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.§4v§(param2,this.§ !Y§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§@!z§ = true;
         }
         this.§]!<§ = param1.xOffset;
         this.§#T§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§<"$§(param1,_loc5_ * this.§ !Y§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§;!>§(param1.§>!B§,param1.highQuality,_loc3_,_loc4_);
         this.§]!c§.addChild(_loc6_);
         this.§set §();
         this.§1x§();
      }
      
      private function §set §() : void
      {
         if(this.§=!'§)
         {
            if(this.§=!'§.numChildren > 0)
            {
               this.§]!c§.addChild(this.§=!'§);
            }
            else
            {
               this.§=!'§.dispose();
               this.§=!'§ = null;
            }
         }
         if(this.§ !9§)
         {
            if(this.§ !9§.numChildren > 0)
            {
               this.§]!c§.addChildAt(this.§ !9§,0);
            }
            else
            {
               this.§ !9§.dispose();
               this.§ !9§ = null;
            }
         }
      }
      
      private function §<"$§(param1:§!!m§, param2:Number) : void
      {
         var _loc4_:§in § = null;
         var _loc5_:§]@§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§'!1§)
         {
            _loc4_ = param1.§^!w§(_loc3_);
            if((_loc5_ = §3!D§.§14§(_loc4_.id,this.§'+§)) && _loc5_.§7R§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §<!D§.§?P§.add(_loc5_);
               this.§6"#§.push(_loc5_);
               if(_loc4_.§>!#§)
               {
                  if(!this.§ !9§)
                  {
                     this.§ !9§ = new Sprite();
                  }
                  this.§ !9§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§=!'§)
                  {
                     this.§=!'§ = new Sprite();
                  }
                  this.§=!'§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§8_§(1 / 20);
                  _loc6_++;
               }
            }
            else if(_loc5_)
            {
               _loc5_.dispose();
            }
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!N§ = null;
         this.§]!c§.§@-§(0,-1,true);
         for each(_loc1_ in this.§6"#§)
         {
            §<!D§.§?P§.§0j§(_loc1_);
            _loc1_.dispose();
         }
         this.§6"#§ = [];
         this.§ !9§ = null;
         this.§=!'§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§ !f§ = param1;
         this.§ N§ = param2;
         this.§]!c§.scaleX = this.§79§;
         this.§]!c§.scaleY = this.§79§;
         this.§]!c§.x = -param1 * this.§[!6§ - this.§1e§ * this.§79§ + this.§]!<§;
         this.§]!c§.y = -param2 - this.§,r§ * this.§79§ + this.§#T§;
      }
      
      private function §1x§() : void
      {
         var _loc1_:§0!N§ = null;
         for each(_loc1_ in this.§6"#§)
         {
            §<!D§.§?P§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §+!^§() : void
      {
         var _loc1_:§0!N§ = null;
         for each(_loc1_ in this.§6"#§)
         {
            §<!D§.§?P§.§0j§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §^!9§(param1:Boolean) : void
      {
         if(param1 == this.§17§)
         {
            return;
         }
         this.§17§ = param1;
         if(this.§17§)
         {
            this.§1x§();
         }
         else
         {
            this.§+!^§();
         }
      }
   }
}
