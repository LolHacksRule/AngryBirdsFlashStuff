package §3"§
{
   import §4N§.§&!@§;
   import §4N§.§9o§;
   import §5!@§.§0!7§;
   import §5!@§.§=!%§;
   import §5!@§.§=!3§;
   import §<<§.*;
   import §[K§.§2!1§;
   import §[x§.§2^§;
   import flash.geom.Point;
   
   public class §8+§
   {
      
      public static const §#0§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §true §:Number = 0;
      
      public var §&J§:Number = -8;
      
      private var §1I§:Vector.<§=!3§> = null;
      
      private var §]<§:Vector.<§0!7§> = null;
      
      private var §?]§:Vector.<§=!%§> = null;
      
      private var §%!G§:Vector.<§?!&§> = null;
      
      public var §89§:Number = 0;
      
      public var §>!B§:Boolean = false;
      
      public var §#o§:int = 0;
      
      public var §1U§:int = 0;
      
      private var §<$§:int = 0;
      
      private var §2T§:String = null;
      
      public var mName:String = null;
      
      public function §8+§()
      {
         super();
         this.§%!G§ = new Vector.<§?!&§>();
         this.§1I§ = new Vector.<§=!3§>();
         this.§]<§ = new Vector.<§0!7§>();
         this.§?]§ = new Vector.<§=!%§>();
         this.§2T§ = §#0§;
      }
      
      public static function §]t§(param1:String) : §8+§
      {
         var _loc2_:§8+§ = new §8+§();
         _loc2_.§'2§(param1);
         return _loc2_;
      }
      
      public static function §7I§(param1:§9o§) : Boolean
      {
         if(param1.§&!E§ == §9o§.§2!§ || param1.§&!E§ == §9o§.§'!<§ || param1.§&!E§ == §9o§.§>]§)
         {
            return true;
         }
         return false;
      }
      
      public static function §0Q§(param1:String) : §8+§
      {
         var _loc2_:§8+§ = §]t§(param1);
         _loc2_.§true § = _loc2_.§]<§[0].x;
         _loc2_.§&J§ = _loc2_.§]<§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§1I§.length)
         {
            _loc2_.§1I§[_loc3_].angle = 360 - _loc2_.§1I§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §>1§(param1:int, param2:Object) : Vector.<§=!%§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§=!%§ = null;
         var _loc3_:Vector.<§=!%§> = new Vector.<§=!%§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §=!%§.§=f§ || _loc5_.type == §=!%§.§8!§)
               {
                  _loc8_ = new §=!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §=!%§.§8!§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §=!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §=!%§.§;!-§)
               {
                  _loc8_.§"!!§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §?c§() : int
      {
         return this.§1I§.length;
      }
      
      public function get §5!$§() : int
      {
         return this.§?]§.length;
      }
      
      public function get §1x§() : int
      {
         return this.§]<§.length;
      }
      
      public function get §6k§() : int
      {
         return this.§%!G§.length;
      }
      
      public function get theme() : String
      {
         return this.§2T§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§2T§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§%!%§();
         if(_loc1_ > 0 && _loc1_ < this.§<$§)
         {
            return _loc1_;
         }
         if(this.§<$§ == 0)
         {
            return _loc1_;
         }
         return this.§<$§;
      }
      
      public function §[!@§(param1:int) : void
      {
         var _loc2_:int = this.§%!%§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§<$§ = param1;
      }
      
      public function §'2§(param1:String) : void
      {
         var _loc4_:§?!&§ = null;
         var _loc5_:Object = null;
         var _loc6_:§0!7§ = null;
         var _loc7_:Object = null;
         var _loc8_:§=!3§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§89§ = _loc2_.LevelExtension;
         this.§>!B§ = false;
         this.§#o§ = _loc2_.scoreSilver;
         this.§1U§ = _loc2_.scoreGold;
         this.§<$§ = _loc2_.scoreEagle;
         this.§2T§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§?]§ = §>1§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§%!G§ = new Vector.<§?!&§>();
         this.§]<§ = new Vector.<§0!7§>();
         this.§1I§ = new Vector.<§=!3§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §?!&§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§%!G§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §0!7§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§]<§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §=!3§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§1I§.push(_loc8_);
            _loc3_++;
         }
         this.§true § = _loc2_.slingshotX;
         this.§&J§ = _loc2_.slingshotY;
      }
      
      public function §]!<§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§89§;
         _loc1_.scoreSilver = this.§#o§;
         _loc1_.scoreGold = this.§1U§;
         _loc1_.scoreEagle = this.§<$§;
         _loc1_.theme = this.§2T§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§%!G§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§]<§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§]<§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1I§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§1I§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§?]§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§?]§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§1I§.length;
         _loc1_.counts.birds = this.§]<§.length;
         _loc1_.counts.joints = this.§?]§.length;
         _loc1_.slingshotX = this.§true §;
         _loc1_.slingshotY = this.§&J§;
         return _loc1_;
      }
      
      public function §]i§() : String
      {
         return JSON.stringify(this.§]!<§());
      }
      
      public function §%!%§() : int
      {
         var _loc2_:§=!3§ = null;
         var _loc3_:String = null;
         var _loc4_:§9o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1I§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §&!@§.§9B§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §&!@§.§9B§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§7I§(_loc4_))
               {
                  _loc1_ += _loc4_.§[!3§ * §2^§.§<A§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §4!6§() : XML
      {
         var _loc2_:§?!&§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§89§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§>!B§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§#o§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§1U§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§%!G§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §2!1§.§2s§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§]<§[0].x + "\" y=\"" + (this.§]<§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§]<§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§]<§[_loc3_].id + "\" x=\"" + this.§]<§[_loc3_].x + "\" y=\"" + this.§]<§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§1I§.length)
         {
            _loc1_ += "<Item id=\"" + this.§1I§[_loc3_].id + "\" x=\"" + this.§1I§[_loc3_].x + "\" y=\"" + this.§1I§[_loc3_].y + "\" rotation=\"" + this.§1I§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §!§(param1:int) : §=!3§
      {
         return this.§1I§[param1];
      }
      
      public function addObject(param1:§=!3§) : void
      {
         this.§1I§.push(param1);
      }
      
      public function §?;§(param1:int) : §=!%§
      {
         return this.§?]§[param1];
      }
      
      public function §-%§(param1:§=!%§) : void
      {
         this.§?]§.push(param1);
      }
      
      public function § =§(param1:int) : §0!7§
      {
         return this.§]<§[param1];
      }
      
      public function §=&§(param1:§0!7§) : void
      {
         this.§]<§.push(param1);
      }
      
      public function §0X§() : void
      {
         this.§%!G§ = new Vector.<§?!&§>();
      }
      
      public function §#U§() : void
      {
         this.§]<§ = new Vector.<§0!7§>();
      }
      
      public function §;m§(param1:int) : §?!&§
      {
         return this.§%!G§[param1];
      }
      
      public function §]^§(param1:§?!&§) : void
      {
         this.§%!G§.push(param1);
      }
   }
}
