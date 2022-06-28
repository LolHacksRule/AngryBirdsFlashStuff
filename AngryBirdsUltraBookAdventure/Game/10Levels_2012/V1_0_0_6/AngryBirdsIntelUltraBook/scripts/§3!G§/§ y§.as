package §3!G§
{
   import §,!!§.§#!Y§;
   import §-d§.§%d§;
   import §-d§.§>r§;
   import §2_§.§'u§;
   import §4!O§.§"E§;
   import §4!O§.;
   import §4!O§.§0!Q§;
   import §6!p§.*;
   import flash.geom.Point;
   
   public class § y§
   {
      
      public static const §!n§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §'[§:Number = 0;
      
      public var §=1§:Number = -8;
      
      private var §6!§:Vector.<§#4§> = null;
      
      private var §]!^§:Vector.<§"E§> = null;
      
      private var §!@§:Vector.<§0!Q§> = null;
      
      private var §'!N§:Vector.<§'Z§> = null;
      
      public var §>D§:Number = 0;
      
      public var §1!m§:Boolean = false;
      
      public var §3!4§:int = 0;
      
      public var §+h§:int = 0;
      
      private var §@[§:int = 0;
      
      private var §<t§:String = null;
      
      public var mName:String = null;
      
      public function § y§()
      {
         super();
         this.§'!N§ = new Vector.<§'Z§>();
         this.§6!§ = new Vector.<§#4§>();
         this.§]!^§ = new Vector.<§"E§>();
         this.§!@§ = new Vector.<§0!Q§>();
         this.§<t§ = §!n§;
      }
      
      public static function §;!P§(param1:String) : § y§
      {
         var _loc2_:§ y§ = new § y§();
         _loc2_.§=!G§(param1);
         return _loc2_;
      }
      
      public static function §4!g§(param1:§>r§) : Boolean
      {
         if(param1.§]!g§ == §>r§.§`!s§ || param1.§]!g§ == §>r§.§7b§ || param1.§]!g§ == §>r§.§@!g§)
         {
            return true;
         }
         return false;
      }
      
      public static function §<3§(param1:String) : § y§
      {
         var _loc2_:§ y§ = §;!P§(param1);
         _loc2_.§'[§ = _loc2_.§]!^§[0].x;
         _loc2_.§=1§ = _loc2_.§]!^§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§6!§.length)
         {
            _loc2_.§6!§[_loc3_].angle = 360 - _loc2_.§6!§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §?!U§(param1:int, param2:Object) : Vector.<§0!Q§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§0!Q§ = null;
         var _loc3_:Vector.<§0!Q§> = new Vector.<§0!Q§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §0!Q§.§'E§ || _loc5_.type == §0!Q§.§7Z§)
               {
                  _loc8_ = new §0!Q§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §0!Q§.§7Z§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §0!Q§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §0!Q§.§,?§)
               {
                  _loc8_.§-N§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §=!B§() : int
      {
         return this.§6!§.length;
      }
      
      public function get §7!z§() : int
      {
         return this.§!@§.length;
      }
      
      public function get §6Q§() : int
      {
         return this.§]!^§.length;
      }
      
      public function get §#!y§() : int
      {
         return this.§'!N§.length;
      }
      
      public function get theme() : String
      {
         return this.§<t§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§<t§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§;!X§();
         if(_loc1_ > 0 && _loc1_ < this.§@[§)
         {
            return _loc1_;
         }
         if(this.§@[§ == 0)
         {
            return _loc1_;
         }
         return this.§@[§;
      }
      
      public function §3r§(param1:int) : void
      {
         var _loc2_:int = this.§;!X§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§@[§ = param1;
      }
      
      public function §=!G§(param1:String) : void
      {
         var _loc4_:§'Z§ = null;
         var _loc5_:Object = null;
         var _loc6_:§"E§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§#4§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§>D§ = _loc2_.LevelExtension;
         this.§1!m§ = false;
         this.§3!4§ = _loc2_.scoreSilver;
         this.§+h§ = _loc2_.scoreGold;
         this.§@[§ = _loc2_.scoreEagle;
         this.§<t§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§!@§ = §?!U§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§'!N§ = new Vector.<§'Z§>();
         this.§]!^§ = new Vector.<§"E§>();
         this.§6!§ = new Vector.<§#4§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §'Z§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§'!N§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §"E§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§]!^§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §#4§()).x = _loc8_.x;
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
            this.§6!§.push(_loc9_);
            _loc3_++;
         }
         this.§'[§ = _loc2_.slingshotX;
         this.§=1§ = _loc2_.slingshotY;
      }
      
      public function §8g§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§>D§;
         _loc1_.scoreSilver = this.§3!4§;
         _loc1_.scoreGold = this.§+h§;
         _loc1_.scoreEagle = this.§@[§;
         _loc1_.theme = this.§<t§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§'!N§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§]!^§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§]!^§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§6!§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§6!§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!@§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§!@§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§6!§.length;
         _loc1_.counts.birds = this.§]!^§.length;
         _loc1_.counts.joints = this.§!@§.length;
         _loc1_.slingshotX = this.§'[§;
         _loc1_.slingshotY = this.§=1§;
         return _loc1_;
      }
      
      public function §=a§() : String
      {
         return JSON.stringify(this.§8g§());
      }
      
      public function §;!X§() : int
      {
         var _loc2_:§#4§ = null;
         var _loc3_:String = null;
         var _loc4_:§>r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6!§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §%d§.§4!^§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §%d§.§4!^§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§4!g§(_loc4_))
               {
                  _loc1_ += _loc4_.§]l§ * §'u§.§@`§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §,!1§() : XML
      {
         var _loc2_:§'Z§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§>D§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§1!m§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§3!4§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§+h§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§'!N§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §#!Y§.§`5§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§]!^§[0].x + "\" y=\"" + (this.§]!^§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§]!^§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§]!^§[_loc3_].id + "\" x=\"" + this.§]!^§[_loc3_].x + "\" y=\"" + this.§]!^§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§6!§.length)
         {
            _loc1_ += "<Item id=\"" + this.§6!§[_loc3_].id + "\" x=\"" + this.§6!§[_loc3_].x + "\" y=\"" + this.§6!§[_loc3_].y + "\" rotation=\"" + this.§6!§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §>J§(param1:int) : §#4§
      {
         return this.§6!§[param1];
      }
      
      public function addObject(param1:§#4§) : void
      {
         this.§6!§.push(param1);
      }
      
      public function §82§(param1:int) : §0!Q§
      {
         return this.§!@§[param1];
      }
      
      public function §[u§(param1:§0!Q§) : void
      {
         this.§!@§.push(param1);
      }
      
      public function §5!l§(param1:int) : §"E§
      {
         return this.§]!^§[param1];
      }
      
      public function §+![§(param1:§"E§) : void
      {
         this.§]!^§.push(param1);
      }
      
      public function §9H§() : void
      {
         this.§'!N§ = new Vector.<§'Z§>();
      }
      
      public function §67§() : void
      {
         this.§]!^§ = new Vector.<§"E§>();
      }
      
      public function §>!>§(param1:int) : §'Z§
      {
         return this.§'!N§[param1];
      }
      
      public function §+'§(param1:§'Z§) : void
      {
         this.§'!N§.push(param1);
      }
   }
}
