package §3U§
{
   import § !b§.§'!%§;
   import § !b§.§-`§;
   import § !b§.§>T§;
   import §,-§.§'i§;
   import §,-§.§7i§;
   import §2!G§.§2!V§;
   import §>!9§.*;
   import §@!C§.§#C§;
   import flash.geom.Point;
   
   public class § !M§
   {
      
      public static const §9&§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §<5§:Number = 0;
      
      public var §9!S§:Number = -8;
      
      private var §@!X§:Vector.<§'!%§> = null;
      
      private var §<K§:Vector.<§-`§> = null;
      
      private var §@!G§:Vector.<§>T§> = null;
      
      private var §`c§:Vector.<§2!]§> = null;
      
      public var § S§:Number = 0;
      
      public var §5N§:Boolean = false;
      
      public var §>!+§:int = 0;
      
      public var §[p§:int = 0;
      
      private var §3!]§:int = 0;
      
      private var §;!>§:String = null;
      
      public var mName:String = null;
      
      public function § !M§()
      {
         super();
         this.§`c§ = new Vector.<§2!]§>();
         this.§@!X§ = new Vector.<§'!%§>();
         this.§<K§ = new Vector.<§-`§>();
         this.§@!G§ = new Vector.<§>T§>();
         this.§;!>§ = §9&§;
      }
      
      public static function §#!7§(param1:String) : § !M§
      {
         var _loc2_:§ !M§ = new § !M§();
         _loc2_.§]!@§(param1);
         return _loc2_;
      }
      
      public static function §4w§(param1:§7i§) : Boolean
      {
         if(param1.§+=§ == §7i§.§]4§ || param1.§+=§ == §7i§.include || param1.§+=§ == §7i§.§ !d§)
         {
            return true;
         }
         return false;
      }
      
      public static function §]!C§(param1:String) : § !M§
      {
         var _loc2_:§ !M§ = §#!7§(param1);
         _loc2_.§<5§ = _loc2_.§<K§[0].x;
         _loc2_.§9!S§ = _loc2_.§<K§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@!X§.length)
         {
            _loc2_.§@!X§[_loc3_].angle = 360 - _loc2_.§@!X§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §0n§(param1:int, param2:Object) : Vector.<§>T§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§>T§ = null;
         var _loc3_:Vector.<§>T§> = new Vector.<§>T§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §>T§.§20§ || _loc5_.type == §>T§.§+O§)
               {
                  _loc8_ = new §>T§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §>T§.§+O§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §>T§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §>T§.§,<§)
               {
                  _loc8_.§#E§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §;!G§() : int
      {
         return this.§@!X§.length;
      }
      
      public function get §'5§() : int
      {
         return this.§@!G§.length;
      }
      
      public function get §+!4§() : int
      {
         return this.§<K§.length;
      }
      
      public function get §^M§() : int
      {
         return this.§`c§.length;
      }
      
      public function get theme() : String
      {
         return this.§;!>§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§;!>§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§package§();
         if(_loc1_ > 0 && _loc1_ < this.§3!]§)
         {
            return _loc1_;
         }
         if(this.§3!]§ == 0)
         {
            return _loc1_;
         }
         return this.§3!]§;
      }
      
      public function §<I§(param1:int) : void
      {
         var _loc2_:int = this.§package§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§3!]§ = param1;
      }
      
      public function §]!@§(param1:String) : void
      {
         var _loc4_:§2!]§ = null;
         var _loc5_:Object = null;
         var _loc6_:§-`§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§'!%§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§ S§ = _loc2_.LevelExtension;
         this.§5N§ = false;
         this.§>!+§ = _loc2_.scoreSilver;
         this.§[p§ = _loc2_.scoreGold;
         this.§3!]§ = _loc2_.scoreEagle;
         this.§;!>§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§@!G§ = §0n§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§`c§ = new Vector.<§2!]§>();
         this.§<K§ = new Vector.<§-`§>();
         this.§@!X§ = new Vector.<§'!%§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §2!]§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§`c§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §-`§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§<K§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §'!%§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID)
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
            this.§@!X§.push(_loc9_);
            _loc3_++;
         }
         this.§<5§ = _loc2_.slingshotX;
         this.§9!S§ = _loc2_.slingshotY;
      }
      
      public function §+c§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§ S§;
         _loc1_.scoreSilver = this.§>!+§;
         _loc1_.scoreGold = this.§[p§;
         _loc1_.scoreEagle = this.§3!]§;
         _loc1_.theme = this.§;!>§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§`c§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§<K§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§<K§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!X§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@!X§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!G§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§@!G§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@!X§.length;
         _loc1_.counts.birds = this.§<K§.length;
         _loc1_.counts.joints = this.§@!G§.length;
         _loc1_.slingshotX = this.§<5§;
         _loc1_.slingshotY = this.§9!S§;
         return _loc1_;
      }
      
      public function § &§() : String
      {
         return JSON.stringify(this.§+c§());
      }
      
      public function §package§() : int
      {
         var _loc2_:§'!%§ = null;
         var _loc3_:String = null;
         var _loc4_:§7i§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!X§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §'i§.§6!R§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §'i§.§6!R§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§4w§(_loc4_))
               {
                  _loc1_ += _loc4_.§?G§ * §2!V§.§5R§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §5]§() : XML
      {
         var _loc2_:§2!]§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§ S§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§5N§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§>!+§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§[p§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§`c§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §#C§.§"!Y§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§<K§[0].x + "\" y=\"" + (this.§<K§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§<K§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§<K§[_loc3_].id + "\" x=\"" + this.§<K§[_loc3_].x + "\" y=\"" + this.§<K§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@!X§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@!X§[_loc3_].id + "\" x=\"" + this.§@!X§[_loc3_].x + "\" y=\"" + this.§@!X§[_loc3_].y + "\" rotation=\"" + this.§@!X§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §]A§(param1:int) : §'!%§
      {
         return this.§@!X§[param1];
      }
      
      public function §5!$§(param1:§'!%§) : void
      {
         this.§@!X§.push(param1);
      }
      
      public function §%5§(param1:int) : §>T§
      {
         return this.§@!G§[param1];
      }
      
      public function §4!6§(param1:§>T§) : void
      {
         this.§@!G§.push(param1);
      }
      
      public function §@!c§(param1:int) : §-`§
      {
         return this.§<K§[param1];
      }
      
      public function §#!&§(param1:§-`§) : void
      {
         this.§<K§.push(param1);
      }
      
      public function §#+§() : void
      {
         this.§`c§ = new Vector.<§2!]§>();
      }
      
      public function §,!_§() : void
      {
         this.§<K§ = new Vector.<§-`§>();
      }
      
      public function §<k§(param1:int) : §2!]§
      {
         return this.§`c§[param1];
      }
      
      public function §,J§(param1:§2!]§) : void
      {
         this.§`c§.push(param1);
      }
   }
}
