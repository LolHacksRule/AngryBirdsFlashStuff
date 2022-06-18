package §<!+§
{
   import §%`§.*;
   import §,u§.§-!#§;
   import §,u§.§8O§;
   import §,u§.§]!M§;
   import §5p§.§?M§;
   import §9N§.§9!%§;
   import §?7§.§&!5§;
   import §?7§.§,!§;
   
   public class §with§
   {
      
      public static const §+!-§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §4Y§:Number = 0;
      
      public var §%!&§:Number = -8;
      
      public var §@k§:Vector.<§-!#§> = null;
      
      public var §`4§:Vector.<§8O§> = null;
      
      public var §2j§:Vector.<§]!M§> = null;
      
      public var §'I§:Vector.<§!T§> = null;
      
      public var §6d§:Number = 0;
      
      public var §8H§:Boolean = false;
      
      public var §<!D§:int = 0;
      
      public var § !§:int = 0;
      
      private var §0^§:int = 0;
      
      private var §8!W§:String = null;
      
      public var mName:String = null;
      
      public function §with§()
      {
         super();
         this.§'I§ = new Vector.<§!T§>();
         this.§@k§ = new Vector.<§-!#§>();
         this.§`4§ = new Vector.<§8O§>();
         this.§2j§ = new Vector.<§]!M§>();
         this.§8!W§ = §+!-§;
      }
      
      public static function §;Q§(param1:String) : §with§
      {
         var _loc2_:§with§ = new §with§();
         _loc2_.§6m§(param1);
         return _loc2_;
      }
      
      public static function §!!A§(param1:§,!§) : Boolean
      {
         if(param1.§5x§ == §,!§.§@!%§ || param1.§5x§ == §,!§.§&!Q§ || param1.§5x§ == §,!§.§!?§)
         {
            return true;
         }
         return false;
      }
      
      public static function §1!G§(param1:String) : §with§
      {
         var _loc2_:§with§ = §;Q§(param1);
         _loc2_.§4Y§ = _loc2_.§`4§[0].x;
         _loc2_.§%!&§ = _loc2_.§`4§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@k§.length)
         {
            _loc2_.§@k§[_loc3_].angle = 360 - _loc2_.§@k§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §^b§(param1:int, param2:Object) : Vector.<§]!M§>
      {
         var _loc5_:Object = null;
         var _loc6_:§]!M§ = null;
         var _loc3_:Vector.<§]!M§> = new Vector.<§]!M§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §]!M§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §]!M§.§7W§)
               {
                  _loc6_.limit = _loc5_.limit;
                  _loc6_.backAndForth = _loc5_.backAndForth;
                  _loc6_.motor = _loc5_.motor;
                  _loc6_.motorSpeed = _loc5_.motorSpeed;
                  _loc6_.lowerLimit = _loc5_.lowerLimit;
                  _loc6_.upperLimit = _loc5_.upperLimit;
                  _loc6_.maxTorque = _loc5_.maxTorque;
               }
               _loc3_.push(_loc6_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get theme() : String
      {
         return this.§8!W§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§8!W§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§[!%§();
         if(_loc1_ > 0 && _loc1_ < this.§0^§)
         {
            return _loc1_;
         }
         if(this.§0^§ == 0)
         {
            return _loc1_;
         }
         return this.§0^§;
      }
      
      public function §0q§(param1:int) : void
      {
         var _loc2_:int = this.§[!%§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§0^§ = param1;
      }
      
      public function §6m§(param1:String) : void
      {
         var _loc4_:§!T§ = null;
         var _loc5_:Object = null;
         var _loc6_:§8O§ = null;
         var _loc7_:Object = null;
         var _loc8_:§-!#§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§6d§ = _loc2_.LevelExtension;
         this.§8H§ = false;
         this.§<!D§ = _loc2_.scoreSilver;
         this.§ !§ = _loc2_.scoreGold;
         this.§0^§ = _loc2_.scoreEagle;
         this.§8!W§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§2j§ = §^b§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§'I§ = new Vector.<§!T§>();
         this.§`4§ = new Vector.<§8O§>();
         this.§@k§ = new Vector.<§-!#§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §!T§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§'I§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §8O§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§`4§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §-!#§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§@k§.push(_loc8_);
            _loc3_++;
         }
         this.§4Y§ = _loc2_.slingshotX;
         this.§%!&§ = _loc2_.slingshotY;
      }
      
      public function §,!4§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§6d§;
         _loc1_.scoreSilver = this.§<!D§;
         _loc1_.scoreGold = this.§ !§;
         _loc1_.scoreEagle = this.§0^§;
         _loc1_.theme = this.§8!W§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§'I§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§`4§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§`4§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@k§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@k§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2j§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§2j§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@k§.length;
         _loc1_.counts.birds = this.§`4§.length;
         _loc1_.counts.joints = this.§2j§.length;
         _loc1_.slingshotX = this.§4Y§;
         _loc1_.slingshotY = this.§%!&§;
         return _loc1_;
      }
      
      public function §-6§() : String
      {
         return JSON.stringify(this.§,!4§());
      }
      
      public function §[!%§() : int
      {
         var _loc2_:§-!#§ = null;
         var _loc3_:String = null;
         var _loc4_:§,!§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@k§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §&!5§.§;@§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §&!5§.§;@§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§!!A§(_loc4_))
               {
                  _loc1_ += _loc4_.§,>§ * §9!%§.§#6§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §<I§() : XML
      {
         var _loc2_:§!T§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§6d§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§8H§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§<!D§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§ !§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§'I§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §?M§.§9!U§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§`4§[0].x + "\" y=\"" + (this.§`4§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§`4§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§`4§[_loc3_].id + "\" x=\"" + this.§`4§[_loc3_].x + "\" y=\"" + this.§`4§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@k§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@k§[_loc3_].id + "\" x=\"" + this.§@k§[_loc3_].x + "\" y=\"" + this.§@k§[_loc3_].y + "\" rotation=\"" + this.§@k§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
