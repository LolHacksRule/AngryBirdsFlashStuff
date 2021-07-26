package §`!n§
{
   import §+x§.*;
   import §0!2§.§5"L§;
   import §=%§.§>"-§;
   import §=%§.§]"%§;
   import §@-§.§&!g§;
   import §@-§.§&"!§;
   import §@-§.§+!z§;
   import §`u§.§5!-§;
   import flash.geom.Point;
   
   public class §#!s§
   {
      
      public static const §6I§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §"!`§:Number = 0;
      
      public var §"I§:Number = -8;
      
      protected var §!!&§:Vector.<§&"!§> = null;
      
      protected var §1"&§:Vector.<§+!z§> = null;
      
      protected var §7"@§:Vector.<§&!g§> = null;
      
      protected var §^"C§:Vector.<§2!z§> = null;
      
      public var §8!&§:int = 0;
      
      public var §`!O§:int = 0;
      
      private var §@"'§:int = 0;
      
      protected var §," §:String = null;
      
      public var mName:String = null;
      
      public function §#!s§()
      {
         super();
         this.§^"C§ = new Vector.<§2!z§>();
         this.§!!&§ = new Vector.<§&"!§>();
         this.§1"&§ = new Vector.<§+!z§>();
         this.§7"@§ = new Vector.<§&!g§>();
         this.§," § = §6I§;
      }
      
      public static function §9"9§(param1:String) : §#!s§
      {
         var _loc2_:§#!s§ = new §#!s§();
         _loc2_.§0!$§(param1);
         return _loc2_;
      }
      
      public static function §>"#§(param1:§]"%§) : Boolean
      {
         if(param1.§^!E§ == §]"%§.§]T§ || param1.§^!E§ == §]"%§.§%"#§ || param1.§^!E§ == §]"%§.§;1§)
         {
            return true;
         }
         return false;
      }
      
      public static function §!""§(param1:String) : §#!s§
      {
         var _loc2_:§#!s§ = §9"9§(param1);
         _loc2_.§"!`§ = _loc2_.§1"&§[0].x;
         _loc2_.§"I§ = _loc2_.§1"&§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!!&§.length)
         {
            _loc2_.§!!&§[_loc3_].angle = 360 - _loc2_.§!!&§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §?!B§(param1:int, param2:Object) : Vector.<§&!g§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§&!g§ = null;
         var _loc3_:Vector.<§&!g§> = new Vector.<§&!g§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §&!g§.§0"<§ || _loc5_.type == §&!g§.§3"8§)
               {
                  _loc8_ = new §&!g§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §&!g§.§3"8§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §&!g§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §&!g§.§[! §)
               {
                  _loc8_.§="5§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §8"'§() : int
      {
         return this.§!!&§.length;
      }
      
      public function get §+"G§() : int
      {
         return this.§7"@§.length;
      }
      
      public function get §9x§() : int
      {
         return this.§1"&§.length;
      }
      
      public function get §>Q§() : int
      {
         return this.§^"C§.length;
      }
      
      public function get theme() : String
      {
         return this.§," §;
      }
      
      public function set theme(param1:String) : void
      {
         this.§," § = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§3!e§();
         if(_loc1_ > 0 && _loc1_ < this.§@"'§)
         {
            return _loc1_;
         }
         if(this.§@"'§ == 0)
         {
            return _loc1_;
         }
         return this.§@"'§;
      }
      
      public function § w§(param1:int) : void
      {
         var _loc2_:int = this.§3!e§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§@"'§ = param1;
      }
      
      public function §0!$§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§2!z§ = null;
         var _loc9_:Object = null;
         var _loc10_:§+!z§ = null;
         var _loc11_:§&"!§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§8!&§ = _loc2_.scoreSilver;
         this.§`!O§ = _loc2_.scoreGold;
         this.§@"'§ = _loc2_.scoreEagle;
         this.§," § = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§7"@§ = §?!B§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§^"C§ = new Vector.<§2!z§>();
         this.§1"&§ = new Vector.<§+!z§>();
         this.§!!&§ = new Vector.<§&"!§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §2!z§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§^"C§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §+!z§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§1"&§.push(_loc10_);
            _loc3_++;
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 1;
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            if((_loc5_ = _loc2_.world[_loc6_]).uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc4_.push(_loc5_.uniqueID);
            }
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            _loc5_ = _loc2_.world[_loc6_];
            (_loc11_ = new §&"!§()).x = _loc5_.x;
            _loc11_.y = _loc5_.y;
            _loc11_.id = _loc5_.id;
            if(_loc5_.uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc11_.uniqueID = _loc5_.uniqueID;
            }
            else
            {
               while(_loc4_.indexOf(_loc7_) >= 0)
               {
                  _loc7_++;
               }
               _loc11_.uniqueID = _loc7_.toString();
               _loc4_.push(_loc7_);
            }
            if(_loc5_.front)
            {
               _loc11_.front = _loc5_.front;
            }
            _loc11_.angle = _loc5_.angle;
            this.§!!&§.push(_loc11_);
            _loc3_++;
         }
         this.§"!`§ = _loc2_.slingshotX;
         this.§"I§ = _loc2_.slingshotY;
      }
      
      public function §^X§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§8!&§;
         _loc1_.scoreGold = this.§`!O§;
         _loc1_.scoreEagle = this.§@"'§;
         _loc1_.theme = this.§," §;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§^"C§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§1"&§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§1"&§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!!&§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§!!&§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7"@§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§7"@§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§!!&§.length;
         _loc1_.counts.birds = this.§1"&§.length;
         _loc1_.counts.joints = this.§7"@§.length;
         _loc1_.slingshotX = this.§"!`§;
         _loc1_.slingshotY = this.§"I§;
         return _loc1_;
      }
      
      public function §<8§() : String
      {
         return JSON.stringify(this.§^X§());
      }
      
      public function §3!e§() : int
      {
         var _loc2_:§&"!§ = null;
         var _loc3_:String = null;
         var _loc4_:§]"%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!!&§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §>"-§.§0@§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §>"-§.§0@§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§>"#§(_loc4_))
               {
                  _loc1_ += _loc4_.§3!A§ * §5"L§.§3h§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §@!i§() : XML
      {
         var _loc2_:§2!z§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§8!&§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§`!O§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§^"C§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §5!-§.§[!r§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§1"&§[0].x + "\" y=\"" + (this.§1"&§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§1"&§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§1"&§[_loc3_].id + "\" x=\"" + this.§1"&§[_loc3_].x + "\" y=\"" + this.§1"&§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§!!&§.length)
         {
            _loc1_ += "<Item id=\"" + this.§!!&§[_loc3_].id + "\" x=\"" + this.§!!&§[_loc3_].x + "\" y=\"" + this.§!!&§[_loc3_].y + "\" rotation=\"" + this.§!!&§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function § §(param1:int) : §&"!§
      {
         return this.§!!&§[param1];
      }
      
      public function addObject(param1:§&"!§) : void
      {
         this.§!!&§.push(param1);
      }
      
      public function §8Q§(param1:int) : §&!g§
      {
         return this.§7"@§[param1];
      }
      
      public function §@v§(param1:§&!g§) : void
      {
         this.§7"@§.push(param1);
      }
      
      public function §'!j§(param1:int) : §+!z§
      {
         return this.§1"&§[param1];
      }
      
      public function §7";§(param1:§+!z§) : void
      {
         this.§1"&§.push(param1);
      }
      
      public function §^l§() : void
      {
         this.§^"C§ = new Vector.<§2!z§>();
      }
      
      public function §4!&§() : void
      {
         this.§1"&§ = new Vector.<§+!z§>();
      }
      
      public function §[!&§(param1:int) : §2!z§
      {
         return this.§^"C§[param1];
      }
      
      public function §`!L§(param1:§2!z§) : void
      {
         this.§^"C§.push(param1);
      }
   }
}
