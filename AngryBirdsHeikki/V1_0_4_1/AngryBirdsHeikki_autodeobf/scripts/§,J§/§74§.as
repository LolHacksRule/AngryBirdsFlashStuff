package §,J§
{
   import §-!1§.§=!_§;
   import §8v§.*;
   import §>u§.§"!P§;
   import §>u§.§2P§;
   import §>u§.§<q§;
   import §^!7§.§^A§;
   import §`Y§.§#!#§;
   import §`Y§.§]!%§;
   import flash.geom.Point;
   
   public class §74§
   {
      
      public static const §+1§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §&Y§:Number = 0;
      
      public var §-O§:Number = -8;
      
      private var §0l§:Vector.<§<q§> = null;
      
      private var §&!9§:Vector.<§2P§> = null;
      
      private var §#4§:Vector.<§"!P§> = null;
      
      private var §4!c§:Vector.<§]6§> = null;
      
      public var §;!+§:Number = 0;
      
      public var §5!R§:Boolean = false;
      
      public var §+!H§:int = 0;
      
      public var §!!O§:int = 0;
      
      private var §0!3§:int = 0;
      
      private var §8;§:String = null;
      
      public var mName:String = null;
      
      public function §74§()
      {
         super();
         this.§4!c§ = new Vector.<§]6§>();
         this.§0l§ = new Vector.<§<q§>();
         this.§&!9§ = new Vector.<§2P§>();
         this.§#4§ = new Vector.<§"!P§>();
         this.§8;§ = §+1§;
      }
      
      public static function § $§(param1:String) : §74§
      {
         var _loc2_:§74§ = new §74§();
         _loc2_.§!&§(param1);
         return _loc2_;
      }
      
      public static function §case§(param1:§#!#§) : Boolean
      {
         if(param1.§3!P§ == §#!#§.§;!1§ || param1.§3!P§ == §#!#§.§ >§ || param1.§3!P§ == §#!#§.§0!+§)
         {
            return true;
         }
         return false;
      }
      
      public static function §=!9§(param1:String) : §74§
      {
         var _loc2_:§74§ = § $§(param1);
         _loc2_.§&Y§ = _loc2_.§&!9§[0].x;
         _loc2_.§-O§ = _loc2_.§&!9§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§0l§.length)
         {
            _loc2_.§0l§[_loc3_].angle = 360 - _loc2_.§0l§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §4!F§(param1:int, param2:Object) : Vector.<§"!P§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§"!P§ = null;
         var _loc3_:Vector.<§"!P§> = new Vector.<§"!P§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §"!P§.§?1§ || _loc5_.type == §"!P§.§7K§)
               {
                  _loc8_ = new §"!P§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §"!P§.§7K§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §"!P§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §"!P§.§8n§)
               {
                  _loc8_.§6!Z§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §5]§() : int
      {
         return this.§0l§.length;
      }
      
      public function get §,!9§() : int
      {
         return this.§#4§.length;
      }
      
      public function get §^!=§() : int
      {
         return this.§&!9§.length;
      }
      
      public function get §60§() : int
      {
         return this.§4!c§.length;
      }
      
      public function get theme() : String
      {
         return this.§8;§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§8;§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§7w§();
         if(_loc1_ > 0 && _loc1_ < this.§0!3§)
         {
            return _loc1_;
         }
         if(this.§0!3§ == 0)
         {
            return _loc1_;
         }
         return this.§0!3§;
      }
      
      public function §`X§(param1:int) : void
      {
         var _loc2_:int = this.§7w§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§0!3§ = param1;
      }
      
      public function §!&§(param1:String) : void
      {
         var _loc4_:§]6§ = null;
         var _loc5_:Object = null;
         var _loc6_:§2P§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§<q§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§;!+§ = _loc2_.LevelExtension;
         this.§5!R§ = false;
         this.§+!H§ = _loc2_.scoreSilver;
         this.§!!O§ = _loc2_.scoreGold;
         this.§0!3§ = _loc2_.scoreEagle;
         this.§8;§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§#4§ = §4!F§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§4!c§ = new Vector.<§]6§>();
         this.§&!9§ = new Vector.<§2P§>();
         this.§0l§ = new Vector.<§<q§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §]6§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§4!c§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §2P§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§&!9§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §<q§()).x = _loc8_.x;
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
            this.§0l§.push(_loc9_);
            _loc3_++;
         }
         this.§&Y§ = _loc2_.slingshotX;
         this.§-O§ = _loc2_.slingshotY;
      }
      
      public function §3x§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§;!+§;
         _loc1_.scoreSilver = this.§+!H§;
         _loc1_.scoreGold = this.§!!O§;
         _loc1_.scoreEagle = this.§0!3§;
         _loc1_.theme = this.§8;§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§4!c§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§&!9§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§&!9§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0l§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§0l§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§#4§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§#4§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§0l§.length;
         _loc1_.counts.birds = this.§&!9§.length;
         _loc1_.counts.joints = this.§#4§.length;
         _loc1_.slingshotX = this.§&Y§;
         _loc1_.slingshotY = this.§-O§;
         return _loc1_;
      }
      
      public function § !K§() : String
      {
         return JSON.stringify(this.§3x§());
      }
      
      public function §7w§() : int
      {
         var _loc2_:§<q§ = null;
         var _loc3_:String = null;
         var _loc4_:§#!#§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0l§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §]!%§.§=!>§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §]!%§.§=!>§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§case§(_loc4_))
               {
                  _loc1_ += _loc4_.§'!M§ * §^A§.§%H§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §"h§() : XML
      {
         var _loc2_:§]6§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§;!+§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§5!R§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§+!H§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§!!O§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§4!c§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §=!_§.§8!P§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§&!9§[0].x + "\" y=\"" + (this.§&!9§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§&!9§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§&!9§[_loc3_].id + "\" x=\"" + this.§&!9§[_loc3_].x + "\" y=\"" + this.§&!9§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§0l§.length)
         {
            _loc1_ += "<Item id=\"" + this.§0l§[_loc3_].id + "\" x=\"" + this.§0l§[_loc3_].x + "\" y=\"" + this.§0l§[_loc3_].y + "\" rotation=\"" + this.§0l§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §[o§(param1:int) : §<q§
      {
         return this.§0l§[param1];
      }
      
      public function §8!+§(param1:§<q§) : void
      {
         this.§0l§.push(param1);
      }
      
      public function §1!&§(param1:int) : §"!P§
      {
         return this.§#4§[param1];
      }
      
      public function §;S§(param1:§"!P§) : void
      {
         this.§#4§.push(param1);
      }
      
      public function §#m§(param1:int) : §2P§
      {
         return this.§&!9§[param1];
      }
      
      public function §%^§(param1:§2P§) : void
      {
         this.§&!9§.push(param1);
      }
      
      public function § !,§() : void
      {
         this.§4!c§ = new Vector.<§]6§>();
      }
      
      public function §4_§() : void
      {
         this.§&!9§ = new Vector.<§2P§>();
      }
      
      public function §9d§(param1:int) : §]6§
      {
         return this.§4!c§[param1];
      }
      
      public function §3!V§(param1:§]6§) : void
      {
         this.§4!c§.push(param1);
      }
   }
}
