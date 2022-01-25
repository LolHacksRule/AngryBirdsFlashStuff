package §%!^§
{
   import §%!a§.§ !R§;
   import §%!a§.§?!9§;
   import §%i§.§%!_§;
   import §%i§.§-f§;
   import §%i§.§3H§;
   import §&!'§.§'!f§;
   import §&F§.§>!2§;
   import §?J§.*;
   import flash.geom.Point;
   
   public class §"!7§
   {
      
      public static const §,!V§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §,!3§:Number = 0;
      
      public var §'Y§:Number = -8;
      
      private var §+z§:Vector.<§%!_§> = null;
      
      private var §=!`§:Vector.<§3H§> = null;
      
      private var §4!?§:Vector.<§-f§> = null;
      
      private var §`I§:Vector.<§0!L§> = null;
      
      public var §+c§:Number = 0;
      
      public var §36§:Boolean = false;
      
      public var §!N§:int = 0;
      
      public var §?!<§:int = 0;
      
      private var §<![§:int = 0;
      
      private var §8!L§:String = null;
      
      public var mName:String = null;
      
      public function §"!7§()
      {
         super();
         this.§`I§ = new Vector.<§0!L§>();
         this.§+z§ = new Vector.<§%!_§>();
         this.§=!`§ = new Vector.<§3H§>();
         this.§4!?§ = new Vector.<§-f§>();
         this.§8!L§ = §,!V§;
      }
      
      public static function §]!"§(param1:String) : §"!7§
      {
         var _loc2_:§"!7§ = new §"!7§();
         _loc2_.§;q§(param1);
         return _loc2_;
      }
      
      public static function §5<§(param1:§?!9§) : Boolean
      {
         if(param1.§&y§ == §?!9§.§[!,§ || param1.§&y§ == §?!9§.§[!e§ || param1.§&y§ == §?!9§.§1K§)
         {
            return true;
         }
         return false;
      }
      
      public static function §,=§(param1:String) : §"!7§
      {
         var _loc2_:§"!7§ = §]!"§(param1);
         _loc2_.§,!3§ = _loc2_.§=!`§[0].x;
         _loc2_.§'Y§ = _loc2_.§=!`§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§+z§.length)
         {
            _loc2_.§+z§[_loc3_].angle = 360 - _loc2_.§+z§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §8X§(param1:int, param2:Object) : Vector.<§-f§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-f§ = null;
         var _loc3_:Vector.<§-f§> = new Vector.<§-f§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §-f§.§2=§ || _loc5_.type == §-f§.§'![§)
               {
                  _loc8_ = new §-f§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §-f§.§'![§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §-f§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §-f§.§+J§)
               {
                  _loc8_.§2A§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §2![§() : int
      {
         return this.§+z§.length;
      }
      
      public function get §"!J§() : int
      {
         return this.§4!?§.length;
      }
      
      public function get §@!?§() : int
      {
         return this.§=!`§.length;
      }
      
      public function get §]!U§() : int
      {
         return this.§`I§.length;
      }
      
      public function get theme() : String
      {
         return this.§8!L§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§8!L§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§'N§();
         if(_loc1_ > 0 && _loc1_ < this.§<![§)
         {
            return _loc1_;
         }
         if(this.§<![§ == 0)
         {
            return _loc1_;
         }
         return this.§<![§;
      }
      
      public function §6!S§(param1:int) : void
      {
         var _loc2_:int = this.§'N§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§<![§ = param1;
      }
      
      public function §;q§(param1:String) : void
      {
         var _loc4_:§0!L§ = null;
         var _loc5_:Object = null;
         var _loc6_:§3H§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§%!_§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§+c§ = _loc2_.LevelExtension;
         this.§36§ = false;
         this.§!N§ = _loc2_.scoreSilver;
         this.§?!<§ = _loc2_.scoreGold;
         this.§<![§ = _loc2_.scoreEagle;
         this.§8!L§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§4!?§ = §8X§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§`I§ = new Vector.<§0!L§>();
         this.§=!`§ = new Vector.<§3H§>();
         this.§+z§ = new Vector.<§%!_§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §0!L§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§`I§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §3H§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§=!`§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §%!_§()).x = _loc8_.x;
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
            this.§+z§.push(_loc9_);
            _loc3_++;
         }
         this.§,!3§ = _loc2_.slingshotX;
         this.§'Y§ = _loc2_.slingshotY;
      }
      
      public function §'!W§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§+c§;
         _loc1_.scoreSilver = this.§!N§;
         _loc1_.scoreGold = this.§?!<§;
         _loc1_.scoreEagle = this.§<![§;
         _loc1_.theme = this.§8!L§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§`I§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§=!`§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§=!`§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§+z§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§+z§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§4!?§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§4!?§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§+z§.length;
         _loc1_.counts.birds = this.§=!`§.length;
         _loc1_.counts.joints = this.§4!?§.length;
         _loc1_.slingshotX = this.§,!3§;
         _loc1_.slingshotY = this.§'Y§;
         return _loc1_;
      }
      
      public function §5Q§() : String
      {
         return JSON.stringify(this.§'!W§());
      }
      
      public function §'N§() : int
      {
         var _loc2_:§%!_§ = null;
         var _loc3_:String = null;
         var _loc4_:§?!9§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+z§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = § !R§.§^L§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = § !R§.§^L§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§5<§(_loc4_))
               {
                  _loc1_ += _loc4_.§>!`§ * §>!2§.§,!I§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §#s§() : XML
      {
         var _loc2_:§0!L§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§+c§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§36§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§!N§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§?!<§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§`I§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §'!f§.§,I§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§=!`§[0].x + "\" y=\"" + (this.§=!`§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§=!`§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§=!`§[_loc3_].id + "\" x=\"" + this.§=!`§[_loc3_].x + "\" y=\"" + this.§=!`§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§+z§.length)
         {
            _loc1_ += "<Item id=\"" + this.§+z§[_loc3_].id + "\" x=\"" + this.§+z§[_loc3_].x + "\" y=\"" + this.§+z§[_loc3_].y + "\" rotation=\"" + this.§+z§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §#z§(param1:int) : §%!_§
      {
         return this.§+z§[param1];
      }
      
      public function §^!3§(param1:§%!_§) : void
      {
         this.§+z§.push(param1);
      }
      
      public function §[q§(param1:int) : §-f§
      {
         return this.§4!?§[param1];
      }
      
      public function §&B§(param1:§-f§) : void
      {
         this.§4!?§.push(param1);
      }
      
      public function §;!7§(param1:int) : §3H§
      {
         return this.§=!`§[param1];
      }
      
      public function §]Y§(param1:§3H§) : void
      {
         this.§=!`§.push(param1);
      }
      
      public function §implements§() : void
      {
         this.§`I§ = new Vector.<§0!L§>();
      }
      
      public function §7!X§() : void
      {
         this.§=!`§ = new Vector.<§3H§>();
      }
      
      public function §=!]§(param1:int) : §0!L§
      {
         return this.§`I§[param1];
      }
      
      public function §%!<§(param1:§0!L§) : void
      {
         this.§`I§.push(param1);
      }
   }
}
