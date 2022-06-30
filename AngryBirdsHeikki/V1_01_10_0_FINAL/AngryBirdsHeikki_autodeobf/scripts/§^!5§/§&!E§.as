package §^!5§
{
   import § "§.§'s§;
   import § "§.§3-§;
   import § "§.§5!N§;
   import § in§.*;
   import §"!I§.§^!2§;
   import §9!4§.§95§;
   import §@0§.§ $§;
   import §@0§.§`>§;
   import flash.geom.Point;
   
   public class §&!E§
   {
      
      public static const §5!$§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §84§:Number = 0;
      
      public var §6!`§:Number = -8;
      
      private var §],§:Vector.<§5!N§> = null;
      
      private var §2!A§:Vector.<§3-§> = null;
      
      private var §5f§:Vector.<§'s§> = null;
      
      private var §6a§:Vector.<§&m§> = null;
      
      public var §#;§:Number = 0;
      
      public var §,[§:Boolean = false;
      
      public var §@Y§:int = 0;
      
      public var §=!F§:int = 0;
      
      private var §,w§:int = 0;
      
      private var §!A§:String = null;
      
      public var mName:String = null;
      
      public function §&!E§()
      {
         super();
         this.§6a§ = new Vector.<§&m§>();
         this.§],§ = new Vector.<§5!N§>();
         this.§2!A§ = new Vector.<§3-§>();
         this.§5f§ = new Vector.<§'s§>();
         this.§!A§ = §5!$§;
      }
      
      public static function §<f§(param1:String) : §&!E§
      {
         var _loc2_:§&!E§ = new §&!E§();
         _loc2_.§%K§(param1);
         return _loc2_;
      }
      
      public static function § !^§(param1:§ $§) : Boolean
      {
         if(param1.§7!?§ == § $§.§?r§ || param1.§7!?§ == § $§.§2G§ || param1.§7!?§ == § $§.§#J§)
         {
            return true;
         }
         return false;
      }
      
      public static function §8!_§(param1:String) : §&!E§
      {
         var _loc2_:§&!E§ = §<f§(param1);
         _loc2_.§84§ = _loc2_.§2!A§[0].x;
         _loc2_.§6!`§ = _loc2_.§2!A§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§],§.length)
         {
            _loc2_.§],§[_loc3_].angle = 360 - _loc2_.§],§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §@!E§(param1:int, param2:Object) : Vector.<§'s§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§'s§ = null;
         var _loc3_:Vector.<§'s§> = new Vector.<§'s§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §'s§.§3J§ || _loc5_.type == §'s§.§`!d§)
               {
                  _loc8_ = new §'s§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §'s§.§`!d§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §'s§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §'s§.§>t§)
               {
                  _loc8_.§07§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §8!3§() : int
      {
         return this.§],§.length;
      }
      
      public function get §`,§() : int
      {
         return this.§5f§.length;
      }
      
      public function get §<!5§() : int
      {
         return this.§2!A§.length;
      }
      
      public function get §7D§() : int
      {
         return this.§6a§.length;
      }
      
      public function get theme() : String
      {
         return this.§!A§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§!A§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§`!_§();
         if(_loc1_ > 0 && _loc1_ < this.§,w§)
         {
            return _loc1_;
         }
         if(this.§,w§ == 0)
         {
            return _loc1_;
         }
         return this.§,w§;
      }
      
      public function § F§(param1:int) : void
      {
         var _loc2_:int = this.§`!_§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§,w§ = param1;
      }
      
      public function §%K§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§&m§ = null;
         var _loc9_:Object = null;
         var _loc10_:§3-§ = null;
         var _loc11_:§5!N§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§#;§ = _loc2_.LevelExtension;
         this.§,[§ = false;
         this.§@Y§ = _loc2_.scoreSilver;
         this.§=!F§ = _loc2_.scoreGold;
         this.§,w§ = _loc2_.scoreEagle;
         this.§!A§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§5f§ = §@!E§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§6a§ = new Vector.<§&m§>();
         this.§2!A§ = new Vector.<§3-§>();
         this.§],§ = new Vector.<§5!N§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §&m§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§6a§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §3-§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§2!A§.push(_loc10_);
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
            (_loc11_ = new §5!N§()).x = _loc5_.x;
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
            this.§],§.push(_loc11_);
            _loc3_++;
         }
         this.§84§ = _loc2_.slingshotX;
         this.§6!`§ = _loc2_.slingshotY;
      }
      
      public function §[^§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§#;§;
         _loc1_.scoreSilver = this.§@Y§;
         _loc1_.scoreGold = this.§=!F§;
         _loc1_.scoreEagle = this.§,w§;
         _loc1_.theme = this.§!A§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§6a§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§2!A§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§2!A§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§],§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§],§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5f§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§5f§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§],§.length;
         _loc1_.counts.birds = this.§2!A§.length;
         _loc1_.counts.joints = this.§5f§.length;
         _loc1_.slingshotX = this.§84§;
         _loc1_.slingshotY = this.§6!`§;
         return _loc1_;
      }
      
      public function §6g§() : String
      {
         return JSON.stringify(this.§[^§());
      }
      
      public function §`!_§() : int
      {
         var _loc2_:§5!N§ = null;
         var _loc3_:String = null;
         var _loc4_:§ $§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§],§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §`>§.§<!>§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §`>§.§<!>§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§ !^§(_loc4_))
               {
                  _loc1_ += _loc4_.§'!V§ * §^!2§.§&6§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §^!4§() : XML
      {
         var _loc2_:§&m§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§#;§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§,[§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§@Y§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§=!F§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§6a§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §95§.§=r§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§2!A§[0].x + "\" y=\"" + (this.§2!A§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§2!A§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§2!A§[_loc3_].id + "\" x=\"" + this.§2!A§[_loc3_].x + "\" y=\"" + this.§2!A§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§],§.length)
         {
            _loc1_ += "<Item id=\"" + this.§],§[_loc3_].id + "\" x=\"" + this.§],§[_loc3_].x + "\" y=\"" + this.§],§[_loc3_].y + "\" rotation=\"" + this.§],§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §@r§(param1:int) : §5!N§
      {
         return this.§],§[param1];
      }
      
      public function §@!,§(param1:§5!N§) : void
      {
         this.§],§.push(param1);
      }
      
      public function §0!e§(param1:int) : §'s§
      {
         return this.§5f§[param1];
      }
      
      public function §7!F§(param1:§'s§) : void
      {
         this.§5f§.push(param1);
      }
      
      public function §6+§(param1:int) : §3-§
      {
         return this.§2!A§[param1];
      }
      
      public function §>M§(param1:§3-§) : void
      {
         this.§2!A§.push(param1);
      }
      
      public function §;!J§() : void
      {
         this.§6a§ = new Vector.<§&m§>();
      }
      
      public function §>e§() : void
      {
         this.§2!A§ = new Vector.<§3-§>();
      }
      
      public function §`b§(param1:int) : §&m§
      {
         return this.§6a§[param1];
      }
      
      public function §1!L§(param1:§&m§) : void
      {
         this.§6a§.push(param1);
      }
   }
}
