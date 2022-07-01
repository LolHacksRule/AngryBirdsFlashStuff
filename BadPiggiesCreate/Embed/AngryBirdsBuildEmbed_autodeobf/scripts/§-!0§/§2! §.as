package §-!0§
{
   import §;o§.*;
   import §<!<§.§7E§;
   import §?!6§.§1!!§;
   import §?!6§.§]!@§;
   import §@_§.§7!-§;
   import §@_§.§[!k§;
   import §@_§.§[F§;
   import §`a§.§ !U§;
   import flash.geom.Point;
   
   public class §2! §
   {
      
      public static const §4!l§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §>!$§:Number = 0;
      
      public var §]!l§:Number = -8;
      
      private var §?n§:Vector.<§[!k§> = null;
      
      private var mBirds:Vector.<§7!-§> = null;
      
      private var §2^§:Vector.<§[F§> = null;
      
      private var §6[§:Vector.<§!!s§> = null;
      
      public var §82§:Number = 0;
      
      public var §#6§:Boolean = false;
      
      public var §6!H§:int = 0;
      
      public var §9>§:int = 0;
      
      private var §5`§:int = 0;
      
      private var §,A§:String = null;
      
      public var mName:String = null;
      
      public function §2! §()
      {
         super();
         this.§6[§ = new Vector.<§!!s§>();
         this.§?n§ = new Vector.<§[!k§>();
         this.mBirds = new Vector.<§7!-§>();
         this.§2^§ = new Vector.<§[F§>();
         this.§,A§ = §4!l§;
      }
      
      public static function §%!G§(param1:String) : §2! §
      {
         var _loc2_:§2! § = new §2! §();
         _loc2_.§,!0§(param1);
         return _loc2_;
      }
      
      public static function §'c§(param1:§]!@§) : Boolean
      {
         if(param1.§&!j§ == §]!@§.§]4§ || param1.§&!j§ == §]!@§.§&l§ || param1.§&!j§ == §]!@§.§6!r§)
         {
            return true;
         }
         return false;
      }
      
      public static function §@t§(param1:String) : §2! §
      {
         var _loc2_:§2! § = §%!G§(param1);
         _loc2_.§>!$§ = _loc2_.mBirds[0].x;
         _loc2_.§]!l§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§?n§.length)
         {
            _loc2_.§?n§[_loc3_].angle = 360 - _loc2_.§?n§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §,f§(param1:int, param2:Object) : Vector.<§[F§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§[F§ = null;
         var _loc3_:Vector.<§[F§> = new Vector.<§[F§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §[F§.§&Y§ || _loc5_.type == §[F§.§4=§)
               {
                  _loc8_ = new §[F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §[F§.§4=§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §[F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §[F§.§7m§)
               {
                  _loc8_.§2!l§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §0'§() : int
      {
         return this.§?n§.length;
      }
      
      public function get §^!L§() : int
      {
         return this.§2^§.length;
      }
      
      public function get §-!E§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §"T§() : int
      {
         return this.§6[§.length;
      }
      
      public function get theme() : String
      {
         return this.§,A§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§,A§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§]+§();
         if(_loc1_ > 0 && _loc1_ < this.§5`§)
         {
            return _loc1_;
         }
         if(this.§5`§ == 0)
         {
            return _loc1_;
         }
         return this.§5`§;
      }
      
      public function §8+§(param1:int) : void
      {
         var _loc2_:int = this.§]+§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§5`§ = param1;
      }
      
      public function §,!0§(param1:String) : void
      {
         var _loc4_:§!!s§ = null;
         var _loc5_:Object = null;
         var _loc6_:§7!-§ = null;
         var _loc7_:Object = null;
         var _loc8_:§[!k§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§82§ = _loc2_.LevelExtension;
         this.§#6§ = false;
         this.§6!H§ = _loc2_.scoreSilver;
         this.§9>§ = _loc2_.scoreGold;
         this.§5`§ = _loc2_.scoreEagle;
         this.§,A§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§2^§ = §,f§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§6[§ = new Vector.<§!!s§>();
         this.mBirds = new Vector.<§7!-§>();
         this.§?n§ = new Vector.<§[!k§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §!!s§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§6[§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §7!-§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §[!k§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§?n§.push(_loc8_);
            _loc3_++;
         }
         this.§>!$§ = _loc2_.slingshotX;
         this.§]!l§ = _loc2_.slingshotY;
      }
      
      public function §%!d§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§82§;
         _loc1_.scoreSilver = this.§6!H§;
         _loc1_.scoreGold = this.§9>§;
         _loc1_.scoreEagle = this.§5`§;
         _loc1_.theme = this.§,A§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§6[§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§?n§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§?n§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2^§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§2^§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§?n§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§2^§.length;
         _loc1_.slingshotX = this.§>!$§;
         _loc1_.slingshotY = this.§]!l§;
         return _loc1_;
      }
      
      public function §4!E§() : String
      {
         return JSON.stringify(this.§%!d§());
      }
      
      public function §]+§() : int
      {
         var _loc2_:§[!k§ = null;
         var _loc3_:String = null;
         var _loc4_:§]!@§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?n§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §1!!§.§#P§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §1!!§.§#P§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§'c§(_loc4_))
               {
                  _loc1_ += _loc4_.§1!s§ * §7E§.§5X§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §7!]§() : XML
      {
         var _loc2_:§!!s§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§82§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§#6§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§6!H§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§9>§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§6[§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + § !U§.SCREEN_HEIGHT_B2) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.mBirds.length)
         {
            _loc1_ += "  <Bird id=\"" + this.mBirds[_loc3_].id + "\" x=\"" + this.mBirds[_loc3_].x + "\" y=\"" + this.mBirds[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§?n§.length)
         {
            _loc1_ += "<Item id=\"" + this.§?n§[_loc3_].id + "\" x=\"" + this.§?n§[_loc3_].x + "\" y=\"" + this.§?n§[_loc3_].y + "\" rotation=\"" + this.§?n§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §[!k§
      {
         return this.§?n§[param1];
      }
      
      public function addObject(param1:§[!k§) : void
      {
         this.§?n§.push(param1);
      }
      
      public function §'N§(param1:int) : §[F§
      {
         return this.§2^§[param1];
      }
      
      public function §"g§(param1:§[F§) : void
      {
         this.§2^§.push(param1);
      }
      
      public function §`R§(param1:int) : §7!-§
      {
         return this.mBirds[param1];
      }
      
      public function §1!T§(param1:§7!-§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §7!q§() : void
      {
         this.§6[§ = new Vector.<§!!s§>();
      }
      
      public function §";§() : void
      {
         this.mBirds = new Vector.<§7!-§>();
      }
      
      public function getCamera(param1:int) : §!!s§
      {
         return this.§6[§[param1];
      }
      
      public function §,!j§(param1:§!!s§) : void
      {
         this.§6[§.push(param1);
      }
   }
}
