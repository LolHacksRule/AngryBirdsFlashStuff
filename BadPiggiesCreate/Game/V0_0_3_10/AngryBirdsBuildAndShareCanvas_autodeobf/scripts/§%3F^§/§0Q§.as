package §?^§
{
   import §%t§.§-!5§;
   import §&!s§.§+!O§;
   import §&!s§.§["4§;
   import §4!s§.§%I§;
   import §4!s§.§4^§;
   import §4!s§.§`!7§;
   import §6U§.b2Shape;
   import §7!&§.§!o§;
   import §="§.§="-§;
   import §="§.§`T§;
   import §?!h§.b2Mat22;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import §^I§.§=!+§;
   import §^I§.DisplayObject;
   import §^I§.DisplayObjectContainer;
   import §^I§.Sprite;
   import §`]§.b2Body;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §0Q§
   {
      
      private static var §1!<§:Dictionary = new Dictionary(true);
       
      
      private var §+!P§:Object;
      
      public function §0Q§()
      {
         super();
      }
      
      public static function §^!f§(param1:§="-§) : void
      {
         var _loc4_:§0Q§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §1!<§)
         {
            _loc4_.§+L§(param1);
            if(_loc4_.§+!P§)
            {
               _loc2_[_loc4_.§+!P§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §1!<§ = _loc2_;
      }
      
      public static function §super§(param1:*) : §0Q§
      {
         var _loc2_:§0Q§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§1!<§[param1] == undefined)
         {
            _loc2_ = new §0Q§();
            _loc2_.§+!P§ = param1;
            §1!<§[param1] = _loc2_;
         }
         return §1!<§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).getBody().§9U§(param1);
         }
         else if(this.§+!P§ is §`!7§)
         {
            (this.§+!P§ as §`!7§).setPosition(param1.x,param1.y);
         }
         else if(this.§+!P§ is §4^§)
         {
            (this.§+!P§ as §4^§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§+!P§ is §`T§ && (this.§+!P§ as §`T§).isGround();
      }
      
      public function §[!Z§() : Boolean
      {
         return this.§+!P§ is §`T§ && ((this.§+!P§ as §`T§).§[!Z§() || (this.§+!P§ as §`T§).isMiscBlock());
      }
      
      public function §3!^§() : Boolean
      {
         return this.§+!P§ is §`T§ && (this.§+!P§ as §`T§).§3!^§();
      }
      
      public function §>R§() : Boolean
      {
         return this.§+!P§ is §`!7§;
      }
      
      public function §8t§() : Boolean
      {
         return this.§+!P§ is §4^§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§+!P§ is §`T§ && (this.§+!P§ as §`T§).isTexture();
      }
      
      public function §^g§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§`T§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§`!7§ = null;
         var _loc8_:§4^§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§+!P§ is §`T§)
         {
            if(_loc6_ = (_loc5_ = this.§+!P§ as §`T§).getBody())
            {
               _loc4_ = _loc6_.§?&§().GetShape();
               _loc3_ = _loc5_.getBody().§!!f§();
               _loc2_ = §!o§.§!I§(_loc4_,_loc3_);
            }
         }
         else if(this.§+!P§ is §`!7§)
         {
            _loc7_ = this.§+!P§ as §`!7§;
            _loc4_ = §+!O§.§?!b§(_loc7_.name).shape.§@!2§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = §!o§.§!I§(_loc4_,_loc3_);
         }
         else if(this.§+!P§ is §4^§)
         {
            _loc8_ = this.§+!P§ as §4^§;
            _loc4_ = §["4§.§>!!§("SLINGSHOT_SHAPE").§@!2§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = §!o§.§!I§(_loc4_,_loc3_);
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
         var _loc1_:§`T§ = null;
         var _loc2_:Rectangle = null;
         if(this.§+!P§ is §`T§)
         {
            _loc1_ = this.§+!P§ as §`T§;
            return §!o§.§'"5§(_loc1_.getBody().§?&§().GetShape(),_loc1_.getBody().§!!f§());
         }
         _loc2_ = this.§^g§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §1!P§() : b2Vec2
      {
         var _loc1_:§`T§ = null;
         if(this.§+!P§ is §`T§)
         {
            _loc1_ = this.§+!P§ as §`T§;
            return §!o§.§1!P§(_loc1_.getBody().§?&§().GetShape(),_loc1_.getBody().§!!f§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§%I§, param2:Number = 0, param3:Number = 0) : §0Q§
      {
         var _loc4_:§`T§ = null;
         var _loc5_:§0Q§ = null;
         var _loc6_:§`!7§ = null;
         if(this.§+!P§ is §`T§)
         {
            _loc4_ = this.§+!P§ as §`T§;
            return §super§(param1.objects.addObject(_loc4_.§'!l§,_loc4_.§%W§ + param2,_loc4_.§&]§ + param3,_loc4_.§'k§(),false,false,true,1,false));
         }
         if(this.§+!P§ is §`!7§)
         {
            _loc6_ = this.§+!P§ as §`!7§;
            return §super§(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§+!P§;
      }
      
      public function §'k§() : Number
      {
         return this.§8y§().GetAngle();
      }
      
      public function §9b§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§8y§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §8y§() : b2Transform
      {
         if(this.§+!P§ is §`T§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§+!P§ as §`T§).getBody().§!!f§().position.Copy(),(this.§+!P§ as §`T§).getBody().§!!f§().R.Copy());
         }
         if(this.§+!P§ is §`!7§)
         {
            return new b2Transform(new b2Vec2((this.§+!P§ as §`!7§).x,(this.§+!P§ as §`!7§).y),new b2Mat22());
         }
         if(this.§+!P§ is §4^§)
         {
            return new b2Transform(new b2Vec2((this.§+!P§ as §4^§).mX,(this.§+!P§ as §4^§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §&"2§(param1:b2Transform) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).getBody().§8T§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§+!P§ is §`!7§)
         {
            (this.§+!P§ as §`!7§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§+!P§ is §4^§)
         {
            (this.§+!P§ as §4^§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).getBody();
         }
         return null;
      }
      
      public function §4"1§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§+!P§ is §`T§ && !(this.§+!P§ as §`T§).isGround())
         {
            this.§<+§(param1,(this.§+!P§ as §`T§).§7!w§.§[!@§());
         }
         else if(this.§+!P§ is §`!7§)
         {
            this.§<+§(param1,(this.§+!P§ as §`!7§).§[!@§());
         }
         else if(this.§+!P§ is §4^§)
         {
            _loc2_ = (this.§+!P§ as §4^§).§<[§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§<+§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §<+§(param1:Boolean, param2:§=!+§) : void
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
      
      public function §?!z§(param1:Number, param2:Point) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).§?!z§(param1,param2);
         }
      }
      
      public function §9_§() : String
      {
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).§6m§.shape.mName;
         }
         return null;
      }
      
      public function §#?§() : String
      {
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).§6m§.material.mName;
         }
         return null;
      }
      
      public function §2U§(param1:b2Vec2) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).§0!+§(param1);
            (this.§+!P§ as §`T§).getBody().SetAwake(true);
         }
      }
      
      public function §+a§() : Boolean
      {
         if(this.§+!P§ is §`T§)
         {
            return !(this.§+!P§ as §`T§).getBody().IsAwake() || !(this.§+!P§ as §`T§).getBody().§^w§();
         }
         return true;
      }
      
      public function §""4§() : Boolean
      {
         if(this.§+!P§ is §`T§)
         {
            return this.§+!P§.getBody() && (this.§+!P§ as §`T§).getBody().§^w§();
         }
         return true;
      }
      
      public function §?!w§(param1:Boolean) : void
      {
         if(this.§+!P§ is §`T§ && this.§+!P§.getBody())
         {
            (this.§+!P§ as §`T§).getBody().§%"#§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).§'!l§;
         }
         if(this.§+!P§ is §`!7§)
         {
            return (this.§+!P§ as §`!7§).name;
         }
         if(this.§+!P§ is §4^§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §,!I§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§+!P§ is §`T§)
         {
            _loc3_ = (this.§+!P§ as §`T§).sprite.parent;
            _loc4_ = (this.§+!P§ as §`T§).sprite;
         }
         else if(this.§+!P§ is §`!7§)
         {
            _loc3_ = (this.§+!P§ as §`!7§).sprite.parent;
            _loc4_ = (this.§+!P§ as §`!7§).sprite;
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
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).uniqueID = param1;
         }
      }
      
      public function §]"#§() : Sprite
      {
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).sprite;
         }
         if(this.§+!P§ is §`!7§)
         {
            return (this.§+!P§ as §`!7§).sprite;
         }
         if(this.§+!P§ is §4^§)
         {
            return (this.§+!P§ as §4^§).sprite;
         }
         return null;
      }
      
      public function §[=§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§+!P§ is §`T§)
         {
            _loc1_ = this.§9b§();
            return (this.§+!P§ as §`T§).container.§,!T§.§?!+§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §>"#§() : Number
      {
         var _loc1_:Number = this.§]"#§().rotation;
         this.§]"#§().rotation = 0;
         var _loc2_:Number = this.§]"#§().width;
         this.§]"#§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §,Z§() : Number
      {
         var _loc1_:Number = this.§]"#§().rotation;
         this.§]"#§().rotation = 0;
         var _loc2_:Number = this.§]"#§().height;
         this.§]"#§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function § !c§() : void
      {
         if(this.§+!P§ is §`T§)
         {
         }
      }
      
      public function §,!9§(param1:Number) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).§+!_§ = param1;
         }
      }
      
      public function §4V§() : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).§+!_§ = (this.§+!P§ as §`T§).§4>§;
         }
      }
      
      public function §[!@§() : Bitmap
      {
         var _loc1_:BitmapData = §-!5§.§,l§.§2s§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §5!h§() : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).dispose();
         }
      }
      
      public function § !b§() : Boolean
      {
         return this.§+!P§ is §`T§ && (this.§+!P§ as §`T§).isMiscBlock();
      }
      
      public function §var §() : void
      {
         var _loc2_:b2Vec2 = this.§9b§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§9U§(_loc2_);
      }
      
      public function §'",§() : Boolean
      {
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).getBody() == null;
         }
         return false;
      }
      
      private function §+L§(param1:§="-§) : void
      {
         if(this.§+!P§ is §`T§)
         {
            if(this.isGround())
            {
               this.§+!P§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§+!P§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§+!P§ is §`T§)
         {
            (this.§+!P§ as §`T§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§'",§())
         {
            return false;
         }
         if(this.§+!P§ is §`T§)
         {
            return (this.§+!P§ as §`T§).sprite.visible;
         }
         return true;
      }
   }
}
