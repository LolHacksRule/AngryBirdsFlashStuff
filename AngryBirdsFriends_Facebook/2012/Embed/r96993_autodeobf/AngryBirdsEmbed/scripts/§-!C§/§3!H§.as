package §-!C§
{
   import §!I§.*;
   import §+6§.§4j§;
   import §0!D§.§!!D§;
   import §0!D§.§+r§;
   import §0!D§.§55§;
   import §<!<§.§6e§;
   import §<!<§.§6t§;
   import §`i§.§2W§;
   import flash.geom.Point;
   
   public class §3!H§
   {
      
      public static const §^!8§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §;E§:Number = 0;
      
      public var §=@§:Number = -8;
      
      private var §%!;§:Vector.<§55§> = null;
      
      private var §"D§:Vector.<§+r§> = null;
      
      private var § V§:Vector.<§!!D§> = null;
      
      private var §30§:Vector.<§;]§> = null;
      
      public var § !;§:Number = 0;
      
      public var §0Y§:Boolean = false;
      
      public var §,4§:int = 0;
      
      public var §"=§:int = 0;
      
      private var § !H§:int = 0;
      
      private var § !5§:String = null;
      
      public var mName:String = null;
      
      public function §3!H§()
      {
         super();
         this.§30§ = new Vector.<§;]§>();
         this.§%!;§ = new Vector.<§55§>();
         this.§"D§ = new Vector.<§+r§>();
         this.§ V§ = new Vector.<§!!D§>();
         this.§ !5§ = §^!8§;
      }
      
      public static function §%o§(param1:String) : §3!H§
      {
         var _loc2_:§3!H§ = new §3!H§();
         _loc2_.§,!=§(param1);
         return _loc2_;
      }
      
      public static function §%S§(param1:§6e§) : Boolean
      {
         if(param1.§+!<§ == §6e§.§[>§ || param1.§+!<§ == §6e§.§-!1§ || param1.§+!<§ == §6e§.§4!<§)
         {
            return true;
         }
         return false;
      }
      
      public static function §"+§(param1:String) : §3!H§
      {
         var _loc2_:§3!H§ = §%o§(param1);
         _loc2_.§;E§ = _loc2_.§"D§[0].x;
         _loc2_.§=@§ = _loc2_.§"D§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§%!;§.length)
         {
            _loc2_.§%!;§[_loc3_].angle = 360 - _loc2_.§%!;§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §6!7§(param1:int, param2:Object) : Vector.<§!!D§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§!!D§ = null;
         var _loc3_:Vector.<§!!D§> = new Vector.<§!!D§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §!!D§.§2%§ || _loc5_.type == §!!D§.§ else§)
               {
                  _loc8_ = new §!!D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §!!D§.§ else§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §!!D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §!!D§.§[C§)
               {
                  _loc8_.§9L§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §`$§() : int
      {
         return this.§%!;§.length;
      }
      
      public function get §?M§() : int
      {
         return this.§ V§.length;
      }
      
      public function get §5%§() : int
      {
         return this.§"D§.length;
      }
      
      public function get §28§() : int
      {
         return this.§30§.length;
      }
      
      public function get theme() : String
      {
         return this.§ !5§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§ !5§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§8!<§();
         if(_loc1_ > 0 && _loc1_ < this.§ !H§)
         {
            return _loc1_;
         }
         if(this.§ !H§ == 0)
         {
            return _loc1_;
         }
         return this.§ !H§;
      }
      
      public function §93§(param1:int) : void
      {
         var _loc2_:int = this.§8!<§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§ !H§ = param1;
      }
      
      public function §,!=§(param1:String) : void
      {
         var _loc4_:§;]§ = null;
         var _loc5_:Object = null;
         var _loc6_:§+r§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§55§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§ !;§ = _loc2_.LevelExtension;
         this.§0Y§ = false;
         this.§,4§ = _loc2_.scoreSilver;
         this.§"=§ = _loc2_.scoreGold;
         this.§ !H§ = _loc2_.scoreEagle;
         this.§ !5§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§ V§ = §6!7§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§30§ = new Vector.<§;]§>();
         this.§"D§ = new Vector.<§+r§>();
         this.§%!;§ = new Vector.<§55§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §;]§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§30§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §+r§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§"D§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §55§()).x = _loc8_.x;
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
            this.§%!;§.push(_loc9_);
            _loc3_++;
         }
         this.§;E§ = _loc2_.slingshotX;
         this.§=@§ = _loc2_.slingshotY;
      }
      
      public function §=b§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§ !;§;
         _loc1_.scoreSilver = this.§,4§;
         _loc1_.scoreGold = this.§"=§;
         _loc1_.scoreEagle = this.§ !H§;
         _loc1_.theme = this.§ !5§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§30§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§"D§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§"D§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%!;§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§%!;§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ V§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§ V§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§%!;§.length;
         _loc1_.counts.birds = this.§"D§.length;
         _loc1_.counts.joints = this.§ V§.length;
         _loc1_.slingshotX = this.§;E§;
         _loc1_.slingshotY = this.§=@§;
         return _loc1_;
      }
      
      public function §%!I§() : String
      {
         return JSON.stringify(this.§=b§());
      }
      
      public function §8!<§() : int
      {
         var _loc2_:§55§ = null;
         var _loc3_:String = null;
         var _loc4_:§6e§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%!;§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §6t§.§5,§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §6t§.§5,§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§%S§(_loc4_))
               {
                  _loc1_ += _loc4_.§?!+§ * §2W§.§"!'§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §&!C§() : XML
      {
         var _loc2_:§;]§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§ !;§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§0Y§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§,4§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§"=§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§30§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §4j§.§%J§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§"D§[0].x + "\" y=\"" + (this.§"D§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§"D§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§"D§[_loc3_].id + "\" x=\"" + this.§"D§[_loc3_].x + "\" y=\"" + this.§"D§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§%!;§.length)
         {
            _loc1_ += "<Item id=\"" + this.§%!;§[_loc3_].id + "\" x=\"" + this.§%!;§[_loc3_].x + "\" y=\"" + this.§%!;§[_loc3_].y + "\" rotation=\"" + this.§%!;§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §#!§(param1:int) : §55§
      {
         return this.§%!;§[param1];
      }
      
      public function addObject(param1:§55§) : void
      {
         this.§%!;§.push(param1);
      }
      
      public function §=7§(param1:int) : §!!D§
      {
         return this.§ V§[param1];
      }
      
      public function §#!8§(param1:§!!D§) : void
      {
         this.§ V§.push(param1);
      }
      
      public function §=o§(param1:int) : §+r§
      {
         return this.§"D§[param1];
      }
      
      public function §03§(param1:§+r§) : void
      {
         this.§"D§.push(param1);
      }
      
      public function §<S§() : void
      {
         this.§30§ = new Vector.<§;]§>();
      }
      
      public function §+#§() : void
      {
         this.§"D§ = new Vector.<§+r§>();
      }
      
      public function §@L§(param1:int) : §;]§
      {
         return this.§30§[param1];
      }
      
      public function §7x§(param1:§;]§) : void
      {
         this.§30§.push(param1);
      }
   }
}
