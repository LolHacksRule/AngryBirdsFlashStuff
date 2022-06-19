package §#K§
{
   import §,B§.§<!2§;
   import §,B§.§?7§;
   import §6M§.*;
   import §8!P§.§5p§;
   import §9h§.§,u§;
   import §9h§.§-!#§;
   import §9h§.§8O§;
   import §?'§.§9N§;
   
   public class §?I§
   {
      
      public static const §<I§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §with§:Number = 0;
      
      public var §4Y§:Number = -8;
      
      public var §%!&§:Vector.<§,u§> = null;
      
      public var § !J§:Vector.<§-!#§> = null;
      
      public var §@k§:Vector.<§8O§> = null;
      
      public var §2j§:Vector.<§^b§> = null;
      
      public var §'I§:Number = 0;
      
      public var §6d§:Boolean = false;
      
      public var §8H§:int = 0;
      
      public var §<!D§:int = 0;
      
      private var § !§:int = 0;
      
      private var §0^§:String = null;
      
      public var mName:String = null;
      
      public function §?I§()
      {
         super();
         this.§2j§ = new Vector.<§^b§>();
         this.§%!&§ = new Vector.<§,u§>();
         this.§ !J§ = new Vector.<§-!#§>();
         this.§@k§ = new Vector.<§8O§>();
         this.§0^§ = §<I§;
      }
      
      public static function §+!-§(param1:String) : §?I§
      {
         var _loc2_:§?I§ = new §?I§();
         _loc2_.§0q§(param1);
         return _loc2_;
      }
      
      public static function §;Q§(param1:§<!2§) : Boolean
      {
         if(param1.§ h§ == §<!2§.§&!Q§ || param1.§ h§ == §<!2§.§"A§ || param1.§ h§ == §<!2§.§@!%§)
         {
            return true;
         }
         return false;
      }
      
      public static function §!!A§(param1:String) : §?I§
      {
         var _loc2_:§?I§ = §+!-§(param1);
         _loc2_.§with§ = _loc2_.§ !J§[0].x;
         _loc2_.§4Y§ = _loc2_.§ !J§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§%!&§.length)
         {
            _loc2_.§%!&§[_loc3_].angle = 360 - _loc2_.§%!&§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §1!G§(param1:int, param2:Object) : Vector.<§8O§>
      {
         var _loc5_:Object = null;
         var _loc6_:§8O§ = null;
         var _loc3_:Vector.<§8O§> = new Vector.<§8O§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §8O§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §8O§.§'S§)
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
         return this.§0^§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§0^§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§,6§();
         if(_loc1_ > 0 && _loc1_ < this.§ !§)
         {
            return _loc1_;
         }
         if(this.§ !§ == 0)
         {
            return _loc1_;
         }
         return this.§ !§;
      }
      
      public function §8!W§(param1:int) : void
      {
         var _loc2_:int = this.§,6§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§ !§ = param1;
      }
      
      public function §0q§(param1:String) : void
      {
         var _loc4_:§^b§ = null;
         var _loc5_:Object = null;
         var _loc6_:§-!#§ = null;
         var _loc7_:Object = null;
         var _loc8_:§,u§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§'I§ = _loc2_.LevelExtension;
         this.§6d§ = false;
         this.§8H§ = _loc2_.scoreSilver;
         this.§<!D§ = _loc2_.scoreGold;
         this.§ !§ = _loc2_.scoreEagle;
         this.§0^§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§@k§ = §1!G§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§2j§ = new Vector.<§^b§>();
         this.§ !J§ = new Vector.<§-!#§>();
         this.§%!&§ = new Vector.<§,u§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §^b§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§2j§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §-!#§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§ !J§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §,u§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§%!&§.push(_loc8_);
            _loc3_++;
         }
         this.§with§ = _loc2_.slingshotX;
         this.§4Y§ = _loc2_.slingshotY;
      }
      
      public function §6m§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§'I§;
         _loc1_.scoreSilver = this.§8H§;
         _loc1_.scoreGold = this.§<!D§;
         _loc1_.scoreEagle = this.§ !§;
         _loc1_.theme = this.§0^§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§2j§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§ !J§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ !J§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%!&§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§%!&§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@k§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§@k§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§%!&§.length;
         _loc1_.counts.birds = this.§ !J§.length;
         _loc1_.counts.joints = this.§@k§.length;
         _loc1_.slingshotX = this.§with§;
         _loc1_.slingshotY = this.§4Y§;
         return _loc1_;
      }
      
      public function §,!4§() : String
      {
         return JSON.stringify(this.§6m§());
      }
      
      public function §,6§() : int
      {
         var _loc2_:§,u§ = null;
         var _loc3_:String = null;
         var _loc4_:§<!2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%!&§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §?7§.§`1§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §?7§.§`1§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§;Q§(_loc4_))
               {
                  _loc1_ += _loc4_.§]p§ * §9N§.§01§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §-6§() : XML
      {
         var _loc2_:§^b§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§'I§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§6d§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§8H§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§<!D§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§2j§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §5p§.§8u§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§ !J§[0].x + "\" y=\"" + (this.§ !J§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§ !J§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§ !J§[_loc3_].id + "\" x=\"" + this.§ !J§[_loc3_].x + "\" y=\"" + this.§ !J§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§%!&§.length)
         {
            _loc1_ += "<Item id=\"" + this.§%!&§[_loc3_].id + "\" x=\"" + this.§%!&§[_loc3_].x + "\" y=\"" + this.§%!&§[_loc3_].y + "\" rotation=\"" + this.§%!&§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
