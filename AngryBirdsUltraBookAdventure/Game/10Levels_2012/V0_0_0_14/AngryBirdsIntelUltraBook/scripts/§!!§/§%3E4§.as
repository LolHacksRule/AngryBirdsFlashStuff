package §!!§
{
   import §!!X§.§&!E§;
   import §+&§.§-!7§;
   import §<$§.*;
   import §=!7§.§,F§;
   import §=!7§.§-!`§;
   import §=!7§.§`c§;
   import §>o§.§+!4§;
   import §>o§.§8!4§;
   import flash.geom.Point;
   
   public class §>4§
   {
      
      public static const §7H§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §`Z§:Number = 0;
      
      public var §;!>§:Number = -8;
      
      private var §0!i§:Vector.<§,F§> = null;
      
      private var §9q§:Vector.<§`c§> = null;
      
      private var §<?§:Vector.<§-!`§> = null;
      
      private var §6#§:Vector.<§->§> = null;
      
      public var §-!n§:Number = 0;
      
      public var §`L§:Boolean = false;
      
      public var §^T§:int = 0;
      
      public var §6t§:int = 0;
      
      private var §]! §:int = 0;
      
      private var §9o§:String = null;
      
      public var mName:String = null;
      
      public function §>4§()
      {
         super();
         this.§6#§ = new Vector.<§->§>();
         this.§0!i§ = new Vector.<§,F§>();
         this.§9q§ = new Vector.<§`c§>();
         this.§<?§ = new Vector.<§-!`§>();
         this.§9o§ = §7H§;
      }
      
      public static function §1>§(param1:String) : §>4§
      {
         var _loc2_:§>4§ = new §>4§();
         _loc2_.§ !&§(param1);
         return _loc2_;
      }
      
      public static function §8s§(param1:§8!4§) : Boolean
      {
         if(param1.§ W§ == §8!4§.§+!§ || param1.§ W§ == §8!4§.§97§ || param1.§ W§ == §8!4§.§+!#§)
         {
            return true;
         }
         return false;
      }
      
      public static function §0!;§(param1:String) : §>4§
      {
         var _loc2_:§>4§ = §1>§(param1);
         _loc2_.§`Z§ = _loc2_.§9q§[0].x;
         _loc2_.§;!>§ = _loc2_.§9q§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§0!i§.length)
         {
            _loc2_.§0!i§[_loc3_].angle = 360 - _loc2_.§0!i§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §;8§(param1:int, param2:Object) : Vector.<§-!`§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-!`§ = null;
         var _loc3_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §-!`§.§5h§ || _loc5_.type == §-!`§.§+!]§)
               {
                  _loc8_ = new §-!`§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §-!`§.§+!]§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §-!`§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §-!`§.§,_§)
               {
                  _loc8_.§;!4§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §"X§() : int
      {
         return this.§0!i§.length;
      }
      
      public function get §3!l§() : int
      {
         return this.§<?§.length;
      }
      
      public function get §%o§() : int
      {
         return this.§9q§.length;
      }
      
      public function get §5d§() : int
      {
         return this.§6#§.length;
      }
      
      public function get theme() : String
      {
         return this.§9o§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§9o§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§6!§();
         if(_loc1_ > 0 && _loc1_ < this.§]! §)
         {
            return _loc1_;
         }
         if(this.§]! § == 0)
         {
            return _loc1_;
         }
         return this.§]! §;
      }
      
      public function §2M§(param1:int) : void
      {
         var _loc2_:int = this.§6!§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§]! § = param1;
      }
      
      public function § !&§(param1:String) : void
      {
         var _loc4_:§->§ = null;
         var _loc5_:Object = null;
         var _loc6_:§`c§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§,F§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§-!n§ = _loc2_.LevelExtension;
         this.§`L§ = false;
         this.§^T§ = _loc2_.scoreSilver;
         this.§6t§ = _loc2_.scoreGold;
         this.§]! § = _loc2_.scoreEagle;
         this.§9o§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§<?§ = §;8§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§6#§ = new Vector.<§->§>();
         this.§9q§ = new Vector.<§`c§>();
         this.§0!i§ = new Vector.<§,F§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §->§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§6#§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §`c§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§9q§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §,F§()).x = _loc8_.x;
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
            this.§0!i§.push(_loc9_);
            _loc3_++;
         }
         this.§`Z§ = _loc2_.slingshotX;
         this.§;!>§ = _loc2_.slingshotY;
      }
      
      public function § !C§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§-!n§;
         _loc1_.scoreSilver = this.§^T§;
         _loc1_.scoreGold = this.§6t§;
         _loc1_.scoreEagle = this.§]! §;
         _loc1_.theme = this.§9o§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§6#§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§9q§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§9q§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0!i§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§0!i§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§<?§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§<?§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§0!i§.length;
         _loc1_.counts.birds = this.§9q§.length;
         _loc1_.counts.joints = this.§<?§.length;
         _loc1_.slingshotX = this.§`Z§;
         _loc1_.slingshotY = this.§;!>§;
         return _loc1_;
      }
      
      public function §1!b§() : String
      {
         return JSON.stringify(this.§ !C§());
      }
      
      public function §6!§() : int
      {
         var _loc2_:§,F§ = null;
         var _loc3_:String = null;
         var _loc4_:§8!4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!i§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §+!4§.§ !`§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §+!4§.§ !`§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§8s§(_loc4_))
               {
                  _loc1_ += _loc4_.§0K§ * §-!7§.§>!%§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §#G§() : XML
      {
         var _loc2_:§->§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§-!n§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§`L§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§^T§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§6t§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§6#§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §&!E§.§#!b§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§9q§[0].x + "\" y=\"" + (this.§9q§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§9q§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§9q§[_loc3_].id + "\" x=\"" + this.§9q§[_loc3_].x + "\" y=\"" + this.§9q§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§0!i§.length)
         {
            _loc1_ += "<Item id=\"" + this.§0!i§[_loc3_].id + "\" x=\"" + this.§0!i§[_loc3_].x + "\" y=\"" + this.§0!i§[_loc3_].y + "\" rotation=\"" + this.§0!i§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §^k§(param1:int) : §,F§
      {
         return this.§0!i§[param1];
      }
      
      public function addObject(param1:§,F§) : void
      {
         this.§0!i§.push(param1);
      }
      
      public function §',§(param1:int) : §-!`§
      {
         return this.§<?§[param1];
      }
      
      public function §9!h§(param1:§-!`§) : void
      {
         this.§<?§.push(param1);
      }
      
      public function §<-§(param1:int) : §`c§
      {
         return this.§9q§[param1];
      }
      
      public function §]!!§(param1:§`c§) : void
      {
         this.§9q§.push(param1);
      }
      
      public function §!I§() : void
      {
         this.§6#§ = new Vector.<§->§>();
      }
      
      public function §-!P§() : void
      {
         this.§9q§ = new Vector.<§`c§>();
      }
      
      public function §?!H§(param1:int) : §->§
      {
         return this.§6#§[param1];
      }
      
      public function §0h§(param1:§->§) : void
      {
         this.§6#§.push(param1);
      }
   }
}
