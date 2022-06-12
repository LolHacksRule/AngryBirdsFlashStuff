package §=%§
{
   import § ""§.§ 9§;
   import § ""§.§4!n§;
   import §%!W§.§2G§;
   import §1!z§.b2Mat22;
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §5!]§.b2Shape;
   import §7!q§.b2Body;
   import §8!E§.§'4§;
   import §8!E§.§1!6§;
   import §8!E§.§?!X§;
   import §?"&§.§"!q§;
   import §?"&§.§5b§;
   import §`"2§.§6!,§;
   import §`L§.§-;§;
   import §`L§.DisplayObject;
   import §`L§.DisplayObjectContainer;
   import §`L§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §<A§
   {
      
      private static var §>>§:Dictionary = new Dictionary(true);
       
      
      private var §4"3§:Object;
      
      public function §<A§()
      {
         super();
      }
      
      public static function §4"1§(param1:§5b§) : void
      {
         var _loc4_:§<A§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §>>§)
         {
            _loc4_.§%i§(param1);
            if(_loc4_.§4"3§)
            {
               _loc2_[_loc4_.§4"3§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §>>§ = _loc2_;
      }
      
      public static function §5y§(param1:*) : §<A§
      {
         var _loc2_:§<A§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§>>§[param1] == undefined)
         {
            _loc2_ = new §<A§();
            _loc2_.§4"3§ = param1;
            §>>§[param1] = _loc2_;
         }
         return §>>§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).getBody().§"!2§(param1);
         }
         else if(this.§4"3§ is §'4§)
         {
            (this.§4"3§ as §'4§).setPosition(param1.x,param1.y);
         }
         else if(this.§4"3§ is §1!6§)
         {
            (this.§4"3§ as §1!6§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§4"3§ is §"!q§ && (this.§4"3§ as §"!q§).isGround();
      }
      
      public function §-E§() : Boolean
      {
         return this.§4"3§ is §"!q§ && ((this.§4"3§ as §"!q§).§-E§() || (this.§4"3§ as §"!q§).isMiscBlock());
      }
      
      public function §0"1§() : Boolean
      {
         return this.§4"3§ is §"!q§ && (this.§4"3§ as §"!q§).§0"1§();
      }
      
      public function §^!u§() : Boolean
      {
         return this.§4"3§ is §'4§;
      }
      
      public function § !f§() : Boolean
      {
         return this.§4"3§ is §1!6§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4"3§ is §"!q§ && (this.§4"3§ as §"!q§).isTexture();
      }
      
      public function §5!3§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§"!q§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§'4§ = null;
         var _loc8_:§1!6§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§4"3§ is §"!q§)
         {
            if(_loc6_ = (_loc5_ = this.§4"3§ as §"!q§).getBody())
            {
               _loc4_ = _loc6_.GetFixtureList().GetShape();
               _loc3_ = _loc5_.getBody().§4!f§();
               _loc2_ = §2G§.§=!$§(_loc4_,_loc3_);
            }
         }
         else if(this.§4"3§ is §'4§)
         {
            _loc7_ = this.§4"3§ as §'4§;
            _loc4_ = §4!n§.§]4§(_loc7_.name).shape.§,!9§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §2G§.§=!$§(_loc4_,_loc3_);
         }
         else if(this.§4"3§ is §1!6§)
         {
            _loc8_ = this.§4"3§ as §1!6§;
            _loc4_ = § 9§.§%!N§("SLINGSHOT_SHAPE").§,!9§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §2G§.§=!$§(_loc4_,_loc3_);
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
         var _loc1_:§"!q§ = null;
         var _loc2_:Rectangle = null;
         if(this.§4"3§ is §"!q§)
         {
            _loc1_ = this.§4"3§ as §"!q§;
            return §2G§.§5_§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§4!f§());
         }
         _loc2_ = this.§5!3§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §@"?§() : b2Vec2
      {
         var _loc1_:§"!q§ = null;
         if(this.§4"3§ is §"!q§)
         {
            _loc1_ = this.§4"3§ as §"!q§;
            return §2G§.§@"?§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§4!f§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§?!X§, param2:Number = 0, param3:Number = 0) : §<A§
      {
         var _loc4_:§"!q§ = null;
         var _loc5_:§<A§ = null;
         var _loc6_:§'4§ = null;
         if(this.§4"3§ is §"!q§)
         {
            _loc4_ = this.§4"3§ as §"!q§;
            return §5y§(param1.objects.addObject(_loc4_.§=!+§,_loc4_.§&!V§ + param2,_loc4_.§%!g§ + param3,_loc4_.§#!q§(),false,false,true,1,false));
         }
         if(this.§4"3§ is §'4§)
         {
            _loc6_ = this.§4"3§ as §'4§;
            return §5y§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§4"3§;
      }
      
      public function §#!q§() : Number
      {
         return this.§1!U§().GetAngle();
      }
      
      public function §@!0§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§1!U§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §1!U§() : b2Transform
      {
         if(this.§4"3§ is §"!q§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§4"3§ as §"!q§).getBody().§4!f§().position.Copy(),(this.§4"3§ as §"!q§).getBody().§4!f§().R.Copy());
         }
         if(this.§4"3§ is §'4§)
         {
            return new b2Transform(new b2Vec2((this.§4"3§ as §'4§).x,(this.§4"3§ as §'4§).y),new b2Mat22());
         }
         if(this.§4"3§ is §1!6§)
         {
            return new b2Transform(new b2Vec2((this.§4"3§ as §1!6§).mX,(this.§4"3§ as §1!6§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §;!b§(param1:b2Transform) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).getBody().§"G§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§4"3§ is §'4§)
         {
            (this.§4"3§ as §'4§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§4"3§ is §1!6§)
         {
            (this.§4"3§ as §1!6§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).getBody();
         }
         return null;
      }
      
      public function §5!;§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§4"3§ is §"!q§ && !(this.§4"3§ as §"!q§).isGround())
         {
            this.§;!g§(param1,(this.§4"3§ as §"!q§).§!!8§.§7"7§());
         }
         else if(this.§4"3§ is §'4§)
         {
            this.§;!g§(param1,(this.§4"3§ as §'4§).§7"7§());
         }
         else if(this.§4"3§ is §1!6§)
         {
            _loc2_ = (this.§4"3§ as §1!6§).§<s§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§;!g§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §;!g§(param1:Boolean, param2:§-;§) : void
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
      
      public function §+0§(param1:Number, param2:Point) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).§+0§(param1,param2);
         }
      }
      
      public function §+!e§() : String
      {
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).§5U§.shape.mName;
         }
         return null;
      }
      
      public function §[Z§() : String
      {
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).§5U§.material.mName;
         }
         return null;
      }
      
      public function §4!,§(param1:b2Vec2) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).§^!6§(param1);
            (this.§4"3§ as §"!q§).getBody().SetAwake(true);
         }
      }
      
      public function §extends§() : Boolean
      {
         if(this.§4"3§ is §"!q§)
         {
            return !(this.§4"3§ as §"!q§).getBody().IsAwake() || !(this.§4"3§ as §"!q§).getBody().§"?§();
         }
         return true;
      }
      
      public function §%!E§() : Boolean
      {
         if(this.§4"3§ is §"!q§)
         {
            return this.§4"3§.getBody() && (this.§4"3§ as §"!q§).getBody().§"?§();
         }
         return true;
      }
      
      public function §3!A§(param1:Boolean) : void
      {
         if(this.§4"3§ is §"!q§ && this.§4"3§.getBody())
         {
            (this.§4"3§ as §"!q§).getBody().§8!<§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).§=!+§;
         }
         if(this.§4"3§ is §'4§)
         {
            return (this.§4"3§ as §'4§).name;
         }
         if(this.§4"3§ is §1!6§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §^i§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§4"3§ is §"!q§)
         {
            _loc3_ = (this.§4"3§ as §"!q§).sprite.parent;
            _loc4_ = (this.§4"3§ as §"!q§).sprite;
         }
         else if(this.§4"3§ is §'4§)
         {
            _loc3_ = (this.§4"3§ as §'4§).sprite.parent;
            _loc4_ = (this.§4"3§ as §'4§).sprite;
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
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).uniqueID = param1;
         }
      }
      
      public function §?]§() : Sprite
      {
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).sprite;
         }
         if(this.§4"3§ is §'4§)
         {
            return (this.§4"3§ as §'4§).sprite;
         }
         if(this.§4"3§ is §1!6§)
         {
            return (this.§4"3§ as §1!6§).sprite;
         }
         return null;
      }
      
      public function §0h§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§4"3§ is §"!q§)
         {
            _loc1_ = this.§@!0§();
            return (this.§4"3§ as §"!q§).container.§7!;§.§6!;§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function § "=§() : Number
      {
         var _loc1_:Number = this.§?]§().rotation;
         this.§?]§().rotation = 0;
         var _loc2_:Number = this.§?]§().width;
         this.§?]§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §>!F§() : Number
      {
         var _loc1_:Number = this.§?]§().rotation;
         this.§?]§().rotation = 0;
         var _loc2_:Number = this.§?]§().height;
         this.§?]§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §^";§() : void
      {
         if(this.§4"3§ is §"!q§)
         {
         }
      }
      
      public function §2!6§(param1:Number) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).§`X§ = param1;
         }
      }
      
      public function §+!W§() : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).§`X§ = (this.§4"3§ as §"!q§).§&<§;
         }
      }
      
      public function §7"7§() : Bitmap
      {
         var _loc1_:BitmapData = §6!,§.§7!?§.§!!k§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §1O§() : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).dispose();
         }
      }
      
      public function §!!F§() : Boolean
      {
         return this.§4"3§ is §"!q§ && (this.§4"3§ as §"!q§).isMiscBlock();
      }
      
      public function §#<§() : void
      {
         var _loc2_:b2Vec2 = this.§@!0§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§"!2§(_loc2_);
      }
      
      public function §7" §() : Boolean
      {
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).getBody() == null;
         }
         return false;
      }
      
      private function §%i§(param1:§5b§) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            if(this.isGround())
            {
               this.§4"3§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§4"3§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§4"3§ is §"!q§)
         {
            (this.§4"3§ as §"!q§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§7" §())
         {
            return false;
         }
         if(this.§4"3§ is §"!q§)
         {
            return (this.§4"3§ as §"!q§).sprite.visible;
         }
         return true;
      }
   }
}
