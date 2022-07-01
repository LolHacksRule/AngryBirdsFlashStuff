package §!P§
{
   import §-6§.§%5§;
   import §7!<§.§"k§;
   import §7!<§.§'"%§;
   import §7!<§.§4r§;
   import §[^§.§'g§;
   import §[^§.§`!M§;
   import flash.geom.Point;
   
   public class §2"4§
   {
      
      public static const §^!j§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §?g§:Number = 0;
      
      protected var §0^§:Number = -8;
      
      protected var §""-§:Number = 0.0;
      
      protected var § G§:Vector.<§4r§> = null;
      
      protected var §3!Q§:Vector.<§'"%§> = null;
      
      protected var §-!§:Vector.<§"k§> = null;
      
      protected var §1r§:Vector.<§?O§> = null;
      
      protected var §2!0§:int = 0;
      
      protected var §"U§:int = 0;
      
      protected var §"L§:int = 0;
      
      protected var §!!-§:String = null;
      
      protected var mName:String = null;
      
      public function §2"4§()
      {
         super();
         this.§1r§ = new Vector.<§?O§>();
         this.§ G§ = new Vector.<§4r§>();
         this.§3!Q§ = new Vector.<§'"%§>();
         this.§-!§ = new Vector.<§"k§>();
         this.§!!-§ = §^!j§;
      }
      
      public static function §`v§(param1:String) : §2"4§
      {
         var _loc2_:§2"4§ = new §2"4§();
         _loc2_.§%4§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§`!M§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §4"%§(param1:String) : §2"4§
      {
         var _loc2_:§2"4§ = §`v§(param1);
         _loc2_.§?g§ = _loc2_.§3!Q§[0].x;
         _loc2_.§0^§ = _loc2_.§3!Q§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ G§.length)
         {
            _loc2_.§ G§[_loc3_].angle = _loc2_.§ G§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§ G§.length;
      }
      
      public function get §0Z§() : int
      {
         return this.§-!§.length;
      }
      
      public function get §`,§() : int
      {
         return this.§3!Q§.length;
      }
      
      public function get §?!+§() : int
      {
         return this.§1r§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§"U§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§"U§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§"L§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§"L§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§?g§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§?g§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§0^§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§0^§ = param1;
      }
      
      public function get §4Z§() : Number
      {
         return this.§""-§;
      }
      
      public function set §4Z§(param1:Number) : void
      {
         this.§""-§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §@D§() : Boolean
      {
         return true;
      }
      
      public function get §<!F§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§!!-§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§!!-§ = param1;
      }
      
      public function getEagleScore(param1:§'g§, param2:int) : int
      {
         var _loc3_:int = this.§?"1§(param1,param2);
         var _loc4_:int = this.§5,§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§2!0§)
         {
            return _loc5_;
         }
         if(this.§2!0§ == 0)
         {
            return _loc5_;
         }
         return this.§2!0§;
      }
      
      public function §&!=§(param1:int, param2:§'g§, param3:int) : void
      {
         var _loc4_:int = this.§?"1§(param2,param3);
         var _loc5_:int = this.§5,§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§2!0§ = param1;
      }
      
      public function §%4§(param1:String) : void
      {
         var _loc4_:§?O§ = null;
         var _loc5_:Object = null;
         var _loc6_:§'"%§ = null;
         var _loc7_:Object = null;
         var _loc8_:§4r§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§"L§ = _loc2_.scoreSilver;
         this.§"U§ = _loc2_.scoreGold;
         this.§2!0§ = _loc2_.scoreEagle;
         this.§!!-§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§-!§ = this.§1-§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§1r§ = new Vector.<§?O§>();
         this.§3!Q§ = new Vector.<§'"%§>();
         this.§ G§ = new Vector.<§4r§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §?O§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§1r§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §'"%§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§3!Q§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §4r§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.type = _loc7_.id;
            _loc8_.id = _loc3_ - 1;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§ G§.push(_loc8_);
            _loc3_++;
         }
         this.§?g§ = _loc2_.slingshotX;
         this.§0^§ = _loc2_.slingshotY;
      }
      
      public function §%!X§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§"L§;
         _loc1_.scoreGold = this.§"U§;
         _loc1_.scoreEagle = this.§2!0§;
         _loc1_.theme = this.§!!-§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§1r§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§3!Q§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§3!Q§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ G§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§ G§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-!§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§-!§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§ G§.length;
         _loc1_.counts.birds = this.§3!Q§.length;
         _loc1_.counts.joints = this.§-!§.length;
         _loc1_.slingshotX = this.§?g§;
         _loc1_.slingshotY = this.§0^§;
         return _loc1_;
      }
      
      public function §35§() : String
      {
         return JSON.stringify(this.§%!X§());
      }
      
      protected function §1-§(param1:int, param2:Object) : Vector.<§"k§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§"k§ = null;
         var _loc3_:Vector.<§"k§> = new Vector.<§"k§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §"k§.§+!O§ || _loc5_.type == §"k§.§7"-§)
               {
                  _loc8_ = new §"k§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §"k§.§7"-§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §"k§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §"k§.§3!E§)
               {
                  _loc8_.§?!k§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §?"1§(param1:§'g§, param2:int) : int
      {
         var _loc4_:§4r§ = null;
         var _loc5_:String = null;
         var _loc6_:§`!M§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§ G§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§ "4§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§ "4§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§`!D§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §`!D§(param1:§'g§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §5,§() : int
      {
         if(this.§3!Q§)
         {
            return this.§3!Q§.length * this.§[!J§();
         }
         return 0;
      }
      
      public function §[!J§() : int
      {
         return 10000;
      }
      
      public function §;!%§() : XML
      {
         var _loc2_:§?O§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§"L§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§"U§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§1r§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §%5§.§[4§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§3!Q§[0].x + "\" y=\"" + (this.§3!Q§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§3!Q§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§3!Q§[_loc3_].type + "\" x=\"" + this.§3!Q§[_loc3_].x + "\" y=\"" + this.§3!Q§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§ G§.length)
         {
            _loc1_ += "<Item id=\"" + this.§ G§[_loc3_].type + "\" x=\"" + this.§ G§[_loc3_].x + "\" y=\"" + this.§ G§[_loc3_].y + "\" rotation=\"" + this.§ G§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §4r§
      {
         return this.§ G§[param1];
      }
      
      public function §1!w§(param1:§4r§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§ G§.push(param1);
      }
      
      public function §'T§(param1:int) : §"k§
      {
         return this.§-!§[param1];
      }
      
      public function §[a§(param1:§"k§) : void
      {
         this.§-!§.push(param1);
      }
      
      public function §6m§(param1:int) : §'"%§
      {
         return this.§3!Q§[param1];
      }
      
      public function §^!q§(param1:§'"%§) : void
      {
         this.§3!Q§.push(param1);
      }
      
      public function §1"5§() : void
      {
         this.§1r§ = new Vector.<§?O§>();
      }
      
      public function §6W§() : void
      {
         this.§3!Q§ = new Vector.<§'"%§>();
      }
      
      public function §#!>§(param1:int) : §?O§
      {
         return this.§1r§[param1];
      }
      
      public function §1!S§(param1:§?O§) : void
      {
         this.§1r§.push(param1);
      }
   }
}
