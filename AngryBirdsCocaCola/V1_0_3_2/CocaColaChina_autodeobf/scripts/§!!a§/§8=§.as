package §!!a§
{
   import §''§.*;
   import §,N§.§&;§;
   import §,N§.§@! §;
   import §,N§.§`W§;
   import §3!W§.§5!Q§;
   import §5!?§.§>"§;
   import §[o§.§4L§;
   import §[o§.§9n§;
   import flash.geom.Point;
   
   public class §8=§
   {
      
      public static const §4z§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §&j§:Number = 0;
      
      public var §+!1§:Number = -8;
      
      private var § C§:Vector.<§@! §> = null;
      
      private var §%X§:Vector.<§`W§> = null;
      
      private var §9w§:Vector.<§&;§> = null;
      
      private var §+g§:Vector.<§]>§> = null;
      
      public var §0!I§:Number = 0;
      
      public var §+a§:Boolean = false;
      
      public var §8!E§:int = 0;
      
      public var §7H§:int = 0;
      
      private var §4!Z§:int = 0;
      
      private var §23§:String = null;
      
      public var mName:String = null;
      
      public function §8=§()
      {
         super();
         this.§+g§ = new Vector.<§]>§>();
         this.§ C§ = new Vector.<§@! §>();
         this.§%X§ = new Vector.<§`W§>();
         this.§9w§ = new Vector.<§&;§>();
         this.§23§ = §4z§;
      }
      
      public static function §@s§(param1:String) : §8=§
      {
         var _loc2_:§8=§ = new §8=§();
         _loc2_.§<!W§(param1);
         return _loc2_;
      }
      
      public static function §`7§(param1:§9n§) : Boolean
      {
         if(param1.§,d§ == §9n§.§?P§ || param1.§,d§ == §9n§.§5j§ || param1.§,d§ == §9n§.dynamic)
         {
            return true;
         }
         return false;
      }
      
      public static function §%>§(param1:String) : §8=§
      {
         var _loc2_:§8=§ = §@s§(param1);
         _loc2_.§&j§ = _loc2_.§%X§[0].x;
         _loc2_.§+!1§ = _loc2_.§%X§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ C§.length)
         {
            _loc2_.§ C§[_loc3_].angle = 360 - _loc2_.§ C§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §>v§(param1:int, param2:Object) : Vector.<§&;§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§&;§ = null;
         var _loc3_:Vector.<§&;§> = new Vector.<§&;§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §&;§.§"W§ || _loc5_.type == §&;§.§]D§)
               {
                  _loc8_ = new §&;§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §&;§.§]D§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §&;§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §&;§.§<v§)
               {
                  _loc8_.§?G§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §+!^§() : int
      {
         return this.§ C§.length;
      }
      
      public function get §=!M§() : int
      {
         return this.§9w§.length;
      }
      
      public function get §=Z§() : int
      {
         return this.§%X§.length;
      }
      
      public function get §=j§() : int
      {
         return this.§+g§.length;
      }
      
      public function get theme() : String
      {
         return this.§23§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§23§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§[!I§();
         if(_loc1_ > 0 && _loc1_ < this.§4!Z§)
         {
            return _loc1_;
         }
         if(this.§4!Z§ == 0)
         {
            return _loc1_;
         }
         return this.§4!Z§;
      }
      
      public function §"+§(param1:int) : void
      {
         var _loc2_:int = this.§[!I§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§4!Z§ = param1;
      }
      
      public function §<!W§(param1:String) : void
      {
         var _loc4_:§]>§ = null;
         var _loc5_:Object = null;
         var _loc6_:§`W§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§@! § = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§0!I§ = _loc2_.LevelExtension;
         this.§+a§ = false;
         this.§8!E§ = _loc2_.scoreSilver;
         this.§7H§ = _loc2_.scoreGold;
         this.§4!Z§ = _loc2_.scoreEagle;
         this.§23§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§9w§ = §>v§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§+g§ = new Vector.<§]>§>();
         this.§%X§ = new Vector.<§`W§>();
         this.§ C§ = new Vector.<§@! §>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §]>§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§+g§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §`W§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§%X§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §@! §()).x = _loc8_.x;
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
            this.§ C§.push(_loc9_);
            _loc3_++;
         }
         this.§&j§ = _loc2_.slingshotX;
         this.§+!1§ = _loc2_.slingshotY;
      }
      
      public function §<"§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§0!I§;
         _loc1_.scoreSilver = this.§8!E§;
         _loc1_.scoreGold = this.§7H§;
         _loc1_.scoreEagle = this.§4!Z§;
         _loc1_.theme = this.§23§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§+g§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§%X§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§%X§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ C§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§ C§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9w§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§9w§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§ C§.length;
         _loc1_.counts.birds = this.§%X§.length;
         _loc1_.counts.joints = this.§9w§.length;
         _loc1_.slingshotX = this.§&j§;
         _loc1_.slingshotY = this.§+!1§;
         return _loc1_;
      }
      
      public function §,R§() : String
      {
         return JSON.stringify(this.§<"§());
      }
      
      public function §[!I§() : int
      {
         var _loc2_:§@! § = null;
         var _loc3_:String = null;
         var _loc4_:§9n§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ C§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §4L§.§+6§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §4L§.§+6§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§`7§(_loc4_))
               {
                  _loc1_ += _loc4_.§6!N§ * §>"§.§'W§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §;!+§() : XML
      {
         var _loc2_:§]>§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§0!I§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§+a§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§8!E§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§7H§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§+g§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §5!Q§.§5S§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§%X§[0].x + "\" y=\"" + (this.§%X§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§%X§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§%X§[_loc3_].id + "\" x=\"" + this.§%X§[_loc3_].x + "\" y=\"" + this.§%X§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§ C§.length)
         {
            _loc1_ += "<Item id=\"" + this.§ C§[_loc3_].id + "\" x=\"" + this.§ C§[_loc3_].x + "\" y=\"" + this.§ C§[_loc3_].y + "\" rotation=\"" + this.§ C§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §2T§(param1:int) : §@! §
      {
         return this.§ C§[param1];
      }
      
      public function §4§(param1:§@! §) : void
      {
         this.§ C§.push(param1);
      }
      
      public function §5<§(param1:int) : §&;§
      {
         return this.§9w§[param1];
      }
      
      public function §&R§(param1:§&;§) : void
      {
         this.§9w§.push(param1);
      }
      
      public function §4!4§(param1:int) : §`W§
      {
         return this.§%X§[param1];
      }
      
      public function §9!W§(param1:§`W§) : void
      {
         this.§%X§.push(param1);
      }
      
      public function §!8§() : void
      {
         this.§+g§ = new Vector.<§]>§>();
      }
      
      public function §2!=§() : void
      {
         this.§%X§ = new Vector.<§`W§>();
      }
      
      public function §=![§(param1:int) : §]>§
      {
         return this.§+g§[param1];
      }
      
      public function §;!D§(param1:§]>§) : void
      {
         this.§+g§.push(param1);
      }
   }
}
