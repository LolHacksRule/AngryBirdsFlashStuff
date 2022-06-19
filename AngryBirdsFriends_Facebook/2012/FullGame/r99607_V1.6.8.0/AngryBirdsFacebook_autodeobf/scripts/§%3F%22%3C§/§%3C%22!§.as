package §?"<§
{
   import §!!,§.§%W§;
   import §!!,§.§5W§;
   import §+"6§.§5!H§;
   import §<L§.§0#§;
   import §<L§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §<"!§ extends EventDispatcher
   {
      
      private static const §!!$§:int = 2;
      
      private static const §4"2§:int = 2048;
      
      private static var §;!t§:§<"!§;
       
      
      private var §]"<§:Dictionary;
      
      private var §2!!§:Vector.<§%W§>;
      
      private var §8Y§:Dictionary;
      
      private var §;!'§:Boolean;
      
      private var §4W§:String;
      
      private var §]!V§:Texture;
      
      private var §[F§:int;
      
      private var §2!R§:int;
      
      public function §<"!§(param1:String = null)
      {
         super();
         this.§2!!§ = new Vector.<§%W§>();
         this.§]"<§ = new Dictionary();
         this.§8Y§ = new Dictionary();
         this.§4W§ = param1;
      }
      
      public static function get §8c§() : §<"!§
      {
         if(!§;!t§)
         {
            §;!t§ = new §<"!§();
         }
         return §;!t§;
      }
      
      public function get §0Z§() : int
      {
         return this.§[F§;
      }
      
      public function get §"!#§() : int
      {
         return this.§2!R§;
      }
      
      public function get id() : String
      {
         return this.§4W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?n§ = null;
         var _loc2_:§%W§ = null;
         if(this.§]"<§)
         {
            for each(_loc1_ in this.§]"<§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§]"<§ = null;
         }
         if(this.§2!!§)
         {
            for each(_loc2_ in this.§2!!§)
            {
               _loc2_.dispose();
            }
            this.§2!!§ = null;
         }
         if(this.§8Y§)
         {
            this.§8Y§ = null;
         }
         if(this.§]!V§)
         {
            this.§]!V§.dispose();
            this.§]!V§ = null;
         }
         this.§2!!§ = new Vector.<§%W§>();
         this.§]"<§ = new Dictionary();
         this.§8Y§ = new Dictionary();
      }
      
      public function §%!E§(param1:§%W§) : void
      {
         if(this.§;!'§)
         {
            return;
         }
         if(this.§2!!§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§2!!§.push(param1);
      }
      
      private function §0!D§(param1:Array) : Rectangle
      {
         var _loc9_:§%W§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc8_ == 0)
            {
               _loc7_ = _loc9_.scale;
            }
            else if(_loc9_.scale != _loc7_)
            {
               break;
            }
            _loc10_ = _loc9_.bitmapData;
            if(_loc2_ + _loc10_.width + §!!$§ >= §4"2§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §!!$§ >= §4"2§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §!!$§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §!!$§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §!!$§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §function§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§%W§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§<!z§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§5W§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         while(param1.length > 0)
         {
            _loc8_ = param1[0];
            if(!isNaN(_loc7_) && _loc7_ != _loc8_.scale)
            {
               break;
            }
            _loc7_ = _loc8_.scale;
            _loc9_ = _loc8_.bitmapData;
            if(_loc3_ + _loc9_.width + §!!$§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §!!$§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §<!z§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§7!R§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§#X§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§5!c§(_loc12_)).§"!I§ = null;
               _loc13_.§`!e§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §!!$§;
            if(_loc9_.height + §!!$§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §!!$§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §5,§() : Boolean
      {
         var _loc1_:§%W§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§<!z§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§5W§ = null;
         if(!§5!H§.include())
         {
            return false;
         }
         if(this.§;!'§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§2!!§)
         {
            if(_loc1_.§#X§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§0!D§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§function§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§7!R§;
               _loc9_ = _loc1_.§#X§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§5!c§(_loc10_);
                  this.§&"2§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§2!!§)
         {
            _loc1_.dispose();
         }
         this.§2!!§ = new Vector.<§%W§>();
         this.§;!'§ = true;
         return true;
      }
      
      private function §&"2§(param1:§5W§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§0#§ = null;
         var _loc5_:§?n§;
         if(!(_loc5_ = this.§]"<§[param1.mName]))
         {
            _loc6_ = param1.§`!e§.clone();
            _loc7_ = new §0#§(param2,_loc6_,false);
            _loc5_ = new §?n§(_loc7_,param3,_loc6_,param1.§-d§,param1.§^#§,param4);
            this.§]"<§[param1.mName] = _loc5_;
         }
      }
      
      public function §06§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§5!H§.§7"4§)
         {
            for(bd in this.§8Y§)
            {
               try
               {
                  texture = this.§8Y§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §?!H§(param1:String) : §?n§
      {
         return this.§]"<§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§8Y§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §5!H§.§7"B§(param1,param2);
         this.§8Y§[param1] = _loc3_;
         this.§-!5§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §-!5§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:int = 1;
         if(!param3)
         {
            _loc4_ = -1;
         }
         if(param2)
         {
            this.§2!R§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§[F§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §#!t§() : Texture
      {
         if(!this.§]!V§)
         {
            this.§]!V§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§]!V§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§8Y§)
         {
            if(this.§8Y§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§-!5§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§8Y§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §""?§(param1:String) : BitmapData
      {
         var _loc2_:§?n§ = this.§?!H§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§?!H§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§?!H§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
