package §^]§
{
   import §&o§.§3,§;
   import §&o§.§3I§;
   import §&o§.§72§;
   import §-!O§.§?Z§;
   import §2G§.§5!1§;
   import §2G§.§>U§;
   import §4?§.*;
   import §9T§.§1r§;
   import flash.geom.Point;
   
   public class §[z§
   {
      
      public static const §"!N§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §6!C§:Number = 0;
      
      public var §#2§:Number = -8;
      
      private var §`!O§:Vector.<§72§> = null;
      
      private var §,N§:Vector.<§3I§> = null;
      
      private var §0b§:Vector.<§3,§> = null;
      
      private var §?!3§:Vector.<§]X§> = null;
      
      public var §3p§:Number = 0;
      
      public var §3]§:Boolean = false;
      
      public var §@w§:int = 0;
      
      public var §,!<§:int = 0;
      
      private var §,!,§:int = 0;
      
      private var §!L§:String = null;
      
      public var mName:String = null;
      
      public function §[z§()
      {
         super();
         this.§?!3§ = new Vector.<§]X§>();
         this.§`!O§ = new Vector.<§72§>();
         this.§,N§ = new Vector.<§3I§>();
         this.§0b§ = new Vector.<§3,§>();
         this.§!L§ = §"!N§;
      }
      
      public static function §!@§(param1:String) : §[z§
      {
         var _loc2_:§[z§ = new §[z§();
         _loc2_.§]R§(param1);
         return _loc2_;
      }
      
      public static function §83§(param1:§5!1§) : Boolean
      {
         if(param1.§]^§ == §5!1§.§4!,§ || param1.§]^§ == §5!1§.§?m§ || param1.§]^§ == §5!1§.§9D§)
         {
            return true;
         }
         return false;
      }
      
      public static function §@!2§(param1:String) : §[z§
      {
         var _loc2_:§[z§ = §!@§(param1);
         _loc2_.§6!C§ = _loc2_.§,N§[0].x;
         _loc2_.§#2§ = _loc2_.§,N§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§`!O§.length)
         {
            _loc2_.§`!O§[_loc3_].angle = 360 - _loc2_.§`!O§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function § g§(param1:int, param2:Object) : Vector.<§3,§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3,§ = null;
         var _loc3_:Vector.<§3,§> = new Vector.<§3,§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §3,§.§]K§ || _loc5_.type == §3,§.§0!9§)
               {
                  _loc8_ = new §3,§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §3,§.§0!9§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §3,§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §3,§.§>R§)
               {
                  _loc8_.§9"§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §;J§() : int
      {
         return this.§`!O§.length;
      }
      
      public function get §&,§() : int
      {
         return this.§0b§.length;
      }
      
      public function get § l§() : int
      {
         return this.§,N§.length;
      }
      
      public function get §9!N§() : int
      {
         return this.§?!3§.length;
      }
      
      public function get theme() : String
      {
         return this.§!L§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§!L§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§,u§();
         if(_loc1_ > 0 && _loc1_ < this.§,!,§)
         {
            return _loc1_;
         }
         if(this.§,!,§ == 0)
         {
            return _loc1_;
         }
         return this.§,!,§;
      }
      
      public function §0c§(param1:int) : void
      {
         var _loc2_:int = this.§,u§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§,!,§ = param1;
      }
      
      public function §]R§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§]X§ = null;
         var _loc9_:Object = null;
         var _loc10_:§3I§ = null;
         var _loc11_:§72§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§3p§ = _loc2_.LevelExtension;
         this.§3]§ = false;
         this.§@w§ = _loc2_.scoreSilver;
         this.§,!<§ = _loc2_.scoreGold;
         this.§,!,§ = _loc2_.scoreEagle;
         this.§!L§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§0b§ = § g§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§?!3§ = new Vector.<§]X§>();
         this.§,N§ = new Vector.<§3I§>();
         this.§`!O§ = new Vector.<§72§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §]X§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§?!3§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §3I§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§,N§.push(_loc10_);
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
            (_loc11_ = new §72§()).x = _loc5_.x;
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
            this.§`!O§.push(_loc11_);
            _loc3_++;
         }
         this.§6!C§ = _loc2_.slingshotX;
         this.§#2§ = _loc2_.slingshotY;
      }
      
      public function § u§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§3p§;
         _loc1_.scoreSilver = this.§@w§;
         _loc1_.scoreGold = this.§,!<§;
         _loc1_.scoreEagle = this.§,!,§;
         _loc1_.theme = this.§!L§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§?!3§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§,N§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,N§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`!O§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§`!O§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0b§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§0b§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§`!O§.length;
         _loc1_.counts.birds = this.§,N§.length;
         _loc1_.counts.joints = this.§0b§.length;
         _loc1_.slingshotX = this.§6!C§;
         _loc1_.slingshotY = this.§#2§;
         return _loc1_;
      }
      
      public function §3U§() : String
      {
         return JSON.stringify(this.§ u§());
      }
      
      public function §,u§() : int
      {
         var _loc2_:§72§ = null;
         var _loc3_:String = null;
         var _loc4_:§5!1§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`!O§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §>U§.§=v§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §>U§.§=v§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§83§(_loc4_))
               {
                  _loc1_ += _loc4_.§53§ * §1r§.§5m§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §>!A§() : XML
      {
         var _loc2_:§]X§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§3p§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§3]§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§@w§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§,!<§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§?!3§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §?Z§.§&5§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§,N§[0].x + "\" y=\"" + (this.§,N§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§,N§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§,N§[_loc3_].id + "\" x=\"" + this.§,N§[_loc3_].x + "\" y=\"" + this.§,N§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§`!O§.length)
         {
            _loc1_ += "<Item id=\"" + this.§`!O§[_loc3_].id + "\" x=\"" + this.§`!O§[_loc3_].x + "\" y=\"" + this.§`!O§[_loc3_].y + "\" rotation=\"" + this.§`!O§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function § for§(param1:int) : §72§
      {
         return this.§`!O§[param1];
      }
      
      public function addObject(param1:§72§) : void
      {
         this.§`!O§.push(param1);
      }
      
      public function §9K§(param1:int) : §3,§
      {
         return this.§0b§[param1];
      }
      
      public function §%y§(param1:§3,§) : void
      {
         this.§0b§.push(param1);
      }
      
      public function §]O§(param1:int) : §3I§
      {
         return this.§,N§[param1];
      }
      
      public function §[`§(param1:§3I§) : void
      {
         this.§,N§.push(param1);
      }
      
      public function §,]§() : void
      {
         this.§?!3§ = new Vector.<§]X§>();
      }
      
      public function §2f§() : void
      {
         this.§,N§ = new Vector.<§3I§>();
      }
      
      public function §>d§(param1:int) : §]X§
      {
         return this.§?!3§[param1];
      }
      
      public function §-!L§(param1:§]X§) : void
      {
         this.§?!3§.push(param1);
      }
   }
}
