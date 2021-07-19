package §7t§
{
   import §"J§.b2Body;
   import §%!0§.§%Q§;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §&!P§.§^!!§;
   import §&!P§.§``§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   import §+!-§.Sprite;
   import §2k§.b2Shape;
   import §6!A§.§%l§;
   import §;"7§.§="<§;
   import §<!a§.b2Mat22;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §]";§.§!<§;
   import §]";§.§`!o§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7a§
   {
      
      private static var §4D§:Dictionary = new Dictionary(true);
       
      
      private var §,E§:Object;
      
      public function §7a§()
      {
         super();
      }
      
      public static function §3!G§(param1:§^!!§) : void
      {
         var _loc4_:§7a§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §4D§)
         {
            _loc4_.§'"+§(param1);
            if(_loc4_.§,E§)
            {
               _loc2_[_loc4_.§,E§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §4D§ = _loc2_;
      }
      
      public static function §^!g§(param1:*) : §7a§
      {
         var _loc2_:§7a§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§4D§[param1] == undefined)
         {
            _loc2_ = new §7a§();
            _loc2_.§,E§ = param1;
            §4D§[param1] = _loc2_;
         }
         return §4D§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).getBody().§8" §(param1);
         }
         else if(this.§,E§ is §%Q§)
         {
            (this.§,E§ as §%Q§).setPosition(param1.x,param1.y);
         }
         else if(this.§,E§ is §3"!§)
         {
            (this.§,E§ as §3"!§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§,E§ is §``§ && (this.§,E§ as §``§).isGround();
      }
      
      public function §^_§() : Boolean
      {
         return this.§,E§ is §``§ && ((this.§,E§ as §``§).§^_§() || (this.§,E§ as §``§).isMiscBlock());
      }
      
      public function §>!r§() : Boolean
      {
         return this.§,E§ is §``§ && (this.§,E§ as §``§).§>!r§();
      }
      
      public function §'5§() : Boolean
      {
         return this.§,E§ is §%Q§;
      }
      
      public function §"!C§() : Boolean
      {
         return this.§,E§ is §3"!§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§,E§ is §``§ && (this.§,E§ as §``§).isTexture();
      }
      
      public function §&8§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§``§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§%Q§ = null;
         var _loc8_:§3"!§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§,E§ is §``§)
         {
            if(_loc6_ = (_loc5_ = this.§,E§ as §``§).getBody())
            {
               _loc4_ = _loc6_.GetFixtureList().GetShape();
               _loc3_ = _loc5_.getBody().§60§();
               _loc2_ = §%l§.§4!'§(_loc4_,_loc3_);
            }
         }
         else if(this.§,E§ is §%Q§)
         {
            _loc7_ = this.§,E§ as §%Q§;
            _loc4_ = §!<§.§[!@§(_loc7_.name).shape.§!Q§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §%l§.§4!'§(_loc4_,_loc3_);
         }
         else if(this.§,E§ is §3"!§)
         {
            _loc8_ = this.§,E§ as §3"!§;
            _loc4_ = §`!o§.§0! §("SLINGSHOT_SHAPE").§!Q§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §%l§.§4!'§(_loc4_,_loc3_);
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
         var _loc1_:§``§ = null;
         var _loc2_:Rectangle = null;
         if(this.§,E§ is §``§)
         {
            _loc1_ = this.§,E§ as §``§;
            return §%l§.§]!^§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§60§());
         }
         _loc2_ = this.§&8§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §[t§() : b2Vec2
      {
         var _loc1_:§``§ = null;
         if(this.§,E§ is §``§)
         {
            _loc1_ = this.§,E§ as §``§;
            return §%l§.§[t§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§60§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§,4§, param2:Number = 0, param3:Number = 0) : §7a§
      {
         var _loc4_:§``§ = null;
         var _loc5_:§7a§ = null;
         var _loc6_:§%Q§ = null;
         if(this.§,E§ is §``§)
         {
            _loc4_ = this.§,E§ as §``§;
            return §^!g§(param1.objects.addObject(_loc4_.§+!A§,_loc4_.§#n§ + param2,_loc4_.§?y§ + param3,_loc4_.§?"1§(),false,false,true,1,false));
         }
         if(this.§,E§ is §%Q§)
         {
            _loc6_ = this.§,E§ as §%Q§;
            return §^!g§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§,E§;
      }
      
      public function §?"1§() : Number
      {
         return this.§3z§().GetAngle();
      }
      
      public function §]5§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§3z§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §3z§() : b2Transform
      {
         if(this.§,E§ is §``§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§,E§ as §``§).getBody().§60§().position.Copy(),(this.§,E§ as §``§).getBody().§60§().R.Copy());
         }
         if(this.§,E§ is §%Q§)
         {
            return new b2Transform(new b2Vec2((this.§,E§ as §%Q§).x,(this.§,E§ as §%Q§).y),new b2Mat22());
         }
         if(this.§,E§ is §3"!§)
         {
            return new b2Transform(new b2Vec2((this.§,E§ as §3"!§).mX,(this.§,E§ as §3"!§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §9!c§(param1:b2Transform) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).getBody().§4!D§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§,E§ is §%Q§)
         {
            (this.§,E§ as §%Q§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§,E§ is §3"!§)
         {
            (this.§,E§ as §3"!§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).getBody();
         }
         return null;
      }
      
      public function §,"=§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§,E§ is §``§ && !(this.§,E§ as §``§).isGround())
         {
            this.§>!Q§(param1,(this.§,E§ as §``§).§8C§.§-W§());
         }
         else if(this.§,E§ is §%Q§)
         {
            this.§>!Q§(param1,(this.§,E§ as §%Q§).§-W§());
         }
         else if(this.§,E§ is §3"!§)
         {
            _loc2_ = (this.§,E§ as §3"!§).§=B§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§>!Q§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §>!Q§(param1:Boolean, param2:§7"#§) : void
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
      
      public function §>"?§(param1:Number, param2:Point) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).§>"?§(param1,param2);
         }
      }
      
      public function §!!;§() : String
      {
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).§4";§.shape.mName;
         }
         return null;
      }
      
      public function §6x§() : String
      {
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).§4";§.material.mName;
         }
         return null;
      }
      
      public function §<!H§(param1:b2Vec2) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).§;E§(param1);
            (this.§,E§ as §``§).getBody().SetAwake(true);
         }
      }
      
      public function §=J§() : Boolean
      {
         if(this.§,E§ is §``§)
         {
            return !(this.§,E§ as §``§).getBody().IsAwake() || !(this.§,E§ as §``§).getBody().§0!9§();
         }
         return true;
      }
      
      public function §!9§() : Boolean
      {
         if(this.§,E§ is §``§)
         {
            return this.§,E§.getBody() && (this.§,E§ as §``§).getBody().§0!9§();
         }
         return true;
      }
      
      public function §0">§(param1:Boolean) : void
      {
         if(this.§,E§ is §``§ && this.§,E§.getBody())
         {
            (this.§,E§ as §``§).getBody().§=T§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).§+!A§;
         }
         if(this.§,E§ is §%Q§)
         {
            return (this.§,E§ as §%Q§).name;
         }
         if(this.§,E§ is §3"!§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §#!1§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§,E§ is §``§)
         {
            _loc3_ = (this.§,E§ as §``§).sprite.parent;
            _loc4_ = (this.§,E§ as §``§).sprite;
         }
         else if(this.§,E§ is §%Q§)
         {
            _loc3_ = (this.§,E§ as §%Q§).sprite.parent;
            _loc4_ = (this.§,E§ as §%Q§).sprite;
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
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).uniqueID = param1;
         }
      }
      
      public function §#!Q§() : Sprite
      {
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).sprite;
         }
         if(this.§,E§ is §%Q§)
         {
            return (this.§,E§ as §%Q§).sprite;
         }
         if(this.§,E§ is §3"!§)
         {
            return (this.§,E§ as §3"!§).sprite;
         }
         return null;
      }
      
      public function §!3§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§,E§ is §``§)
         {
            _loc1_ = this.§]5§();
            return (this.§,E§ as §``§).container.§`!G§.§4!5§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §;,§() : Number
      {
         var _loc1_:Number = this.§#!Q§().rotation;
         this.§#!Q§().rotation = 0;
         var _loc2_:Number = this.§#!Q§().width;
         this.§#!Q§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §=7§() : Number
      {
         var _loc1_:Number = this.§#!Q§().rotation;
         this.§#!Q§().rotation = 0;
         var _loc2_:Number = this.§#!Q§().height;
         this.§#!Q§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §8!b§() : void
      {
         if(this.§,E§ is §``§)
         {
         }
      }
      
      public function §+!0§(param1:Number) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).§8W§ = param1;
         }
      }
      
      public function §2_§() : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).§8W§ = (this.§,E§ as §``§).§%5§;
         }
      }
      
      public function §-W§() : Bitmap
      {
         var _loc1_:BitmapData = §="<§.§[E§.§`d§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §!!Z§() : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).dispose();
         }
      }
      
      public function §0"&§() : Boolean
      {
         return this.§,E§ is §``§ && (this.§,E§ as §``§).isMiscBlock();
      }
      
      public function §;!>§() : void
      {
         var _loc2_:b2Vec2 = this.§]5§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§8" §(_loc2_);
      }
      
      public function §@Z§() : Boolean
      {
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).getBody() == null;
         }
         return false;
      }
      
      private function §'"+§(param1:§^!!§) : void
      {
         if(this.§,E§ is §``§)
         {
            if(this.isGround())
            {
               this.§,E§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§,E§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§,E§ is §``§)
         {
            (this.§,E§ as §``§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§@Z§())
         {
            return false;
         }
         if(this.§,E§ is §``§)
         {
            return (this.§,E§ as §``§).sprite.visible;
         }
         return true;
      }
   }
}
