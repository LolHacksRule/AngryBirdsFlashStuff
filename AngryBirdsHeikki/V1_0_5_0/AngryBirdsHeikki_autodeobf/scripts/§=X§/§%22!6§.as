package §=X§
{
   import §+D§.§5!P§;
   import §2P§.*;
   import §8!I§.§,6§;
   import §8!I§.§=]§;
   import §[$§.§=K§;
   import §[d§.§57§;
   import §[d§.§]<§;
   import §[d§.§^?§;
   import flash.geom.Point;
   
   public class §"!6§
   {
      
      public static const §1O§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §``§:Number = 0;
      
      public var §08§:Number = -8;
      
      private var §-!`§:Vector.<§]<§> = null;
      
      private var §>_§:Vector.<§^?§> = null;
      
      private var §,!_§:Vector.<§57§> = null;
      
      private var §[!W§:Vector.<§#!6§> = null;
      
      public var §+j§:Number = 0;
      
      public var §&]§:Boolean = false;
      
      public var § `§:int = 0;
      
      public var §?9§:int = 0;
      
      private var §&!@§:int = 0;
      
      private var §]_§:String = null;
      
      public var mName:String = null;
      
      public function §"!6§()
      {
         super();
         this.§[!W§ = new Vector.<§#!6§>();
         this.§-!`§ = new Vector.<§]<§>();
         this.§>_§ = new Vector.<§^?§>();
         this.§,!_§ = new Vector.<§57§>();
         this.§]_§ = §1O§;
      }
      
      public static function §]a§(param1:String) : §"!6§
      {
         var _loc2_:§"!6§ = new §"!6§();
         _loc2_.§8!9§(param1);
         return _loc2_;
      }
      
      public static function §;+§(param1:§,6§) : Boolean
      {
         if(param1.§9?§ == §,6§.§4v§ || param1.§9?§ == §,6§.§%G§ || param1.§9?§ == §,6§.§'V§)
         {
            return true;
         }
         return false;
      }
      
      public static function §]!<§(param1:String) : §"!6§
      {
         var _loc2_:§"!6§ = §]a§(param1);
         _loc2_.§``§ = _loc2_.§>_§[0].x;
         _loc2_.§08§ = _loc2_.§>_§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§-!`§.length)
         {
            _loc2_.§-!`§[_loc3_].angle = 360 - _loc2_.§-!`§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §3!9§(param1:int, param2:Object) : Vector.<§57§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§57§ = null;
         var _loc3_:Vector.<§57§> = new Vector.<§57§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §57§.§0!+§ || _loc5_.type == §57§.§;!<§)
               {
                  _loc8_ = new §57§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §57§.§;!<§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §57§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §57§.§#!$§)
               {
                  _loc8_.§"!Q§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §;!a§() : int
      {
         return this.§-!`§.length;
      }
      
      public function get §'@§() : int
      {
         return this.§,!_§.length;
      }
      
      public function get §7!F§() : int
      {
         return this.§>_§.length;
      }
      
      public function get §;!#§() : int
      {
         return this.§[!W§.length;
      }
      
      public function get theme() : String
      {
         return this.§]_§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§]_§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§#4§();
         if(_loc1_ > 0 && _loc1_ < this.§&!@§)
         {
            return _loc1_;
         }
         if(this.§&!@§ == 0)
         {
            return _loc1_;
         }
         return this.§&!@§;
      }
      
      public function §4$§(param1:int) : void
      {
         var _loc2_:int = this.§#4§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§&!@§ = param1;
      }
      
      public function §8!9§(param1:String) : void
      {
         var _loc4_:§#!6§ = null;
         var _loc5_:Object = null;
         var _loc6_:§^?§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§]<§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§+j§ = _loc2_.LevelExtension;
         this.§&]§ = false;
         this.§ `§ = _loc2_.scoreSilver;
         this.§?9§ = _loc2_.scoreGold;
         this.§&!@§ = _loc2_.scoreEagle;
         this.§]_§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§,!_§ = §3!9§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§[!W§ = new Vector.<§#!6§>();
         this.§>_§ = new Vector.<§^?§>();
         this.§-!`§ = new Vector.<§]<§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §#!6§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§[!W§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §^?§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§>_§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §]<§()).x = _loc8_.x;
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
            this.§-!`§.push(_loc9_);
            _loc3_++;
         }
         this.§``§ = _loc2_.slingshotX;
         this.§08§ = _loc2_.slingshotY;
      }
      
      public function §"!D§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§+j§;
         _loc1_.scoreSilver = this.§ `§;
         _loc1_.scoreGold = this.§?9§;
         _loc1_.scoreEagle = this.§&!@§;
         _loc1_.theme = this.§]_§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§[!W§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§>_§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§>_§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-!`§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§-!`§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,!_§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§,!_§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§-!`§.length;
         _loc1_.counts.birds = this.§>_§.length;
         _loc1_.counts.joints = this.§,!_§.length;
         _loc1_.slingshotX = this.§``§;
         _loc1_.slingshotY = this.§08§;
         return _loc1_;
      }
      
      public function §3a§() : String
      {
         return JSON.stringify(this.§"!D§());
      }
      
      public function §#4§() : int
      {
         var _loc2_:§]<§ = null;
         var _loc3_:String = null;
         var _loc4_:§,6§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-!`§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §=]§.§^]§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §=]§.§^]§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§;+§(_loc4_))
               {
                  _loc1_ += _loc4_.§0!a§ * §5!P§.§&!2§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §78§() : XML
      {
         var _loc2_:§#!6§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§+j§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§&]§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§ `§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§?9§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§[!W§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §=K§.§=!O§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§>_§[0].x + "\" y=\"" + (this.§>_§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§>_§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§>_§[_loc3_].id + "\" x=\"" + this.§>_§[_loc3_].x + "\" y=\"" + this.§>_§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§-!`§.length)
         {
            _loc1_ += "<Item id=\"" + this.§-!`§[_loc3_].id + "\" x=\"" + this.§-!`§[_loc3_].x + "\" y=\"" + this.§-!`§[_loc3_].y + "\" rotation=\"" + this.§-!`§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §,!+§(param1:int) : §]<§
      {
         return this.§-!`§[param1];
      }
      
      public function §+!3§(param1:§]<§) : void
      {
         this.§-!`§.push(param1);
      }
      
      public function § !R§(param1:int) : §57§
      {
         return this.§,!_§[param1];
      }
      
      public function §3N§(param1:§57§) : void
      {
         this.§,!_§.push(param1);
      }
      
      public function §1V§(param1:int) : §^?§
      {
         return this.§>_§[param1];
      }
      
      public function §6!Y§(param1:§^?§) : void
      {
         this.§>_§.push(param1);
      }
      
      public function §[G§() : void
      {
         this.§[!W§ = new Vector.<§#!6§>();
      }
      
      public function §?!E§() : void
      {
         this.§>_§ = new Vector.<§^?§>();
      }
      
      public function §@w§(param1:int) : §#!6§
      {
         return this.§[!W§[param1];
      }
      
      public function §"Y§(param1:§#!6§) : void
      {
         this.§[!W§.push(param1);
      }
   }
}
