package §%%§
{
   import §-!G§.b2Mat22;
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §3>§.§8!+§;
   import §3>§.§["!§;
   import §7q§.§0!§;
   import §7q§.DisplayObject;
   import §7q§.DisplayObjectContainer;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   import §<!j§.b2Shape;
   import §=9§.b2Body;
   import §=b§.§-!K§;
   import §=b§.§5?§;
   import §=b§.§8",§;
   import §?""§.§%#§;
   import §]r§.§2"%§;
   import §]r§.§9!R§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7!O§
   {
      
      private static var §36§:Dictionary = new Dictionary(true);
       
      
      private var §6f§:Object;
      
      public function §7!O§()
      {
         super();
      }
      
      public static function §`t§(param1:§2"%§) : void
      {
         var _loc4_:§7!O§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §36§)
         {
            _loc4_.§`j§(param1);
            if(_loc4_.§6f§)
            {
               _loc2_[_loc4_.§6f§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §36§ = _loc2_;
      }
      
      public static function §-n§(param1:*) : §7!O§
      {
         var _loc2_:§7!O§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§36§[param1] == undefined)
         {
            _loc2_ = new §7!O§();
            _loc2_.§6f§ = param1;
            §36§[param1] = _loc2_;
         }
         return §36§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).getBody().§3+§(param1);
         }
         else if(this.§6f§ is §8",§)
         {
            (this.§6f§ as §8",§).setPosition(param1.x,param1.y);
         }
         else if(this.§6f§ is §5?§)
         {
            (this.§6f§ as §5?§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§6f§ is §9!R§ && (this.§6f§ as §9!R§).isGround();
      }
      
      public function §#!y§() : Boolean
      {
         return this.§6f§ is §9!R§ && ((this.§6f§ as §9!R§).§#!y§() || (this.§6f§ as §9!R§).isMiscBlock());
      }
      
      public function §?!s§() : Boolean
      {
         return this.§6f§ is §9!R§ && (this.§6f§ as §9!R§).§?!s§();
      }
      
      public function §@!j§() : Boolean
      {
         return this.§6f§ is §8",§;
      }
      
      public function §!-§() : Boolean
      {
         return this.§6f§ is §5?§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§6f§ is §9!R§ && (this.§6f§ as §9!R§).isTexture();
      }
      
      public function §7n§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§9!R§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§8",§ = null;
         var _loc8_:§5?§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§6f§ is §9!R§)
         {
            if(_loc6_ = (_loc5_ = this.§6f§ as §9!R§).getBody())
            {
               _loc4_ = _loc6_.§]L§().GetShape();
               _loc3_ = _loc5_.getBody().§5G§();
               _loc2_ = §%#§.§;#§(_loc4_,_loc3_);
            }
         }
         else if(this.§6f§ is §8",§)
         {
            _loc7_ = this.§6f§ as §8",§;
            _loc4_ = §["!§.§+!s§(_loc7_.name).shape.§ !§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §%#§.§;#§(_loc4_,_loc3_);
         }
         else if(this.§6f§ is §5?§)
         {
            _loc8_ = this.§6f§ as §5?§;
            _loc4_ = §8!+§.§6i§("SLINGSHOT_SHAPE").§ !§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §%#§.§;#§(_loc4_,_loc3_);
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
         var _loc1_:§9!R§ = null;
         var _loc2_:Rectangle = null;
         if(this.§6f§ is §9!R§)
         {
            _loc1_ = this.§6f§ as §9!R§;
            return §%#§.§8!o§(_loc1_.getBody().§]L§().GetShape(),_loc1_.getBody().§5G§());
         }
         _loc2_ = this.§7n§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §77§() : b2Vec2
      {
         var _loc1_:§9!R§ = null;
         if(this.§6f§ is §9!R§)
         {
            _loc1_ = this.§6f§ as §9!R§;
            return §%#§.§77§(_loc1_.getBody().§]L§().GetShape(),_loc1_.getBody().§5G§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§-!K§, param2:Number = 0, param3:Number = 0) : §7!O§
      {
         var _loc4_:§9!R§ = null;
         var _loc5_:§7!O§ = null;
         var _loc6_:§8",§ = null;
         if(this.§6f§ is §9!R§)
         {
            _loc4_ = this.§6f§ as §9!R§;
            return §-n§(param1.objects.addObject(_loc4_.§@!'§,_loc4_.§=8§ + param2,_loc4_.§#k§ + param3,_loc4_.§@&§(),false,false,true,1,false));
         }
         if(this.§6f§ is §8",§)
         {
            _loc6_ = this.§6f§ as §8",§;
            return §-n§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§6f§;
      }
      
      public function §@&§() : Number
      {
         return this.§#!]§().GetAngle();
      }
      
      public function §"B§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§#!]§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §#!]§() : b2Transform
      {
         if(this.§6f§ is §9!R§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§6f§ as §9!R§).getBody().§5G§().position.Copy(),(this.§6f§ as §9!R§).getBody().§5G§().R.Copy());
         }
         if(this.§6f§ is §8",§)
         {
            return new b2Transform(new b2Vec2((this.§6f§ as §8",§).x,(this.§6f§ as §8",§).y),new b2Mat22());
         }
         if(this.§6f§ is §5?§)
         {
            return new b2Transform(new b2Vec2((this.§6f§ as §5?§).mX,(this.§6f§ as §5?§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §!!l§(param1:b2Transform) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).getBody().§^w§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§6f§ is §8",§)
         {
            (this.§6f§ as §8",§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§6f§ is §5?§)
         {
            (this.§6f§ as §5?§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).getBody();
         }
         return null;
      }
      
      public function § !j§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§6f§ is §9!R§ && !(this.§6f§ as §9!R§).isGround())
         {
            this.§=!J§(param1,(this.§6f§ as §9!R§).§2!7§.§-!,§());
         }
         else if(this.§6f§ is §8",§)
         {
            this.§=!J§(param1,(this.§6f§ as §8",§).§-!,§());
         }
         else if(this.§6f§ is §5?§)
         {
            _loc2_ = (this.§6f§ as §5?§).§-i§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§=!J§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §=!J§(param1:Boolean, param2:§0!§) : void
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
      
      public function §`v§(param1:Number, param2:Point) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).§`v§(param1,param2);
         }
      }
      
      public function §@!`§() : String
      {
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).§<3§.shape.mName;
         }
         return null;
      }
      
      public function §^!W§() : String
      {
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).§<3§.material.mName;
         }
         return null;
      }
      
      public function §4"7§(param1:b2Vec2) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).§[!C§(param1);
            (this.§6f§ as §9!R§).getBody().SetAwake(true);
         }
      }
      
      public function §#!E§() : Boolean
      {
         if(this.§6f§ is §9!R§)
         {
            return !(this.§6f§ as §9!R§).getBody().IsAwake() || !(this.§6f§ as §9!R§).getBody().§,G§();
         }
         return true;
      }
      
      public function §;m§() : Boolean
      {
         if(this.§6f§ is §9!R§)
         {
            return this.§6f§.getBody() && (this.§6f§ as §9!R§).getBody().§,G§();
         }
         return true;
      }
      
      public function §3$§(param1:Boolean) : void
      {
         if(this.§6f§ is §9!R§ && this.§6f§.getBody())
         {
            (this.§6f§ as §9!R§).getBody().§+=§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).§@!'§;
         }
         if(this.§6f§ is §8",§)
         {
            return (this.§6f§ as §8",§).name;
         }
         if(this.§6f§ is §5?§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §1;§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§6f§ is §9!R§)
         {
            _loc3_ = (this.§6f§ as §9!R§).sprite.parent;
            _loc4_ = (this.§6f§ as §9!R§).sprite;
         }
         else if(this.§6f§ is §8",§)
         {
            _loc3_ = (this.§6f§ as §8",§).sprite.parent;
            _loc4_ = (this.§6f§ as §8",§).sprite;
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
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).uniqueID = param1;
         }
      }
      
      public function §4!^§() : Sprite
      {
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).sprite;
         }
         if(this.§6f§ is §8",§)
         {
            return (this.§6f§ as §8",§).sprite;
         }
         if(this.§6f§ is §5?§)
         {
            return (this.§6f§ as §5?§).sprite;
         }
         return null;
      }
      
      public function §[!u§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§6f§ is §9!R§)
         {
            _loc1_ = this.§"B§();
            return (this.§6f§ as §9!R§).container.§;!x§.§,w§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §4!d§() : Number
      {
         var _loc1_:Number = this.§4!^§().rotation;
         this.§4!^§().rotation = 0;
         var _loc2_:Number = this.§4!^§().width;
         this.§4!^§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §4!<§() : Number
      {
         var _loc1_:Number = this.§4!^§().rotation;
         this.§4!^§().rotation = 0;
         var _loc2_:Number = this.§4!^§().height;
         this.§4!^§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §6!y§() : void
      {
         if(this.§6f§ is §9!R§)
         {
         }
      }
      
      public function §<6§(param1:Number) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).§7!D§ = param1;
         }
      }
      
      public function §-!n§() : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).§7!D§ = (this.§6f§ as §9!R§).§@!#§;
         }
      }
      
      public function §-!,§() : Bitmap
      {
         var _loc1_:BitmapData = §7!f§.§'!o§.§3!y§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §#@§() : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).dispose();
         }
      }
      
      public function §1!"§() : Boolean
      {
         return this.§6f§ is §9!R§ && (this.§6f§ as §9!R§).isMiscBlock();
      }
      
      public function §0?§() : void
      {
         var _loc2_:b2Vec2 = this.§"B§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§3+§(_loc2_);
      }
      
      public function §5"§() : Boolean
      {
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).getBody() == null;
         }
         return false;
      }
      
      private function §`j§(param1:§2"%§) : void
      {
         if(this.§6f§ is §9!R§)
         {
            if(this.isGround())
            {
               this.§6f§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§6f§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§6f§ is §9!R§)
         {
            (this.§6f§ as §9!R§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§5"§())
         {
            return false;
         }
         if(this.§6f§ is §9!R§)
         {
            return (this.§6f§ as §9!R§).sprite.visible;
         }
         return true;
      }
   }
}
