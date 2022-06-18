package §6Z§
{
   import § !'§.§+p§;
   import § !'§.§6A§;
   import § !'§.§>v§;
   import §+!'§.*;
   import §9s§.§^9§;
   import §;!'§.§;l§;
   import §;!'§.§=j§;
   import §@!+§.§+_§;
   import flash.geom.Point;
   
   public class §"!;§
   {
      
      public static const §9t§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §#! §:Number = 0;
      
      public var §#&§:Number = -8;
      
      protected var §]§:Vector.<§>v§> = null;
      
      protected var §@s§:Vector.<§+p§> = null;
      
      protected var §[!5§:Vector.<§6A§> = null;
      
      protected var §3M§:Vector.<§%i§> = null;
      
      public var §]C§:int = 0;
      
      public var §%!=§:int = 0;
      
      private var §1!3§:int = 0;
      
      protected var §#2§:String = null;
      
      public var mName:String = null;
      
      public function §"!;§()
      {
         super();
         this.§3M§ = new Vector.<§%i§>();
         this.§]§ = new Vector.<§>v§>();
         this.§@s§ = new Vector.<§+p§>();
         this.§[!5§ = new Vector.<§6A§>();
         this.§#2§ = §9t§;
      }
      
      public static function §8!!§(param1:String) : §"!;§
      {
         var _loc2_:§"!;§ = new §"!;§();
         _loc2_.§'!4§(param1);
         return _loc2_;
      }
      
      public static function §[1§(param1:§;l§) : Boolean
      {
         if(param1.§3E§ == §;l§.§@Z§ || param1.§3E§ == §;l§.§2$§ || param1.§3E§ == §;l§.§!!<§)
         {
            return true;
         }
         return false;
      }
      
      public static function §!X§(param1:String) : §"!;§
      {
         var _loc2_:§"!;§ = §8!!§(param1);
         _loc2_.§#! § = _loc2_.§@s§[0].x;
         _loc2_.§#&§ = _loc2_.§@s§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§]§.length)
         {
            _loc2_.§]§[_loc3_].angle = 360 - _loc2_.§]§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §>! §(param1:int, param2:Object) : Vector.<§6A§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§6A§ = null;
         var _loc3_:Vector.<§6A§> = new Vector.<§6A§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §6A§.§&!I§ || _loc5_.type == §6A§.§,%§)
               {
                  _loc8_ = new §6A§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §6A§.§,%§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §6A§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §6A§.§#!L§)
               {
                  _loc8_.§"A§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §8k§() : int
      {
         return this.§]§.length;
      }
      
      public function get §`!§() : int
      {
         return this.§[!5§.length;
      }
      
      public function get §%x§() : int
      {
         return this.§@s§.length;
      }
      
      public function get §!>§() : int
      {
         return this.§3M§.length;
      }
      
      public function get theme() : String
      {
         return this.§#2§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§#2§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§5!>§();
         if(_loc1_ > 0 && _loc1_ < this.§1!3§)
         {
            return _loc1_;
         }
         if(this.§1!3§ == 0)
         {
            return _loc1_;
         }
         return this.§1!3§;
      }
      
      public function §%!+§(param1:int) : void
      {
         var _loc2_:int = this.§5!>§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§1!3§ = param1;
      }
      
      public function §'!4§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§%i§ = null;
         var _loc9_:Object = null;
         var _loc10_:§+p§ = null;
         var _loc11_:§>v§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§]C§ = _loc2_.scoreSilver;
         this.§%!=§ = _loc2_.scoreGold;
         this.§1!3§ = _loc2_.scoreEagle;
         this.§#2§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§[!5§ = §>! §(_loc2_.counts.joints,_loc2_.world);
         }
         this.§3M§ = new Vector.<§%i§>();
         this.§@s§ = new Vector.<§+p§>();
         this.§]§ = new Vector.<§>v§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §%i§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§3M§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §+p§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§@s§.push(_loc10_);
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
            (_loc11_ = new §>v§()).x = _loc5_.x;
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
            this.§]§.push(_loc11_);
            _loc3_++;
         }
         this.§#! § = _loc2_.slingshotX;
         this.§#&§ = _loc2_.slingshotY;
      }
      
      public function §!g§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§]C§;
         _loc1_.scoreGold = this.§%!=§;
         _loc1_.scoreEagle = this.§1!3§;
         _loc1_.theme = this.§#2§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§3M§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§@s§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§@s§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§]§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[!5§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§[!5§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§]§.length;
         _loc1_.counts.birds = this.§@s§.length;
         _loc1_.counts.joints = this.§[!5§.length;
         _loc1_.slingshotX = this.§#! §;
         _loc1_.slingshotY = this.§#&§;
         return _loc1_;
      }
      
      public function §&!O§() : String
      {
         return JSON.stringify(this.§!g§());
      }
      
      public function §5!>§() : int
      {
         var _loc2_:§>v§ = null;
         var _loc3_:String = null;
         var _loc4_:§;l§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §=j§.§=c§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §=j§.§=c§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§[1§(_loc4_))
               {
                  _loc1_ += _loc4_.§!d§ * §^9§.§2!-§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §9=§() : XML
      {
         var _loc2_:§%i§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§]C§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§%!=§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§3M§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §+_§.§-!0§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§@s§[0].x + "\" y=\"" + (this.§@s§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§@s§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§@s§[_loc3_].id + "\" x=\"" + this.§@s§[_loc3_].x + "\" y=\"" + this.§@s§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§]§.length)
         {
            _loc1_ += "<Item id=\"" + this.§]§[_loc3_].id + "\" x=\"" + this.§]§[_loc3_].x + "\" y=\"" + this.§]§[_loc3_].y + "\" rotation=\"" + this.§]§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §]!G§(param1:int) : §>v§
      {
         return this.§]§[param1];
      }
      
      public function addObject(param1:§>v§) : void
      {
         this.§]§.push(param1);
      }
      
      public function §1&§(param1:int) : §6A§
      {
         return this.§[!5§[param1];
      }
      
      public function §2F§(param1:§6A§) : void
      {
         this.§[!5§.push(param1);
      }
      
      public function §with§(param1:int) : §+p§
      {
         return this.§@s§[param1];
      }
      
      public function §3z§(param1:§+p§) : void
      {
         this.§@s§.push(param1);
      }
      
      public function §<§() : void
      {
         this.§3M§ = new Vector.<§%i§>();
      }
      
      public function §!-§() : void
      {
         this.§@s§ = new Vector.<§+p§>();
      }
      
      public function §9!;§(param1:int) : §%i§
      {
         return this.§3M§[param1];
      }
      
      public function §^B§(param1:§%i§) : void
      {
         this.§3M§.push(param1);
      }
   }
}
