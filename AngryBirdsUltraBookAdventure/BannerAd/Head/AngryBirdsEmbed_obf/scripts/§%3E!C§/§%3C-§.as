package §>!C§
{
   import §!c§.§2E§;
   import §!c§.§`K§;
   import §"D§.*;
   import §#k§.§"!D§;
   import §#k§.§%!?§;
   import §#k§.§?!3§;
   import §%x§.§#;§;
   import §4>§.§[F§;
   import flash.geom.Point;
   
   public class §<-§
   {
      
      public static const §''§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §9R§:Number = 0;
      
      public var §2^§:Number = -8;
      
      private var §7!H§:Vector.<§"!D§> = null;
      
      private var §"_§:Vector.<§?!3§> = null;
      
      private var §2x§:Vector.<§%!?§> = null;
      
      private var §-!C§:Vector.<§3y§> = null;
      
      public var §1A§:Number = 0;
      
      public var §2!%§:Boolean = false;
      
      public var §[!$§:int = 0;
      
      public var §!!9§:int = 0;
      
      private var §4$§:int = 0;
      
      private var §-!6§:String = null;
      
      public var mName:String = null;
      
      public function §<-§()
      {
         super();
         this.§-!C§ = new Vector.<§3y§>();
         this.§7!H§ = new Vector.<§"!D§>();
         this.§"_§ = new Vector.<§?!3§>();
         this.§2x§ = new Vector.<§%!?§>();
         this.§-!6§ = §''§;
      }
      
      public static function § !4§(param1:String) : §<-§
      {
         var _loc2_:§<-§ = new §<-§();
         _loc2_.§>+§(param1);
         return _loc2_;
      }
      
      public static function §4!#§(param1:§2E§) : Boolean
      {
         if(param1.§'!,§ == §2E§.§]D§ || param1.§'!,§ == §2E§.§ k§ || param1.§'!,§ == §2E§.§try§)
         {
            return true;
         }
         return false;
      }
      
      public static function §<!0§(param1:String) : §<-§
      {
         var _loc2_:§<-§ = § !4§(param1);
         _loc2_.§9R§ = _loc2_.§"_§[0].x;
         _loc2_.§2^§ = _loc2_.§"_§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§7!H§.length)
         {
            _loc2_.§7!H§[_loc3_].angle = 360 - _loc2_.§7!H§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §07§(param1:int, param2:Object) : Vector.<§%!?§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§%!?§ = null;
         var _loc3_:Vector.<§%!?§> = new Vector.<§%!?§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §%!?§.§#>§ || _loc5_.type == §%!?§.§!E§)
               {
                  _loc8_ = new §%!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §%!?§.§!E§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §%!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §%!?§.§?f§)
               {
                  _loc8_.§ 0§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §^?§() : int
      {
         return this.§7!H§.length;
      }
      
      public function get § M§() : int
      {
         return this.§2x§.length;
      }
      
      public function get §"9§() : int
      {
         return this.§"_§.length;
      }
      
      public function get §5C§() : int
      {
         return this.§-!C§.length;
      }
      
      public function get theme() : String
      {
         return this.§-!6§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§-!6§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§,!%§();
         if(_loc1_ > 0 && _loc1_ < this.§4$§)
         {
            return _loc1_;
         }
         if(this.§4$§ == 0)
         {
            return _loc1_;
         }
         return this.§4$§;
      }
      
      public function §`R§(param1:int) : void
      {
         var _loc2_:int = this.§,!%§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§4$§ = param1;
      }
      
      public function §>+§(param1:String) : void
      {
         var _loc4_:§3y§ = null;
         var _loc5_:Object = null;
         var _loc6_:§?!3§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§"!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§1A§ = _loc2_.LevelExtension;
         this.§2!%§ = false;
         this.§[!$§ = _loc2_.scoreSilver;
         this.§!!9§ = _loc2_.scoreGold;
         this.§4$§ = _loc2_.scoreEagle;
         this.§-!6§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§2x§ = §07§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§-!C§ = new Vector.<§3y§>();
         this.§"_§ = new Vector.<§?!3§>();
         this.§7!H§ = new Vector.<§"!D§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §3y§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§-!C§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §?!3§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§"_§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §"!D§()).x = _loc8_.x;
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
            this.§7!H§.push(_loc9_);
            _loc3_++;
         }
         this.§9R§ = _loc2_.slingshotX;
         this.§2^§ = _loc2_.slingshotY;
      }
      
      public function §>!E§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§1A§;
         _loc1_.scoreSilver = this.§[!$§;
         _loc1_.scoreGold = this.§!!9§;
         _loc1_.scoreEagle = this.§4$§;
         _loc1_.theme = this.§-!6§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§-!C§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§"_§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§"_§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!H§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§7!H§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2x§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§2x§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§7!H§.length;
         _loc1_.counts.birds = this.§"_§.length;
         _loc1_.counts.joints = this.§2x§.length;
         _loc1_.slingshotX = this.§9R§;
         _loc1_.slingshotY = this.§2^§;
         return _loc1_;
      }
      
      public function §1W§() : String
      {
         return JSON.stringify(this.§>!E§());
      }
      
      public function §,!%§() : int
      {
         var _loc2_:§"!D§ = null;
         var _loc3_:String = null;
         var _loc4_:§2E§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7!H§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §`K§.§!P§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §`K§.§!P§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§4!#§(_loc4_))
               {
                  _loc1_ += _loc4_.§`9§ * §#;§.§?!B§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §2!$§() : XML
      {
         var _loc2_:§3y§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§1A§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§2!%§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§[!$§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§!!9§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§-!C§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §[F§.§5t§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§"_§[0].x + "\" y=\"" + (this.§"_§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§"_§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§"_§[_loc3_].id + "\" x=\"" + this.§"_§[_loc3_].x + "\" y=\"" + this.§"_§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§7!H§.length)
         {
            _loc1_ += "<Item id=\"" + this.§7!H§[_loc3_].id + "\" x=\"" + this.§7!H§[_loc3_].x + "\" y=\"" + this.§7!H§[_loc3_].y + "\" rotation=\"" + this.§7!H§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §%t§(param1:int) : §"!D§
      {
         return this.§7!H§[param1];
      }
      
      public function addObject(param1:§"!D§) : void
      {
         this.§7!H§.push(param1);
      }
      
      public function §!6§(param1:int) : §%!?§
      {
         return this.§2x§[param1];
      }
      
      public function §4! §(param1:§%!?§) : void
      {
         this.§2x§.push(param1);
      }
      
      public function §8P§(param1:int) : §?!3§
      {
         return this.§"_§[param1];
      }
      
      public function §?j§(param1:§?!3§) : void
      {
         this.§"_§.push(param1);
      }
      
      public function §;$§() : void
      {
         this.§-!C§ = new Vector.<§3y§>();
      }
      
      public function §91§() : void
      {
         this.§"_§ = new Vector.<§?!3§>();
      }
      
      public function §-P§(param1:int) : §3y§
      {
         return this.§-!C§[param1];
      }
      
      public function §#S§(param1:§3y§) : void
      {
         this.§-!C§.push(param1);
      }
   }
}
