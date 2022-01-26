package §>8§
{
   import § t§.§?U§;
   import §!!V§.§&I§;
   import §3!#§.*;
   import §5!$§.§!!H§;
   import §5!$§.§"!I§;
   import §6%§.§70§;
   import §6%§.§8?§;
   import §6%§.§;w§;
   import flash.geom.Point;
   
   public class §#%§
   {
      
      public static const §+x§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §5!V§:Number = 0;
      
      public var §7j§:Number = -8;
      
      private var §0!R§:Vector.<§;w§> = null;
      
      private var §3r§:Vector.<§8?§> = null;
      
      private var §!!&§:Vector.<§70§> = null;
      
      private var §?!Q§:Vector.<§-!H§> = null;
      
      public var §,!§:Number = 0;
      
      public var §7!6§:Boolean = false;
      
      public var §"]§:int = 0;
      
      public var §'!@§:int = 0;
      
      private var §?;§:int = 0;
      
      private var §1"§:String = null;
      
      public var mName:String = null;
      
      public function §#%§()
      {
         super();
         this.§?!Q§ = new Vector.<§-!H§>();
         this.§0!R§ = new Vector.<§;w§>();
         this.§3r§ = new Vector.<§8?§>();
         this.§!!&§ = new Vector.<§70§>();
         this.§1"§ = §+x§;
      }
      
      public static function §],§(param1:String) : §#%§
      {
         var _loc2_:§#%§ = new §#%§();
         _loc2_.§7;§(param1);
         return _loc2_;
      }
      
      public static function §`d§(param1:§!!H§) : Boolean
      {
         if(param1.§@!$§ == §!!H§.§25§ || param1.§@!$§ == §!!H§.§6!B§ || param1.§@!$§ == §!!H§.§-I§)
         {
            return true;
         }
         return false;
      }
      
      public static function §%!§(param1:String) : §#%§
      {
         var _loc2_:§#%§ = §],§(param1);
         _loc2_.§5!V§ = _loc2_.§3r§[0].x;
         _loc2_.§7j§ = _loc2_.§3r§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§0!R§.length)
         {
            _loc2_.§0!R§[_loc3_].angle = 360 - _loc2_.§0!R§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §4i§(param1:int, param2:Object) : Vector.<§70§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§70§ = null;
         var _loc3_:Vector.<§70§> = new Vector.<§70§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §70§.§ do§ || _loc5_.type == §70§.§?c§)
               {
                  _loc8_ = new §70§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §70§.§?c§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §70§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §70§.§@K§)
               {
                  _loc8_.§2[§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §@M§() : int
      {
         return this.§0!R§.length;
      }
      
      public function get §7!F§() : int
      {
         return this.§!!&§.length;
      }
      
      public function get §?Z§() : int
      {
         return this.§3r§.length;
      }
      
      public function get §8x§() : int
      {
         return this.§?!Q§.length;
      }
      
      public function get theme() : String
      {
         return this.§1"§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§1"§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§ !;§();
         if(_loc1_ > 0 && _loc1_ < this.§?;§)
         {
            return _loc1_;
         }
         if(this.§?;§ == 0)
         {
            return _loc1_;
         }
         return this.§?;§;
      }
      
      public function §[,§(param1:int) : void
      {
         var _loc2_:int = this.§ !;§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§?;§ = param1;
      }
      
      public function §7;§(param1:String) : void
      {
         var _loc4_:§-!H§ = null;
         var _loc5_:Object = null;
         var _loc6_:§8?§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§;w§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§,!§ = _loc2_.LevelExtension;
         this.§7!6§ = false;
         this.§"]§ = _loc2_.scoreSilver;
         this.§'!@§ = _loc2_.scoreGold;
         this.§?;§ = _loc2_.scoreEagle;
         this.§1"§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§!!&§ = §4i§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§?!Q§ = new Vector.<§-!H§>();
         this.§3r§ = new Vector.<§8?§>();
         this.§0!R§ = new Vector.<§;w§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §-!H§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§?!Q§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §8?§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§3r§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §;w§()).x = _loc8_.x;
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
            this.§0!R§.push(_loc9_);
            _loc3_++;
         }
         this.§5!V§ = _loc2_.slingshotX;
         this.§7j§ = _loc2_.slingshotY;
      }
      
      public function §-!Y§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§,!§;
         _loc1_.scoreSilver = this.§"]§;
         _loc1_.scoreGold = this.§'!@§;
         _loc1_.scoreEagle = this.§?;§;
         _loc1_.theme = this.§1"§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§?!Q§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§3r§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§3r§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0!R§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§0!R§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!!&§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§!!&§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§0!R§.length;
         _loc1_.counts.birds = this.§3r§.length;
         _loc1_.counts.joints = this.§!!&§.length;
         _loc1_.slingshotX = this.§5!V§;
         _loc1_.slingshotY = this.§7j§;
         return _loc1_;
      }
      
      public function §=!=§() : String
      {
         return JSON.stringify(this.§-!Y§());
      }
      
      public function § !;§() : int
      {
         var _loc2_:§;w§ = null;
         var _loc3_:String = null;
         var _loc4_:§!!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!R§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §"!I§.§&E§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §"!I§.§&E§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§`d§(_loc4_))
               {
                  _loc1_ += _loc4_.§6!;§ * §&I§.§#!`§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §>! §() : XML
      {
         var _loc2_:§-!H§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§,!§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§7!6§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§"]§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§'!@§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§?!Q§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §?U§.§1!R§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§3r§[0].x + "\" y=\"" + (this.§3r§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§3r§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§3r§[_loc3_].id + "\" x=\"" + this.§3r§[_loc3_].x + "\" y=\"" + this.§3r§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§0!R§.length)
         {
            _loc1_ += "<Item id=\"" + this.§0!R§[_loc3_].id + "\" x=\"" + this.§0!R§[_loc3_].x + "\" y=\"" + this.§0!R§[_loc3_].y + "\" rotation=\"" + this.§0!R§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §8v§(param1:int) : §;w§
      {
         return this.§0!R§[param1];
      }
      
      public function addObject(param1:§;w§) : void
      {
         this.§0!R§.push(param1);
      }
      
      public function §=,§(param1:int) : §70§
      {
         return this.§!!&§[param1];
      }
      
      public function §@!8§(param1:§70§) : void
      {
         this.§!!&§.push(param1);
      }
      
      public function §9!D§(param1:int) : §8?§
      {
         return this.§3r§[param1];
      }
      
      public function §;!M§(param1:§8?§) : void
      {
         this.§3r§.push(param1);
      }
      
      public function §9k§() : void
      {
         this.§?!Q§ = new Vector.<§-!H§>();
      }
      
      public function §8!!§() : void
      {
         this.§3r§ = new Vector.<§8?§>();
      }
      
      public function §^!9§(param1:int) : §-!H§
      {
         return this.§?!Q§[param1];
      }
      
      public function §7!$§(param1:§-!H§) : void
      {
         this.§?!Q§.push(param1);
      }
   }
}
