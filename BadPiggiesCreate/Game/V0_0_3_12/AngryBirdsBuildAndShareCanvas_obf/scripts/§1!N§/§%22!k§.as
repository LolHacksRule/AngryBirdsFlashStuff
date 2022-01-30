package §1!N§
{
   import §#?§.§%!O§;
   import §#?§.§`L§;
   import §&!M§.b2Body;
   import §,Y§.b2Shape;
   import §1!"§.§%9§;
   import §3!t§.b2Mat22;
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §4!#§.§60§;
   import §4!#§.§[R§;
   import §@!-§.§3"1§;
   import §@!i§.§%Q§;
   import §@!i§.DisplayObject;
   import §@!i§.DisplayObjectContainer;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   import §[B§.§,!f§;
   import §[B§.§^W§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §"!k§
   {
      
      private static var §`!,§:Dictionary = new Dictionary(true);
       
      
      private var §1!]§:Object;
      
      public function §"!k§()
      {
         super();
      }
      
      public static function §[k§(param1:§[R§) : void
      {
         var _loc4_:§"!k§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §`!,§)
         {
            _loc4_.§,"3§(param1);
            if(_loc4_.§1!]§)
            {
               _loc2_[_loc4_.§1!]§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §`!,§ = _loc2_;
      }
      
      public static function §2"5§(param1:*) : §"!k§
      {
         var _loc2_:§"!k§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§`!,§[param1] == undefined)
         {
            _loc2_ = new §"!k§();
            _loc2_.§1!]§ = param1;
            §`!,§[param1] = _loc2_;
         }
         return §`!,§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).getBody().§8!A§(param1);
         }
         else if(this.§1!]§ is §,!f§)
         {
            (this.§1!]§ as §,!f§).setPosition(param1.x,param1.y);
         }
         else if(this.§1!]§ is §^W§)
         {
            (this.§1!]§ as §^W§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§1!]§ is §60§ && (this.§1!]§ as §60§).isGround();
      }
      
      public function §2!A§() : Boolean
      {
         return this.§1!]§ is §60§ && ((this.§1!]§ as §60§).§2!A§() || (this.§1!]§ as §60§).isMiscBlock());
      }
      
      public function §&d§() : Boolean
      {
         return this.§1!]§ is §60§ && (this.§1!]§ as §60§).§&d§();
      }
      
      public function §&!d§() : Boolean
      {
         return this.§1!]§ is §,!f§;
      }
      
      public function §?"9§() : Boolean
      {
         return this.§1!]§ is §^W§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§1!]§ is §60§ && (this.§1!]§ as §60§).isTexture();
      }
      
      public function §#1§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§60§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§,!f§ = null;
         var _loc8_:§^W§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§1!]§ is §60§)
         {
            if(_loc6_ = (_loc5_ = this.§1!]§ as §60§).getBody())
            {
               _loc4_ = _loc6_.GetFixtureList().GetShape();
               _loc3_ = _loc5_.getBody().§=!y§();
               _loc2_ = §%9§.§=1§(_loc4_,_loc3_);
            }
         }
         else if(this.§1!]§ is §,!f§)
         {
            _loc7_ = this.§1!]§ as §,!f§;
            _loc4_ = §%!O§.§2<§(_loc7_.name).shape.§3!H§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §%9§.§=1§(_loc4_,_loc3_);
         }
         else if(this.§1!]§ is §^W§)
         {
            _loc8_ = this.§1!]§ as §^W§;
            _loc4_ = §`L§.§4@§("SLINGSHOT_SHAPE").§3!H§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §%9§.§=1§(_loc4_,_loc3_);
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
         var _loc1_:§60§ = null;
         var _loc2_:Rectangle = null;
         if(this.§1!]§ is §60§)
         {
            _loc1_ = this.§1!]§ as §60§;
            return §%9§.§;! §(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§=!y§());
         }
         _loc2_ = this.§#1§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §4&§() : b2Vec2
      {
         var _loc1_:§60§ = null;
         if(this.§1!]§ is §60§)
         {
            _loc1_ = this.§1!]§ as §60§;
            return §%9§.§4&§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§=!y§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§"d§, param2:Number = 0, param3:Number = 0) : §"!k§
      {
         var _loc4_:§60§ = null;
         var _loc5_:§"!k§ = null;
         var _loc6_:§,!f§ = null;
         if(this.§1!]§ is §60§)
         {
            _loc4_ = this.§1!]§ as §60§;
            return §2"5§(param1.objects.addObject(_loc4_.§%!t§,_loc4_.§5=§ + param2,_loc4_.§6!M§ + param3,_loc4_.§1o§(),false,false,true,1,false));
         }
         if(this.§1!]§ is §,!f§)
         {
            _loc6_ = this.§1!]§ as §,!f§;
            return §2"5§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§1!]§;
      }
      
      public function §1o§() : Number
      {
         return this.§#!p§().GetAngle();
      }
      
      public function §2d§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§#!p§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §#!p§() : b2Transform
      {
         if(this.§1!]§ is §60§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§1!]§ as §60§).getBody().§=!y§().position.Copy(),(this.§1!]§ as §60§).getBody().§=!y§().R.Copy());
         }
         if(this.§1!]§ is §,!f§)
         {
            return new b2Transform(new b2Vec2((this.§1!]§ as §,!f§).x,(this.§1!]§ as §,!f§).y),new b2Mat22());
         }
         if(this.§1!]§ is §^W§)
         {
            return new b2Transform(new b2Vec2((this.§1!]§ as §^W§).mX,(this.§1!]§ as §^W§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §%!x§(param1:b2Transform) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).getBody().§#d§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§1!]§ is §,!f§)
         {
            (this.§1!]§ as §,!f§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§1!]§ is §^W§)
         {
            (this.§1!]§ as §^W§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).getBody();
         }
         return null;
      }
      
      public function §>l§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§1!]§ is §60§ && !(this.§1!]§ as §60§).isGround())
         {
            this.§>W§(param1,(this.§1!]§ as §60§).§8!5§.§=_§());
         }
         else if(this.§1!]§ is §,!f§)
         {
            this.§>W§(param1,(this.§1!]§ as §,!f§).§=_§());
         }
         else if(this.§1!]§ is §^W§)
         {
            _loc2_ = (this.§1!]§ as §^W§).§6'§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§>W§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §>W§(param1:Boolean, param2:§%Q§) : void
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
      
      public function §?<§(param1:Number, param2:Point) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).§?<§(param1,param2);
         }
      }
      
      public function §`!f§() : String
      {
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).§=m§.shape.mName;
         }
         return null;
      }
      
      public function §-!y§() : String
      {
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).§=m§.material.mName;
         }
         return null;
      }
      
      public function §7"0§(param1:b2Vec2) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).§'!s§(param1);
            (this.§1!]§ as §60§).getBody().SetAwake(true);
         }
      }
      
      public function §?-§() : Boolean
      {
         if(this.§1!]§ is §60§)
         {
            return !(this.§1!]§ as §60§).getBody().IsAwake() || !(this.§1!]§ as §60§).getBody().§8!m§();
         }
         return true;
      }
      
      public function §!! §() : Boolean
      {
         if(this.§1!]§ is §60§)
         {
            return this.§1!]§.getBody() && (this.§1!]§ as §60§).getBody().§8!m§();
         }
         return true;
      }
      
      public function §>!B§(param1:Boolean) : void
      {
         if(this.§1!]§ is §60§ && this.§1!]§.getBody())
         {
            (this.§1!]§ as §60§).getBody().§-H§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).§%!t§;
         }
         if(this.§1!]§ is §,!f§)
         {
            return (this.§1!]§ as §,!f§).name;
         }
         if(this.§1!]§ is §^W§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §-+§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§1!]§ is §60§)
         {
            _loc3_ = (this.§1!]§ as §60§).sprite.parent;
            _loc4_ = (this.§1!]§ as §60§).sprite;
         }
         else if(this.§1!]§ is §,!f§)
         {
            _loc3_ = (this.§1!]§ as §,!f§).sprite.parent;
            _loc4_ = (this.§1!]§ as §,!f§).sprite;
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
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).uniqueID = param1;
         }
      }
      
      public function §'!%§() : Sprite
      {
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).sprite;
         }
         if(this.§1!]§ is §,!f§)
         {
            return (this.§1!]§ as §,!f§).sprite;
         }
         if(this.§1!]§ is §^W§)
         {
            return (this.§1!]§ as §^W§).sprite;
         }
         return null;
      }
      
      public function §"'§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§1!]§ is §60§)
         {
            _loc1_ = this.§2d§();
            return (this.§1!]§ as §60§).container.§]!3§.§!C§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §,!w§() : Number
      {
         var _loc1_:Number = this.§'!%§().rotation;
         this.§'!%§().rotation = 0;
         var _loc2_:Number = this.§'!%§().width;
         this.§'!%§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §'1§() : Number
      {
         var _loc1_:Number = this.§'!%§().rotation;
         this.§'!%§().rotation = 0;
         var _loc2_:Number = this.§'!%§().height;
         this.§'!%§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §7,§() : void
      {
         if(this.§1!]§ is §60§)
         {
         }
      }
      
      public function §9!F§(param1:Number) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).§2E§ = param1;
         }
      }
      
      public function §1!g§() : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).§2E§ = (this.§1!]§ as §60§).§<e§;
         }
      }
      
      public function §=_§() : Bitmap
      {
         var _loc1_:BitmapData = §3"1§.§ "!§.§!5§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §^!2§() : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).dispose();
         }
      }
      
      public function §1"&§() : Boolean
      {
         return this.§1!]§ is §60§ && (this.§1!]§ as §60§).isMiscBlock();
      }
      
      public function §!&§() : void
      {
         var _loc2_:b2Vec2 = this.§2d§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§8!A§(_loc2_);
      }
      
      public function §4!X§() : Boolean
      {
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).getBody() == null;
         }
         return false;
      }
      
      private function §,"3§(param1:§[R§) : void
      {
         if(this.§1!]§ is §60§)
         {
            if(this.isGround())
            {
               this.§1!]§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§1!]§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§1!]§ is §60§)
         {
            (this.§1!]§ as §60§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§4!X§())
         {
            return false;
         }
         if(this.§1!]§ is §60§)
         {
            return (this.§1!]§ as §60§).sprite.visible;
         }
         return true;
      }
   }
}
