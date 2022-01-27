package §0!&§
{
   import §"`§.*;
   import §2z§.§2!U§;
   import §4!e§.§+!Y§;
   import §4!e§.§-a§;
   import §9!4§.§&l§;
   import §?!R§.§ F§;
   import §?!R§.§2!L§;
   import §?!R§.§?k§;
   import flash.geom.Point;
   
   public class §!'§
   {
      
      public static const §5[§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §+!a§:Number = 0;
      
      public var §41§:Number = -8;
      
      private var §@!^§:Vector.<§?k§> = null;
      
      private var §6E§:Vector.<§ F§> = null;
      
      private var §;!K§:Vector.<§2!L§> = null;
      
      private var §9"§:Vector.<§3!O§> = null;
      
      public var §8e§:Number = 0;
      
      public var §;@§:Boolean = false;
      
      public var §>!V§:int = 0;
      
      public var §4!W§:int = 0;
      
      private var §+>§:int = 0;
      
      private var §7!K§:String = null;
      
      public var mName:String = null;
      
      public function §!'§()
      {
         super();
         this.§9"§ = new Vector.<§3!O§>();
         this.§@!^§ = new Vector.<§?k§>();
         this.§6E§ = new Vector.<§ F§>();
         this.§;!K§ = new Vector.<§2!L§>();
         this.§7!K§ = §5[§;
      }
      
      public static function §>v§(param1:String) : §!'§
      {
         var _loc2_:§!'§ = new §!'§();
         _loc2_.§@"§(param1);
         return _loc2_;
      }
      
      public static function §,!0§(param1:§-a§) : Boolean
      {
         if(param1.§@i§ == §-a§.§%!Q§ || param1.§@i§ == §-a§.§&!@§ || param1.§@i§ == §-a§.§-!R§)
         {
            return true;
         }
         return false;
      }
      
      public static function §4!?§(param1:String) : §!'§
      {
         var _loc2_:§!'§ = §>v§(param1);
         _loc2_.§+!a§ = _loc2_.§6E§[0].x;
         _loc2_.§41§ = _loc2_.§6E§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@!^§.length)
         {
            _loc2_.§@!^§[_loc3_].angle = 360 - _loc2_.§@!^§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §[!G§(param1:int, param2:Object) : Vector.<§2!L§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§2!L§ = null;
         var _loc3_:Vector.<§2!L§> = new Vector.<§2!L§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §2!L§.§%-§ || _loc5_.type == §2!L§.§<!G§)
               {
                  _loc8_ = new §2!L§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §2!L§.§<!G§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §2!L§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §2!L§.§+!6§)
               {
                  _loc8_.§1!S§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §1!D§() : int
      {
         return this.§@!^§.length;
      }
      
      public function get §4V§() : int
      {
         return this.§;!K§.length;
      }
      
      public function get §5!1§() : int
      {
         return this.§6E§.length;
      }
      
      public function get §+!7§() : int
      {
         return this.§9"§.length;
      }
      
      public function get theme() : String
      {
         return this.§7!K§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§7!K§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§=F§();
         if(_loc1_ > 0 && _loc1_ < this.§+>§)
         {
            return _loc1_;
         }
         if(this.§+>§ == 0)
         {
            return _loc1_;
         }
         return this.§+>§;
      }
      
      public function §1!E§(param1:int) : void
      {
         var _loc2_:int = this.§=F§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§+>§ = param1;
      }
      
      public function §@"§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§3!O§ = null;
         var _loc9_:Object = null;
         var _loc10_:§ F§ = null;
         var _loc11_:§?k§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§8e§ = _loc2_.LevelExtension;
         this.§;@§ = false;
         this.§>!V§ = _loc2_.scoreSilver;
         this.§4!W§ = _loc2_.scoreGold;
         this.§+>§ = _loc2_.scoreEagle;
         this.§7!K§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§;!K§ = §[!G§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§9"§ = new Vector.<§3!O§>();
         this.§6E§ = new Vector.<§ F§>();
         this.§@!^§ = new Vector.<§?k§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §3!O§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§9"§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new § F§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§6E§.push(_loc10_);
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
            (_loc11_ = new §?k§()).x = _loc5_.x;
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
            this.§@!^§.push(_loc11_);
            _loc3_++;
         }
         this.§+!a§ = _loc2_.slingshotX;
         this.§41§ = _loc2_.slingshotY;
      }
      
      public function §&q§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§8e§;
         _loc1_.scoreSilver = this.§>!V§;
         _loc1_.scoreGold = this.§4!W§;
         _loc1_.scoreEagle = this.§+>§;
         _loc1_.theme = this.§7!K§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§9"§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§6E§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§6E§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!^§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@!^§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§;!K§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§;!K§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@!^§.length;
         _loc1_.counts.birds = this.§6E§.length;
         _loc1_.counts.joints = this.§;!K§.length;
         _loc1_.slingshotX = this.§+!a§;
         _loc1_.slingshotY = this.§41§;
         return _loc1_;
      }
      
      public function §6!D§() : String
      {
         return JSON.stringify(this.§&q§());
      }
      
      public function §=F§() : int
      {
         var _loc2_:§?k§ = null;
         var _loc3_:String = null;
         var _loc4_:§-a§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!^§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §+!Y§.§#o§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §+!Y§.§#o§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§,!0§(_loc4_))
               {
                  _loc1_ += _loc4_.§+z§ * §2!U§.§2m§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §`!a§() : XML
      {
         var _loc2_:§3!O§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§8e§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§;@§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§>!V§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§4!W§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§9"§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §&l§.§'I§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§6E§[0].x + "\" y=\"" + (this.§6E§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§6E§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§6E§[_loc3_].id + "\" x=\"" + this.§6E§[_loc3_].x + "\" y=\"" + this.§6E§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@!^§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@!^§[_loc3_].id + "\" x=\"" + this.§@!^§[_loc3_].x + "\" y=\"" + this.§@!^§[_loc3_].y + "\" rotation=\"" + this.§@!^§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §?j§(param1:int) : §?k§
      {
         return this.§@!^§[param1];
      }
      
      public function §?W§(param1:§?k§) : void
      {
         this.§@!^§.push(param1);
      }
      
      public function §#L§(param1:int) : §2!L§
      {
         return this.§;!K§[param1];
      }
      
      public function § ;§(param1:§2!L§) : void
      {
         this.§;!K§.push(param1);
      }
      
      public function § !R§(param1:int) : § F§
      {
         return this.§6E§[param1];
      }
      
      public function §&!&§(param1:§ F§) : void
      {
         this.§6E§.push(param1);
      }
      
      public function §;!"§() : void
      {
         this.§9"§ = new Vector.<§3!O§>();
      }
      
      public function §&$§() : void
      {
         this.§6E§ = new Vector.<§ F§>();
      }
      
      public function §[A§(param1:int) : §3!O§
      {
         return this.§9"§[param1];
      }
      
      public function §=g§(param1:§3!O§) : void
      {
         this.§9"§.push(param1);
      }
   }
}
