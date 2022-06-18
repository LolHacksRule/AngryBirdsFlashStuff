package §<!M§
{
   import §1!4§.*;
   import §1!A§.§4Z§;
   import §1!A§.§9P§;
   import §1!A§.§@k§;
   import §5B§.§6!>§;
   import §9!#§.§4!6§;
   import §9!#§.§5y§;
   import §;'§.§?!D§;
   import flash.geom.Point;
   
   public class §1!&§
   {
      
      public static const §5d§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §>P§:Number = 0;
      
      public var §+C§:Number = -8;
      
      protected var §"6§:Vector.<§4Z§> = null;
      
      protected var §7j§:Vector.<§@k§> = null;
      
      protected var §<-§:Vector.<§9P§> = null;
      
      protected var §?1§:Vector.<§#"§> = null;
      
      public var §@c§:int = 0;
      
      public var §0'§:int = 0;
      
      private var §0!#§:int = 0;
      
      protected var §&Z§:String = null;
      
      public var mName:String = null;
      
      public function §1!&§()
      {
         super();
         this.§?1§ = new Vector.<§#"§>();
         this.§"6§ = new Vector.<§4Z§>();
         this.§7j§ = new Vector.<§@k§>();
         this.§<-§ = new Vector.<§9P§>();
         this.§&Z§ = §5d§;
      }
      
      public static function §1I§(param1:String) : §1!&§
      {
         var _loc2_:§1!&§ = new §1!&§();
         _loc2_.§^&§(param1);
         return _loc2_;
      }
      
      public static function §1-§(param1:§4!6§) : Boolean
      {
         if(param1.§^x§ == §4!6§.§,b§ || param1.§^x§ == §4!6§.§>i§ || param1.§^x§ == §4!6§.§ !A§)
         {
            return true;
         }
         return false;
      }
      
      public static function §#Z§(param1:String) : §1!&§
      {
         var _loc2_:§1!&§ = §1I§(param1);
         _loc2_.§>P§ = _loc2_.§7j§[0].x;
         _loc2_.§+C§ = _loc2_.§7j§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§"6§.length)
         {
            _loc2_.§"6§[_loc3_].angle = 360 - _loc2_.§"6§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §6§(param1:int, param2:Object) : Vector.<§9P§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§9P§ = null;
         var _loc3_:Vector.<§9P§> = new Vector.<§9P§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §9P§.§@M§ || _loc5_.type == §9P§.§1p§)
               {
                  _loc8_ = new §9P§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §9P§.§1p§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §9P§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §9P§.§7!7§)
               {
                  _loc8_.§&!!§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §=!=§() : int
      {
         return this.§"6§.length;
      }
      
      public function get §5P§() : int
      {
         return this.§<-§.length;
      }
      
      public function get §'!M§() : int
      {
         return this.§7j§.length;
      }
      
      public function get §<!8§() : int
      {
         return this.§?1§.length;
      }
      
      public function get theme() : String
      {
         return this.§&Z§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§&Z§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§]u§();
         if(_loc1_ > 0 && _loc1_ < this.§0!#§)
         {
            return _loc1_;
         }
         if(this.§0!#§ == 0)
         {
            return _loc1_;
         }
         return this.§0!#§;
      }
      
      public function §3q§(param1:int) : void
      {
         var _loc2_:int = this.§]u§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§0!#§ = param1;
      }
      
      public function §^&§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§#"§ = null;
         var _loc9_:Object = null;
         var _loc10_:§@k§ = null;
         var _loc11_:§4Z§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§@c§ = _loc2_.scoreSilver;
         this.§0'§ = _loc2_.scoreGold;
         this.§0!#§ = _loc2_.scoreEagle;
         this.§&Z§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§<-§ = §6§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§?1§ = new Vector.<§#"§>();
         this.§7j§ = new Vector.<§@k§>();
         this.§"6§ = new Vector.<§4Z§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §#"§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§?1§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §@k§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§7j§.push(_loc10_);
            _loc3_++;
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 1;
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            if((_loc5_ = _loc2_.world[_loc6_]).uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc4_.push(_loc5_.uniqueID);
            }
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            _loc5_ = _loc2_.world[_loc6_];
            (_loc11_ = new §4Z§()).x = _loc5_.x;
            _loc11_.y = _loc5_.y;
            _loc11_.id = _loc5_.id;
            if(_loc5_.uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc11_.uniqueID = _loc5_.uniqueID;
            }
            else
            {
               while(_loc4_.indexOf(_loc7_) >= 0)
               {
                  _loc7_++;
               }
               _loc11_.uniqueID = _loc7_.toString();
               _loc4_.push(_loc7_);
            }
            if(_loc5_.front)
            {
               _loc11_.front = _loc5_.front;
            }
            _loc11_.angle = _loc5_.angle;
            this.§"6§.push(_loc11_);
            _loc3_++;
         }
         this.§>P§ = _loc2_.slingshotX;
         this.§+C§ = _loc2_.slingshotY;
      }
      
      public function §9!$§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§@c§;
         _loc1_.scoreGold = this.§0'§;
         _loc1_.scoreEagle = this.§0!#§;
         _loc1_.theme = this.§&Z§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§?1§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§7j§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§7j§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"6§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§"6§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§<-§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§<-§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§"6§.length;
         _loc1_.counts.birds = this.§7j§.length;
         _loc1_.counts.joints = this.§<-§.length;
         _loc1_.slingshotX = this.§>P§;
         _loc1_.slingshotY = this.§+C§;
         return _loc1_;
      }
      
      public function §6J§() : String
      {
         return JSON.stringify(this.§9!$§());
      }
      
      public function §]u§() : int
      {
         var _loc2_:§4Z§ = null;
         var _loc3_:String = null;
         var _loc4_:§4!6§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"6§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §5y§.§6!%§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §5y§.§6!%§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§1-§(_loc4_))
               {
                  _loc1_ += _loc4_.§@g§ * §?!D§.§,!@§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §;-§() : XML
      {
         var _loc2_:§#"§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§@c§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§0'§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§?1§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §6!>§.§8D§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§7j§[0].x + "\" y=\"" + (this.§7j§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§7j§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§7j§[_loc3_].id + "\" x=\"" + this.§7j§[_loc3_].x + "\" y=\"" + this.§7j§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§"6§.length)
         {
            _loc1_ += "<Item id=\"" + this.§"6§[_loc3_].id + "\" x=\"" + this.§"6§[_loc3_].x + "\" y=\"" + this.§"6§[_loc3_].y + "\" rotation=\"" + this.§"6§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §,,§(param1:int) : §4Z§
      {
         return this.§"6§[param1];
      }
      
      public function addObject(param1:§4Z§) : void
      {
         this.§"6§.push(param1);
      }
      
      public function §^L§(param1:int) : §9P§
      {
         return this.§<-§[param1];
      }
      
      public function §9!I§(param1:§9P§) : void
      {
         this.§<-§.push(param1);
      }
      
      public function §4r§(param1:int) : §@k§
      {
         return this.§7j§[param1];
      }
      
      public function §?!5§(param1:§@k§) : void
      {
         this.§7j§.push(param1);
      }
      
      public function §&E§() : void
      {
         this.§?1§ = new Vector.<§#"§>();
      }
      
      public function §0H§() : void
      {
         this.§7j§ = new Vector.<§@k§>();
      }
      
      public function §>M§(param1:int) : §#"§
      {
         return this.§?1§[param1];
      }
      
      public function §]%§(param1:§#"§) : void
      {
         this.§?1§.push(param1);
      }
   }
}
