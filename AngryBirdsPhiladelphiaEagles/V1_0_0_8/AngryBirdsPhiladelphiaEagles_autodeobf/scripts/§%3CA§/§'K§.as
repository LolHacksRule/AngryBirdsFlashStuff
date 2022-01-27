package §<A§
{
   import §'!3§.§&!H§;
   import §,]§.Texture;
   import §,]§.§]l§;
   import §7!A§.§%b§;
   import §7!A§.§9!H§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'K§ extends EventDispatcher
   {
      
      private static const §4v§:int = 2;
      
      private static const §7x§:int = 2048;
      
      private static var §@C§:§'K§;
       
      
      private var §'#§:Dictionary;
      
      private var §16§:Vector.<§9!H§>;
      
      private var §>h§:Dictionary;
      
      private var §?<§:Boolean;
      
      private var §&#§:String;
      
      private var §8!M§:Texture;
      
      private var §@<§:int;
      
      private var §-j§:int;
      
      public function §'K§(param1:String = null)
      {
         super();
         this.§16§ = new Vector.<§9!H§>();
         this.§'#§ = new Dictionary();
         this.§>h§ = new Dictionary();
         this.§&#§ = param1;
      }
      
      public static function get §@!&§() : §'K§
      {
         if(!§@C§)
         {
            §@C§ = new §'K§();
         }
         return §@C§;
      }
      
      public function get §2=§() : int
      {
         return this.§@<§;
      }
      
      public function get §@!E§() : int
      {
         return this.§-j§;
      }
      
      public function get id() : String
      {
         return this.§&#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8<§ = null;
         var _loc2_:§9!H§ = null;
         if(this.§'#§)
         {
            for each(_loc1_ in this.§'#§)
            {
               this.§@G§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§'#§ = null;
         }
         if(this.§16§)
         {
            for each(_loc2_ in this.§16§)
            {
               _loc2_.dispose();
            }
            this.§16§ = null;
         }
         if(this.§>h§)
         {
            this.§>h§ = null;
         }
         if(this.§8!M§)
         {
            this.§8!M§.dispose();
            this.§8!M§ = null;
         }
         this.§16§ = new Vector.<§9!H§>();
         this.§'#§ = new Dictionary();
         this.§>h§ = new Dictionary();
      }
      
      public function §^!?§(param1:§9!H§) : void
      {
         if(this.§?<§)
         {
            return;
         }
         if(this.§16§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§16§.push(param1);
      }
      
      private function §"e§(param1:Array) : Rectangle
      {
         var _loc9_:§9!H§ = null;
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
            if(_loc2_ + _loc10_.width + §4v§ >= §7x§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §4v§ >= §7x§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §4v§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §4v§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §4v§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §&c§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§9!H§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§<#§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§%b§ = null;
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
            if(_loc3_ + _loc9_.width + §4v§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §4v§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §<#§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§7Z§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§+i§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§<!D§(_loc12_)).§<o§ = null;
               _loc13_.§&V§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §4v§;
            if(_loc9_.height + §4v§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §4v§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §7r§() : Boolean
      {
         var _loc1_:§9!H§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§<#§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§%b§ = null;
         if(!§&!H§.§%^§())
         {
            return false;
         }
         if(this.§?<§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§16§)
         {
            if(_loc1_.§+i§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§"e§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§&c§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§&W§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§7Z§;
               _loc9_ = _loc1_.§+i§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§<!D§(_loc10_);
                  this.§94§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§16§)
         {
            _loc1_.dispose();
         }
         this.§16§ = new Vector.<§9!H§>();
         this.§?<§ = true;
         return true;
      }
      
      private function §94§(param1:§%b§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§]l§ = null;
         var _loc5_:§8<§;
         if(!(_loc5_ = this.§'#§[param1.mName]))
         {
            _loc6_ = param1.§&V§.clone();
            _loc7_ = new §]l§(param2,_loc6_,false);
            _loc5_ = new §8<§(_loc7_,param3,_loc6_,param1.§25§,param1.§"!<§,param4);
            this.§'#§[param1.mName] = _loc5_;
         }
      }
      
      public function §9<§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§&!H§.§9!@§)
         {
            for(bd in this.§>h§)
            {
               try
               {
                  texture = this.§>h§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §@y§(param1:String) : §8<§
      {
         return this.§'#§[param1];
      }
      
      public function §&W§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§>h§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §&!H§.§^I§(param1,param2);
         this.§>h§[param1] = _loc3_;
         this.§!D§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §!D§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§-j§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§@<§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §"z§() : Texture
      {
         if(!this.§8!M§)
         {
            this.§8!M§ = this.§&W§(new BitmapData(40,40,false,16711935));
         }
         return this.§8!M§;
      }
      
      public function §@G§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§>h§)
         {
            if(this.§>h§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§!D§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§>h§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §[!M§(param1:String) : BitmapData
      {
         var _loc2_:§8<§ = this.§@y§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§@y§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§@y§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
