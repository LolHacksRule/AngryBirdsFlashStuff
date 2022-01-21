package §&[§
{
   import §"v§.§5!T§;
   import §,!i§.§-9§;
   import §,!i§.§02§;
   import §@j§.§%I§;
   import §@j§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §&!m§ extends EventDispatcher
   {
      
      private static const §#=§:int = 2;
      
      private static const §^h§:int = 2048;
      
      private static var §!i§:§&!m§;
       
      
      private var §@v§:Dictionary;
      
      private var §7<§:Vector.<§-9§>;
      
      private var §2C§:Dictionary;
      
      private var §-L§:Boolean;
      
      private var §&!3§:String;
      
      private var §'!j§:Texture;
      
      private var §1o§:int;
      
      private var §#H§:int;
      
      public function §&!m§(param1:String = null)
      {
         super();
         this.§7<§ = new Vector.<§-9§>();
         this.§@v§ = new Dictionary();
         this.§2C§ = new Dictionary();
         this.§&!3§ = param1;
      }
      
      public static function get §>E§() : §&!m§
      {
         if(!§!i§)
         {
            §!i§ = new §&!m§();
         }
         return §!i§;
      }
      
      public function get §]0§() : int
      {
         return this.§1o§;
      }
      
      public function get §^K§() : int
      {
         return this.§#H§;
      }
      
      public function get id() : String
      {
         return this.§&!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!"§ = null;
         var _loc2_:§-9§ = null;
         if(this.§@v§)
         {
            for each(_loc1_ in this.§@v§)
            {
               this.§2h§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§@v§ = null;
         }
         if(this.§7<§)
         {
            for each(_loc2_ in this.§7<§)
            {
               _loc2_.dispose();
            }
            this.§7<§ = null;
         }
         if(this.§2C§)
         {
            this.§2C§ = null;
         }
         if(this.§'!j§)
         {
            this.§'!j§.dispose();
            this.§'!j§ = null;
         }
         this.§7<§ = new Vector.<§-9§>();
         this.§@v§ = new Dictionary();
         this.§2C§ = new Dictionary();
      }
      
      public function §<w§(param1:§-9§) : void
      {
         if(this.§-L§)
         {
            return;
         }
         if(this.§7<§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§7<§.push(param1);
      }
      
      private function §%§(param1:Array) : Rectangle
      {
         var _loc9_:§-9§ = null;
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
            if(_loc2_ + _loc10_.width + §#=§ >= §^h§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §#=§ >= §^h§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §#=§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §#=§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §#=§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §@C§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§-9§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§2D§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§02§ = null;
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
            if(_loc3_ + _loc9_.width + §#=§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §#=§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §2D§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§ d§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§9!S§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§1!@§(_loc12_)).§,!&§ = null;
               _loc13_.§&!2§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §#=§;
            if(_loc9_.height + §#=§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §#=§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §`!1§() : Boolean
      {
         var _loc1_:§-9§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§2D§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§02§ = null;
         if(!§5!T§.§<f§())
         {
            return false;
         }
         if(this.§-L§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§7<§)
         {
            if(_loc1_.§9!S§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§%§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§@C§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§ d§;
               _loc9_ = _loc1_.§9!S§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§1!@§(_loc10_);
                  this.§&![§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§7<§)
         {
            _loc1_.dispose();
         }
         this.§7<§ = new Vector.<§-9§>();
         this.§-L§ = true;
         return true;
      }
      
      private function §&![§(param1:§02§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§%I§ = null;
         var _loc5_:§,!"§;
         if(!(_loc5_ = this.§@v§[param1.mName]))
         {
            _loc6_ = param1.§&!2§.clone();
            _loc7_ = new §%I§(param2,_loc6_,false);
            _loc5_ = new §,!"§(_loc7_,param3,_loc6_,param1.§-!C§,param1.§+!@§,param4);
            this.§@v§[param1.mName] = _loc5_;
         }
      }
      
      public function §3!R§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§5!T§.§!!X§)
         {
            for(bd in this.§2C§)
            {
               try
               {
                  texture = this.§2C§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §4!0§(param1:String) : §,!"§
      {
         return this.§@v§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§2C§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §5!T§.§#F§(param1,param2);
         this.§2C§[param1] = _loc3_;
         this.native(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function native(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§#H§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§1o§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §3!T§() : Texture
      {
         if(!this.§'!j§)
         {
            this.§'!j§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§'!j§;
      }
      
      public function §2h§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§2C§)
         {
            if(this.§2C§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.native(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§2C§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §-!"§(param1:String) : BitmapData
      {
         var _loc2_:§,!"§ = this.§4!0§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§4!0§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§4!0§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
