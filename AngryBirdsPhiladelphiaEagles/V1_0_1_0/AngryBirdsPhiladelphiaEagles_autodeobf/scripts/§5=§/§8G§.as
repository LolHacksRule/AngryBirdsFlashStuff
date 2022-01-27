package §5=§
{
   import §+!N§.§!9§;
   import §+!N§.§1[§;
   import §>2§.§4h§;
   import §^I§.§7Z§;
   import §^I§.§8!-§;
   import §^I§.§>!?§;
   import §^Q§.§<a§;
   import flash.geom.Point;
   import §try§.*;
   
   public class §8G§
   {
      
      public static const §<+§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §`u§:Number = 0;
      
      public var §9;§:Number = -8;
      
      private var §4C§:Vector.<§7Z§> = null;
      
      private var §^j§:Vector.<§8!-§> = null;
      
      private var §'!=§:Vector.<§>!?§> = null;
      
      private var § !4§:Vector.<§@!§> = null;
      
      public var §`!B§:Number = 0;
      
      public var §5I§:Boolean = false;
      
      public var §-! §:int = 0;
      
      public var §"@§:int = 0;
      
      private var §4!&§:int = 0;
      
      private var §5! §:String = null;
      
      public var mName:String = null;
      
      public function §8G§()
      {
         super();
         this.§ !4§ = new Vector.<§@!§>();
         this.§4C§ = new Vector.<§7Z§>();
         this.§^j§ = new Vector.<§8!-§>();
         this.§'!=§ = new Vector.<§>!?§>();
         this.§5! § = §<+§;
      }
      
      public static function §&B§(param1:String) : §8G§
      {
         var _loc2_:§8G§ = new §8G§();
         _loc2_.§]A§(param1);
         return _loc2_;
      }
      
      public static function §7u§(param1:§!9§) : Boolean
      {
         if(param1.§>!-§ == §!9§.§2!A§ || param1.§>!-§ == §!9§.§!!%§ || param1.§>!-§ == §!9§.§3!H§)
         {
            return true;
         }
         return false;
      }
      
      public static function §7!#§(param1:String) : §8G§
      {
         var _loc2_:§8G§ = §&B§(param1);
         _loc2_.§`u§ = _loc2_.§^j§[0].x;
         _loc2_.§9;§ = _loc2_.§^j§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§4C§.length)
         {
            _loc2_.§4C§[_loc3_].angle = 360 - _loc2_.§4C§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §&]§(param1:int, param2:Object) : Vector.<§>!?§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§>!?§ = null;
         var _loc3_:Vector.<§>!?§> = new Vector.<§>!?§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §>!?§.§;a§ || _loc5_.type == §>!?§.§;k§)
               {
                  _loc8_ = new §>!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §>!?§.§;k§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §>!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §>!?§.§9!H§)
               {
                  _loc8_.§9!3§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §^F§() : int
      {
         return this.§4C§.length;
      }
      
      public function get §4-§() : int
      {
         return this.§'!=§.length;
      }
      
      public function get §`!J§() : int
      {
         return this.§^j§.length;
      }
      
      public function get §8b§() : int
      {
         return this.§ !4§.length;
      }
      
      public function get theme() : String
      {
         return this.§5! §;
      }
      
      public function set theme(param1:String) : void
      {
         this.§5! § = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§^N§();
         if(_loc1_ > 0 && _loc1_ < this.§4!&§)
         {
            return _loc1_;
         }
         if(this.§4!&§ == 0)
         {
            return _loc1_;
         }
         return this.§4!&§;
      }
      
      public function §"!H§(param1:int) : void
      {
         var _loc2_:int = this.§^N§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§4!&§ = param1;
      }
      
      public function §]A§(param1:String) : void
      {
         var _loc4_:§@!§ = null;
         var _loc5_:Object = null;
         var _loc6_:§8!-§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§7Z§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§`!B§ = _loc2_.LevelExtension;
         this.§5I§ = false;
         this.§-! § = _loc2_.scoreSilver;
         this.§"@§ = _loc2_.scoreGold;
         this.§4!&§ = _loc2_.scoreEagle;
         this.§5! § = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§'!=§ = §&]§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§ !4§ = new Vector.<§@!§>();
         this.§^j§ = new Vector.<§8!-§>();
         this.§4C§ = new Vector.<§7Z§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §@!§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§ !4§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §8!-§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§^j§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §7Z§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID && _loc8_.uniqueID.length > 0)
            {
               _loc9_.uniqueID = _loc8_.uniqueID;
            }
            else
            {
               _loc9_.uniqueID = _loc7_;
            }
            if(_loc8_.front)
            {
               _loc9_.front = _loc8_.front;
            }
            _loc9_.angle = _loc8_.angle;
            this.§4C§.push(_loc9_);
            _loc3_++;
         }
         this.§`u§ = _loc2_.slingshotX;
         this.§9;§ = _loc2_.slingshotY;
      }
      
      public function §+i§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§`!B§;
         _loc1_.scoreSilver = this.§-! §;
         _loc1_.scoreGold = this.§"@§;
         _loc1_.scoreEagle = this.§4!&§;
         _loc1_.theme = this.§5! §;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§ !4§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§^j§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§^j§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§4C§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§4C§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§'!=§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§'!=§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§4C§.length;
         _loc1_.counts.birds = this.§^j§.length;
         _loc1_.counts.joints = this.§'!=§.length;
         _loc1_.slingshotX = this.§`u§;
         _loc1_.slingshotY = this.§9;§;
         return _loc1_;
      }
      
      public function § !=§() : String
      {
         return JSON.stringify(this.§+i§());
      }
      
      public function §^N§() : int
      {
         var _loc2_:§7Z§ = null;
         var _loc3_:String = null;
         var _loc4_:§!9§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4C§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §1[§.§[Y§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §1[§.§[Y§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§7u§(_loc4_))
               {
                  _loc1_ += _loc4_.§0-§ * §4h§.§27§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §;! §() : XML
      {
         var _loc2_:§@!§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§`!B§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§5I§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§-! § + "\"";
         _loc1_ += " scoreGold=\"" + this.§"@§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§ !4§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §<a§.§%N§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§^j§[0].x + "\" y=\"" + (this.§^j§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§^j§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§^j§[_loc3_].id + "\" x=\"" + this.§^j§[_loc3_].x + "\" y=\"" + this.§^j§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§4C§.length)
         {
            _loc1_ += "<Item id=\"" + this.§4C§[_loc3_].id + "\" x=\"" + this.§4C§[_loc3_].x + "\" y=\"" + this.§4C§[_loc3_].y + "\" rotation=\"" + this.§4C§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §8!F§(param1:int) : §7Z§
      {
         return this.§4C§[param1];
      }
      
      public function addObject(param1:§7Z§) : void
      {
         this.§4C§.push(param1);
      }
      
      public function §3,§(param1:int) : §>!?§
      {
         return this.§'!=§[param1];
      }
      
      public function §'!B§(param1:§>!?§) : void
      {
         this.§'!=§.push(param1);
      }
      
      public function §1'§(param1:int) : §8!-§
      {
         return this.§^j§[param1];
      }
      
      public function §-!E§(param1:§8!-§) : void
      {
         this.§^j§.push(param1);
      }
      
      public function §>!@§() : void
      {
         this.§ !4§ = new Vector.<§@!§>();
      }
      
      public function §<5§() : void
      {
         this.§^j§ = new Vector.<§8!-§>();
      }
      
      public function §^w§(param1:int) : §@!§
      {
         return this.§ !4§[param1];
      }
      
      public function §#B§(param1:§@!§) : void
      {
         this.§ !4§.push(param1);
      }
   }
}
