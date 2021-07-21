package §7r§
{
   import §"!9§.b2Shape;
   import §&"5§.§7!P§;
   import §+!o§.§?"-§;
   import §+!o§.§]"5§;
   import §+S§.b2Body;
   import §,a§.§3g§;
   import §,a§.§<!m§;
   import §2"=§.b2Mat22;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§>n§;
   import §5!V§.§[!6§;
   import §6" §.§&l§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   import §default§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §=q§
   {
      
      private static var §@!p§:Dictionary = new Dictionary(true);
       
      
      private var §;6§:Object;
      
      public function §=q§()
      {
         super();
      }
      
      public static function §+!2§(param1:§?"-§) : void
      {
         var _loc4_:§=q§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §@!p§)
         {
            _loc4_.§]!#§(param1);
            if(_loc4_.§;6§)
            {
               _loc2_[_loc4_.§;6§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §@!p§ = _loc2_;
      }
      
      public static function §0"§(param1:*) : §=q§
      {
         var _loc2_:§=q§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§@!p§[param1] == undefined)
         {
            _loc2_ = new §=q§();
            _loc2_.§;6§ = param1;
            §@!p§[param1] = _loc2_;
         }
         return §@!p§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).getBody().§>!W§(param1);
         }
         else if(this.§;6§ is §>n§)
         {
            (this.§;6§ as §>n§).setPosition(param1.x,param1.y);
         }
         else if(this.§;6§ is §[!6§)
         {
            (this.§;6§ as §[!6§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§;6§ is §]"5§ && (this.§;6§ as §]"5§).isGround();
      }
      
      public function §@!i§() : Boolean
      {
         return this.§;6§ is §]"5§ && ((this.§;6§ as §]"5§).§@!i§() || (this.§;6§ as §]"5§).isMiscBlock());
      }
      
      public function §]F§() : Boolean
      {
         return this.§;6§ is §]"5§ && (this.§;6§ as §]"5§).§]F§();
      }
      
      public function §9!^§() : Boolean
      {
         return this.§;6§ is §>n§;
      }
      
      public function § j§() : Boolean
      {
         return this.§;6§ is §[!6§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§;6§ is §]"5§ && (this.§;6§ as §]"5§).isTexture();
      }
      
      public function §]!&§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§]"5§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§>n§ = null;
         var _loc8_:§[!6§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§;6§ is §]"5§)
         {
            if(_loc6_ = (_loc5_ = this.§;6§ as §]"5§).getBody())
            {
               _loc4_ = _loc6_.GetFixtureList().GetShape();
               _loc3_ = _loc5_.getBody().§?^§();
               _loc2_ = §&l§.§5!4§(_loc4_,_loc3_);
            }
         }
         else if(this.§;6§ is §>n§)
         {
            _loc7_ = this.§;6§ as §>n§;
            _loc4_ = §<!m§.§"!F§(_loc7_.name).shape.§#!o§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §&l§.§5!4§(_loc4_,_loc3_);
         }
         else if(this.§;6§ is §[!6§)
         {
            _loc8_ = this.§;6§ as §[!6§;
            _loc4_ = §3g§.§7!U§("SLINGSHOT_SHAPE").§#!o§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §&l§.§5!4§(_loc4_,_loc3_);
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
         var _loc1_:§]"5§ = null;
         var _loc2_:Rectangle = null;
         if(this.§;6§ is §]"5§)
         {
            _loc1_ = this.§;6§ as §]"5§;
            return §&l§.§2i§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§?^§());
         }
         _loc2_ = this.§]!&§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §;j§() : b2Vec2
      {
         var _loc1_:§]"5§ = null;
         if(this.§;6§ is §]"5§)
         {
            _loc1_ = this.§;6§ as §]"5§;
            return §&l§.§;j§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§?^§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§!w§, param2:Number = 0, param3:Number = 0) : §=q§
      {
         var _loc4_:§]"5§ = null;
         var _loc5_:§=q§ = null;
         var _loc6_:§>n§ = null;
         if(this.§;6§ is §]"5§)
         {
            _loc4_ = this.§;6§ as §]"5§;
            return §0"§(param1.objects.addObject(_loc4_.§!F§,_loc4_.§?k§ + param2,_loc4_.§2!V§ + param3,_loc4_.§+!1§(),false,false,true,1,false));
         }
         if(this.§;6§ is §>n§)
         {
            _loc6_ = this.§;6§ as §>n§;
            return §0"§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§;6§;
      }
      
      public function §+!1§() : Number
      {
         return this.§[!M§().GetAngle();
      }
      
      public function §9!l§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§[!M§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §[!M§() : b2Transform
      {
         if(this.§;6§ is §]"5§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§;6§ as §]"5§).getBody().§?^§().position.Copy(),(this.§;6§ as §]"5§).getBody().§?^§().R.Copy());
         }
         if(this.§;6§ is §>n§)
         {
            return new b2Transform(new b2Vec2((this.§;6§ as §>n§).x,(this.§;6§ as §>n§).y),new b2Mat22());
         }
         if(this.§;6§ is §[!6§)
         {
            return new b2Transform(new b2Vec2((this.§;6§ as §[!6§).mX,(this.§;6§ as §[!6§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §=!J§(param1:b2Transform) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).getBody().§0">§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§;6§ is §>n§)
         {
            (this.§;6§ as §>n§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§;6§ is §[!6§)
         {
            (this.§;6§ as §[!6§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).getBody();
         }
         return null;
      }
      
      public function §&!c§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§;6§ is §]"5§ && !(this.§;6§ as §]"5§).isGround())
         {
            this.§7?§(param1,(this.§;6§ as §]"5§).§[!g§.§'!x§());
         }
         else if(this.§;6§ is §>n§)
         {
            this.§7?§(param1,(this.§;6§ as §>n§).§'!x§());
         }
         else if(this.§;6§ is §[!6§)
         {
            _loc2_ = (this.§;6§ as §[!6§).§ &§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§7?§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §7?§(param1:Boolean, param2:§=!Z§) : void
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
      
      public function §;"+§(param1:Number, param2:Point) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).§;"+§(param1,param2);
         }
      }
      
      public function §#v§() : String
      {
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).§+!y§.shape.mName;
         }
         return null;
      }
      
      public function §>!O§() : String
      {
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).§+!y§.material.mName;
         }
         return null;
      }
      
      public function §use§(param1:b2Vec2) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).§ !K§(param1);
            (this.§;6§ as §]"5§).getBody().SetAwake(true);
         }
      }
      
      public function §?I§() : Boolean
      {
         if(this.§;6§ is §]"5§)
         {
            return !(this.§;6§ as §]"5§).getBody().IsAwake() || !(this.§;6§ as §]"5§).getBody().§9!9§();
         }
         return true;
      }
      
      public function §%!0§() : Boolean
      {
         if(this.§;6§ is §]"5§)
         {
            return this.§;6§.getBody() && (this.§;6§ as §]"5§).getBody().§9!9§();
         }
         return true;
      }
      
      public function §9"'§(param1:Boolean) : void
      {
         if(this.§;6§ is §]"5§ && this.§;6§.getBody())
         {
            (this.§;6§ as §]"5§).getBody().§2!%§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).§!F§;
         }
         if(this.§;6§ is §>n§)
         {
            return (this.§;6§ as §>n§).name;
         }
         if(this.§;6§ is §[!6§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §0q§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§;6§ is §]"5§)
         {
            _loc3_ = (this.§;6§ as §]"5§).sprite.parent;
            _loc4_ = (this.§;6§ as §]"5§).sprite;
         }
         else if(this.§;6§ is §>n§)
         {
            _loc3_ = (this.§;6§ as §>n§).sprite.parent;
            _loc4_ = (this.§;6§ as §>n§).sprite;
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
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).uniqueID = param1;
         }
      }
      
      public function §7M§() : Sprite
      {
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).sprite;
         }
         if(this.§;6§ is §>n§)
         {
            return (this.§;6§ as §>n§).sprite;
         }
         if(this.§;6§ is §[!6§)
         {
            return (this.§;6§ as §[!6§).sprite;
         }
         return null;
      }
      
      public function § Q§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§;6§ is §]"5§)
         {
            _loc1_ = this.§9!l§();
            return (this.§;6§ as §]"5§).container.§9q§.§&g§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §=y§() : Number
      {
         var _loc1_:Number = this.§7M§().rotation;
         this.§7M§().rotation = 0;
         var _loc2_:Number = this.§7M§().width;
         this.§7M§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §-p§() : Number
      {
         var _loc1_:Number = this.§7M§().rotation;
         this.§7M§().rotation = 0;
         var _loc2_:Number = this.§7M§().height;
         this.§7M§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §21§() : void
      {
         if(this.§;6§ is §]"5§)
         {
         }
      }
      
      public function §'!^§(param1:Number) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).§@!P§ = param1;
         }
      }
      
      public function §1!Z§() : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).§@!P§ = (this.§;6§ as §]"5§).§'">§;
         }
      }
      
      public function §'!x§() : Bitmap
      {
         var _loc1_:BitmapData = §7!P§.§2=§.§"k§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §'!@§() : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).dispose();
         }
      }
      
      public function §8!w§() : Boolean
      {
         return this.§;6§ is §]"5§ && (this.§;6§ as §]"5§).isMiscBlock();
      }
      
      public function §]<§() : void
      {
         var _loc2_:b2Vec2 = this.§9!l§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§>!W§(_loc2_);
      }
      
      public function §&!5§() : Boolean
      {
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).getBody() == null;
         }
         return false;
      }
      
      private function §]!#§(param1:§?"-§) : void
      {
         if(this.§;6§ is §]"5§)
         {
            if(this.isGround())
            {
               this.§;6§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§;6§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§;6§ is §]"5§)
         {
            (this.§;6§ as §]"5§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§&!5§())
         {
            return false;
         }
         if(this.§;6§ is §]"5§)
         {
            return (this.§;6§ as §]"5§).sprite.visible;
         }
         return true;
      }
   }
}
