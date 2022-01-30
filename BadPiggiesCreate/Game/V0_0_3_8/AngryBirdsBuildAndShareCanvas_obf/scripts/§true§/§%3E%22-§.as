package §true§
{
   import § !V§.§7!P§;
   import §%!&§.§'"-§;
   import §%!&§.§;!x§;
   import §%!<§.§,!R§;
   import §%!<§.§7V§;
   import §%h§.§5!K§;
   import §%h§.§5X§;
   import §%h§.§=$§;
   import §2!Q§.b2Shape;
   import §9v§.b2Mat22;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   import §]!2§.§,!n§;
   import §]!2§.DisplayObject;
   import §]!2§.DisplayObjectContainer;
   import §]!2§.Sprite;
   import §]!l§.§"E§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §>"-§
   {
      
      private static var §6"%§:Dictionary = new Dictionary(true);
       
      
      private var §3!=§:Object;
      
      public function §>"-§()
      {
         super();
      }
      
      public static function §%C§(param1:§'"-§) : void
      {
         var _loc4_:§>"-§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §6"%§)
         {
            _loc4_.§1!G§(param1);
            if(_loc4_.§3!=§)
            {
               _loc2_[_loc4_.§3!=§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §6"%§ = _loc2_;
      }
      
      public static function §0V§(param1:*) : §>"-§
      {
         var _loc2_:§>"-§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§6"%§[param1] == undefined)
         {
            _loc2_ = new §>"-§();
            _loc2_.§3!=§ = param1;
            §6"%§[param1] = _loc2_;
         }
         return §6"%§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).getBody().§#!V§(param1);
         }
         else if(this.§3!=§ is §5!K§)
         {
            (this.§3!=§ as §5!K§).setPosition(param1.x,param1.y);
         }
         else if(this.§3!=§ is §=$§)
         {
            (this.§3!=§ as §=$§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§3!=§ is §;!x§ && (this.§3!=§ as §;!x§).isGround();
      }
      
      public function §;!M§() : Boolean
      {
         return this.§3!=§ is §;!x§ && ((this.§3!=§ as §;!x§).§;!M§() || (this.§3!=§ as §;!x§).isMiscBlock());
      }
      
      public function §+q§() : Boolean
      {
         return this.§3!=§ is §;!x§ && (this.§3!=§ as §;!x§).§+q§();
      }
      
      public function §6!p§() : Boolean
      {
         return this.§3!=§ is §5!K§;
      }
      
      public function §,!-§() : Boolean
      {
         return this.§3!=§ is §=$§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§3!=§ is §;!x§ && (this.§3!=§ as §;!x§).isTexture();
      }
      
      public function §>!Q§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§;!x§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§5!K§ = null;
         var _loc8_:§=$§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§3!=§ is §;!x§)
         {
            if(_loc6_ = (_loc5_ = this.§3!=§ as §;!x§).getBody())
            {
               _loc4_ = _loc6_.§3!G§().GetShape();
               _loc3_ = _loc5_.getBody().§@w§();
               _loc2_ = §"E§.§0!3§(_loc4_,_loc3_);
            }
         }
         else if(this.§3!=§ is §5!K§)
         {
            _loc7_ = this.§3!=§ as §5!K§;
            _loc4_ = §7V§.§"!E§(_loc7_.name).shape.§"!`§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §"E§.§0!3§(_loc4_,_loc3_);
         }
         else if(this.§3!=§ is §=$§)
         {
            _loc8_ = this.§3!=§ as §=$§;
            _loc4_ = §,!R§.§9,§("SLINGSHOT_SHAPE").§"!`§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §"E§.§0!3§(_loc4_,_loc3_);
         }
         if(!param1)
         {
            _loc2_.x -= _loc3_.position.x;
            _loc2_.y -= _loc3_.position.y;
         }
         return _loc2_;
      }
      
      public function getCenter() : b2Vec2
      {
         var _loc1_:§;!x§ = null;
         var _loc2_:Rectangle = null;
         if(this.§3!=§ is §;!x§)
         {
            _loc1_ = this.§3!=§ as §;!x§;
            return §"E§.§4!L§(_loc1_.getBody().§3!G§().GetShape(),_loc1_.getBody().§@w§());
         }
         _loc2_ = this.§>!Q§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §6!i§() : b2Vec2
      {
         var _loc1_:§;!x§ = null;
         if(this.§3!=§ is §;!x§)
         {
            _loc1_ = this.§3!=§ as §;!x§;
            return §"E§.§6!i§(_loc1_.getBody().§3!G§().GetShape(),_loc1_.getBody().§@w§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§5X§, param2:Number = 0, param3:Number = 0) : §>"-§
      {
         var _loc4_:§;!x§ = null;
         var _loc5_:§>"-§ = null;
         var _loc6_:§5!K§ = null;
         if(this.§3!=§ is §;!x§)
         {
            _loc4_ = this.§3!=§ as §;!x§;
            return §0V§(param1.objects.addObject(_loc4_.§6u§,_loc4_.§^!Q§ + param2,_loc4_.§19§ + param3,_loc4_.§8!1§(),false,false,true,1,false));
         }
         if(this.§3!=§ is §5!K§)
         {
            _loc6_ = this.§3!=§ as §5!K§;
            return §0V§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§3!=§;
      }
      
      public function §8!1§() : Number
      {
         return this.§;w§().GetAngle();
      }
      
      public function §8K§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§;w§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §;w§() : b2Transform
      {
         if(this.§3!=§ is §;!x§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§3!=§ as §;!x§).getBody().§@w§().position.Copy(),(this.§3!=§ as §;!x§).getBody().§@w§().R.Copy());
         }
         if(this.§3!=§ is §5!K§)
         {
            return new b2Transform(new b2Vec2((this.§3!=§ as §5!K§).x,(this.§3!=§ as §5!K§).y),new b2Mat22());
         }
         if(this.§3!=§ is §=$§)
         {
            return new b2Transform(new b2Vec2((this.§3!=§ as §=$§).mX,(this.§3!=§ as §=$§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §4U§(param1:b2Transform) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).getBody().§'K§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§3!=§ is §5!K§)
         {
            (this.§3!=§ as §5!K§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§3!=§ is §=$§)
         {
            (this.§3!=§ as §=$§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).getBody();
         }
         return null;
      }
      
      public function §2"+§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§3!=§ is §;!x§ && !(this.§3!=§ as §;!x§).isGround())
         {
            this.§1!l§(param1,(this.§3!=§ as §;!x§).§+G§.§!!#§());
         }
         else if(this.§3!=§ is §5!K§)
         {
            this.§1!l§(param1,(this.§3!=§ as §5!K§).§!!#§());
         }
         else if(this.§3!=§ is §=$§)
         {
            _loc2_ = (this.§3!=§ as §=$§).§>§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§1!l§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §1!l§(param1:Boolean, param2:§,!n§) : void
      {
         if(param1)
         {
            param2.color = 11206570;
         }
         else
         {
            param2.color = 16777215;
         }
      }
      
      public function §7!L§(param1:Number, param2:Point) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).§7!L§(param1,param2);
         }
      }
      
      public function §4W§() : String
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).§8N§.shape.mName;
         }
         return null;
      }
      
      public function §^R§() : String
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).§8N§.material.mName;
         }
         return null;
      }
      
      public function §!!7§(param1:b2Vec2) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).§7!`§(param1);
            (this.§3!=§ as §;!x§).getBody().SetAwake(true);
         }
      }
      
      public function §6G§() : Boolean
      {
         if(this.§3!=§ is §;!x§)
         {
            return !(this.§3!=§ as §;!x§).getBody().IsAwake() || !(this.§3!=§ as §;!x§).getBody().§0!Q§();
         }
         return true;
      }
      
      public function §7@§() : Boolean
      {
         if(this.§3!=§ is §;!x§)
         {
            return this.§3!=§.getBody() && (this.§3!=§ as §;!x§).getBody().§0!Q§();
         }
         return true;
      }
      
      public function §;!d§(param1:Boolean) : void
      {
         if(this.§3!=§ is §;!x§ && this.§3!=§.getBody())
         {
            (this.§3!=§ as §;!x§).getBody().§^Q§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).§6u§;
         }
         if(this.§3!=§ is §5!K§)
         {
            return (this.§3!=§ as §5!K§).name;
         }
         if(this.§3!=§ is §=$§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §2"'§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§3!=§ is §;!x§)
         {
            _loc3_ = (this.§3!=§ as §;!x§).sprite.parent;
            _loc4_ = (this.§3!=§ as §;!x§).sprite;
         }
         else if(this.§3!=§ is §5!K§)
         {
            _loc3_ = (this.§3!=§ as §5!K§).sprite.parent;
            _loc4_ = (this.§3!=§ as §5!K§).sprite;
         }
         if(!_loc3_)
         {
            return;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         else if(param1 < -1)
         {
            param1 = -1;
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.numChildren)
         {
            if((_loc6_ = _loc3_.getChildAt(_loc5_)) == _loc4_)
            {
               _loc7_ = _loc3_.getChildIndex(_loc6_);
               if(!param2)
               {
                  _loc8_ = Math.min(_loc3_.numChildren - 1,_loc5_ + param1);
               }
               else
               {
                  _loc8_ = param1 == 1 ? int(_loc3_.numChildren - 1) : 0;
               }
               _loc3_.setChildIndex(_loc6_,_loc8_);
               break;
            }
            _loc5_++;
         }
      }
      
      public function get uniqueID() : String
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).uniqueID = param1;
         }
      }
      
      public function §2B§() : Sprite
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).sprite;
         }
         if(this.§3!=§ is §5!K§)
         {
            return (this.§3!=§ as §5!K§).sprite;
         }
         if(this.§3!=§ is §=$§)
         {
            return (this.§3!=§ as §=$§).sprite;
         }
         return null;
      }
      
      public function §46§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§3!=§ is §;!x§)
         {
            _loc1_ = this.§8K§();
            return (this.§3!=§ as §;!x§).container.§>"2§.§'W§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §%!Y§() : Number
      {
         var _loc1_:Number = this.§2B§().rotation;
         this.§2B§().rotation = 0;
         var _loc2_:Number = this.§2B§().width;
         this.§2B§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §0!R§() : Number
      {
         var _loc1_:Number = this.§2B§().rotation;
         this.§2B§().rotation = 0;
         var _loc2_:Number = this.§2B§().height;
         this.§2B§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §#e§() : void
      {
         if(this.§3!=§ is §;!x§)
         {
         }
      }
      
      public function §8"!§(param1:Number) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).§^!n§ = param1;
         }
      }
      
      public function §[!V§() : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).§^!n§ = (this.§3!=§ as §;!x§).§?!`§;
         }
      }
      
      public function §!!#§() : Bitmap
      {
         var _loc1_:BitmapData = §7!P§.§9j§.§+"#§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §22§() : void
      {
         if(this.§3!=§ is §;!x§)
         {
            (this.§3!=§ as §;!x§).dispose();
         }
      }
      
      public function §[!,§() : Boolean
      {
         return this.§3!=§ is §;!x§ && (this.§3!=§ as §;!x§).isMiscBlock();
      }
      
      public function §<0§() : void
      {
         var _loc2_:b2Vec2 = this.§8K§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§#!V§(_loc2_);
      }
      
      public function §3'§() : Boolean
      {
         if(this.§3!=§ is §;!x§)
         {
            return (this.§3!=§ as §;!x§).§^!n§ <= 0;
         }
         return false;
      }
      
      private function §1!G§(param1:§'"-§) : void
      {
         if(this.§3!=§ is §;!x§)
         {
            if(this.isGround())
            {
               this.§3!=§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§3!=§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
   }
}
