package §<!@§
{
   import § `§.§3F§;
   import §+!%§.§'!"§;
   import §,Y§.§%[§;
   import §,Y§.§32§;
   import §finally§.§%!D§;
   import §finally§.§2-§;
   import §finally§.§>!$§;
   import flash.geom.Point;
   
   public class §+!-§
   {
      
      public static const §2!D§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §6T§:Number = 0;
      
      public var §?K§:Number = -8;
      
      private var §7A§:Vector.<§>!$§> = null;
      
      private var §8§:Vector.<§%!D§> = null;
      
      private var §5c§:Vector.<§2-§> = null;
      
      private var §[I§:Vector.<§@T§> = null;
      
      public var §-X§:Number = 0;
      
      public var §4D§:Boolean = false;
      
      public var §6,§:int = 0;
      
      public var §2!E§:int = 0;
      
      private var §;j§:int = 0;
      
      private var §<V§:String = null;
      
      public var mName:String = null;
      
      public function §+!-§()
      {
         super();
         this.§[I§ = new Vector.<§@T§>();
         this.§7A§ = new Vector.<§>!$§>();
         this.§8§ = new Vector.<§%!D§>();
         this.§5c§ = new Vector.<§2-§>();
         this.§<V§ = §2!D§;
      }
      
      public static function §%!E§(param1:String) : §+!-§
      {
         var _loc2_:§+!-§ = new §+!-§();
         _loc2_.§7!2§(param1);
         return _loc2_;
      }
      
      public static function §7y§(param1:§%[§) : Boolean
      {
         if(param1.§?B§ == §%[§.§`r§ || param1.§?B§ == §%[§.§"!8§ || param1.§?B§ == §%[§.§@@§)
         {
            return true;
         }
         return false;
      }
      
      public static function §0$§(param1:String) : §+!-§
      {
         var _loc2_:§+!-§ = §%!E§(param1);
         _loc2_.§6T§ = _loc2_.§8§[0].x;
         _loc2_.§?K§ = _loc2_.§8§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§7A§.length)
         {
            _loc2_.§7A§[_loc3_].angle = 360 - _loc2_.§7A§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §5D§(param1:int, param2:Object) : Vector.<§2-§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§2-§ = null;
         var _loc3_:Vector.<§2-§> = new Vector.<§2-§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §2-§.§3c§ || _loc5_.type == §2-§.§-?§)
               {
                  _loc8_ = new §2-§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §2-§.§-?§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §2-§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §2-§.§0U§)
               {
                  _loc8_.§;l§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get § E§() : int
      {
         return this.§7A§.length;
      }
      
      public function get §6[§() : int
      {
         return this.§5c§.length;
      }
      
      public function get §true §() : int
      {
         return this.§8§.length;
      }
      
      public function get §8M§() : int
      {
         return this.§[I§.length;
      }
      
      public function get theme() : String
      {
         return this.§<V§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§<V§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§"S§();
         if(_loc1_ > 0 && _loc1_ < this.§;j§)
         {
            return _loc1_;
         }
         if(this.§;j§ == 0)
         {
            return _loc1_;
         }
         return this.§;j§;
      }
      
      public function §8<§(param1:int) : void
      {
         var _loc2_:int = this.§"S§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§;j§ = param1;
      }
      
      public function §7!2§(param1:String) : void
      {
         var _loc4_:§@T§ = null;
         var _loc5_:Object = null;
         var _loc6_:§%!D§ = null;
         var _loc7_:Object = null;
         var _loc8_:§>!$§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§-X§ = _loc2_.LevelExtension;
         this.§4D§ = false;
         this.§6,§ = _loc2_.scoreSilver;
         this.§2!E§ = _loc2_.scoreGold;
         this.§;j§ = _loc2_.scoreEagle;
         this.§<V§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§5c§ = §5D§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§[I§ = new Vector.<§@T§>();
         this.§8§ = new Vector.<§%!D§>();
         this.§7A§ = new Vector.<§>!$§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §@T§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§[I§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §%!D§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§8§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §>!$§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§7A§.push(_loc8_);
            _loc3_++;
         }
         this.§6T§ = _loc2_.slingshotX;
         this.§?K§ = _loc2_.slingshotY;
      }
      
      public function §76§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§-X§;
         _loc1_.scoreSilver = this.§6,§;
         _loc1_.scoreGold = this.§2!E§;
         _loc1_.scoreEagle = this.§;j§;
         _loc1_.theme = this.§<V§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§[I§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§8§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§8§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7A§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§7A§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5c§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§5c§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§7A§.length;
         _loc1_.counts.birds = this.§8§.length;
         _loc1_.counts.joints = this.§5c§.length;
         _loc1_.slingshotX = this.§6T§;
         _loc1_.slingshotY = this.§?K§;
         return _loc1_;
      }
      
      public function §6]§() : String
      {
         return JSON.stringify(this.§76§());
      }
      
      public function §"S§() : int
      {
         var _loc2_:§>!$§ = null;
         var _loc3_:String = null;
         var _loc4_:§%[§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7A§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §32§.§&V§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §32§.§&V§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§7y§(_loc4_))
               {
                  _loc1_ += _loc4_.§&?§ * §'!"§.§5!F§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §6#§() : XML
      {
         var _loc2_:§@T§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§-X§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§4D§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§6,§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§2!E§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§[I§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §3F§.§]@§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§8§[0].x + "\" y=\"" + (this.§8§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§8§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§8§[_loc3_].id + "\" x=\"" + this.§8§[_loc3_].x + "\" y=\"" + this.§8§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§7A§.length)
         {
            _loc1_ += "<Item id=\"" + this.§7A§[_loc3_].id + "\" x=\"" + this.§7A§[_loc3_].x + "\" y=\"" + this.§7A§[_loc3_].y + "\" rotation=\"" + this.§7A§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function § #§(param1:int) : §>!$§
      {
         return this.§7A§[param1];
      }
      
      public function addObject(param1:§>!$§) : void
      {
         this.§7A§.push(param1);
      }
      
      public function §0+§(param1:int) : §2-§
      {
         return this.§5c§[param1];
      }
      
      public function §+!F§(param1:§2-§) : void
      {
         this.§5c§.push(param1);
      }
      
      public function §23§(param1:int) : §%!D§
      {
         return this.§8§[param1];
      }
      
      public function §&"§(param1:§%!D§) : void
      {
         this.§8§.push(param1);
      }
      
      public function §"j§() : void
      {
         this.§[I§ = new Vector.<§@T§>();
      }
      
      public function §2'§() : void
      {
         this.§8§ = new Vector.<§%!D§>();
      }
      
      public function §]5§(param1:int) : §@T§
      {
         return this.§[I§[param1];
      }
      
      public function §7$§(param1:§@T§) : void
      {
         this.§[I§.push(param1);
      }
   }
}
