package §`"2§
{
   import §-!+§.§6"6§;
   import §@!#§.Texture;
   import §@!#§.§`"<§;
   import §@R§.§8y§;
   import §@R§.§]1§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6!,§ extends EventDispatcher
   {
      
      private static const §;!i§:int = 2;
      
      private static const §]!V§:int = 2048;
      
      private static var § z§:§6!,§;
       
      
      private var §0">§:Dictionary;
      
      private var §82§:Vector.<§8y§>;
      
      private var §@M§:Dictionary;
      
      private var §switch§:Boolean;
      
      private var §0!d§:String;
      
      private var §&!3§:Texture;
      
      private var §!">§:int;
      
      private var §'!z§:int;
      
      public function §6!,§(param1:String = null)
      {
         super();
         this.§82§ = new Vector.<§8y§>();
         this.§0">§ = new Dictionary();
         this.§@M§ = new Dictionary();
         this.§0!d§ = param1;
      }
      
      public static function get §7!?§() : §6!,§
      {
         if(!§ z§)
         {
            § z§ = new §6!,§();
         }
         return § z§;
      }
      
      public function get §,!_§() : int
      {
         return this.§!">§;
      }
      
      public function get §&!E§() : int
      {
         return this.§'!z§;
      }
      
      public function get id() : String
      {
         return this.§0!d§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%3§ = null;
         var _loc2_:§8y§ = null;
         if(this.§0">§)
         {
            for each(_loc1_ in this.§0">§)
            {
               this.§7?§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§0">§ = null;
         }
         if(this.§82§)
         {
            for each(_loc2_ in this.§82§)
            {
               _loc2_.dispose();
            }
            this.§82§ = null;
         }
         if(this.§@M§)
         {
            this.§@M§ = null;
         }
         if(this.§&!3§)
         {
            this.§&!3§.dispose();
            this.§&!3§ = null;
         }
         this.§82§ = new Vector.<§8y§>();
         this.§0">§ = new Dictionary();
         this.§@M§ = new Dictionary();
      }
      
      public function §3!=§(param1:§8y§) : void
      {
         if(this.§switch§)
         {
            return;
         }
         if(this.§82§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§82§.push(param1);
      }
      
      private function §-!&§(param1:Array) : Rectangle
      {
         var _loc9_:§8y§ = null;
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
            if(_loc2_ + _loc10_.width + §;!i§ >= §]!V§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §;!i§ >= §]!V§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §;!i§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §;!i§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §;!i§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §!!@§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§8y§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§9!v§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§]1§ = null;
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
            if(_loc3_ + _loc9_.width + §;!i§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §;!i§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §9!v§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§]g§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§8I§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§+M§(_loc12_)).§#"=§ = null;
               _loc13_.§`!#§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §;!i§;
            if(_loc9_.height + §;!i§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §;!i§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §%b§() : Boolean
      {
         var _loc1_:§8y§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§9!v§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§]1§ = null;
         if(!§6"6§.§-!S§())
         {
            return false;
         }
         if(this.§switch§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§82§)
         {
            if(_loc1_.§8I§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§-!&§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§!!@§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§`!+§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§]g§;
               _loc9_ = _loc1_.§8I§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§+M§(_loc10_);
                  this.§9!&§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§82§)
         {
            _loc1_.dispose();
         }
         this.§82§ = new Vector.<§8y§>();
         this.§switch§ = true;
         return true;
      }
      
      private function §9!&§(param1:§]1§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§`"<§ = null;
         var _loc5_:§%3§;
         if(!(_loc5_ = this.§0">§[param1.mName]))
         {
            _loc6_ = param1.§`!#§.clone();
            _loc7_ = new §`"<§(param2,_loc6_,false);
            _loc5_ = new §%3§(_loc7_,param3,_loc6_,param1.§%n§,param1.§#Y§,param4);
            this.§0">§[param1.mName] = _loc5_;
         }
      }
      
      public function §"!B§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§6"6§.§<Y§)
         {
            for(bd in this.§@M§)
            {
               try
               {
                  texture = this.§@M§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §'"#§(param1:String) : §%3§
      {
         return this.§0">§[param1];
      }
      
      public function §`!+§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§@M§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §6"6§.§6!l§(param1,param2);
         this.§@M§[param1] = _loc3_;
         this.§,!6§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §,!6§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'!z§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§!">§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4v§() : Texture
      {
         if(!this.§&!3§)
         {
            this.§&!3§ = this.§`!+§(new BitmapData(40,40,false,16711935));
         }
         return this.§&!3§;
      }
      
      public function §7?§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§@M§)
         {
            if(this.§@M§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§,!6§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§@M§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §!!k§(param1:String) : BitmapData
      {
         var _loc2_:§%3§ = this.§'"#§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§'"#§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§'"#§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
