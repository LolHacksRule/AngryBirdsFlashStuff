package §@!P§
{
   import § ""§.§%,§;
   import § ""§.§6!u§;
   import §+L§.b2Mat22;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §1!3§.b2Shape;
   import §1!Y§.§8C§;
   import §1!Y§.DisplayObject;
   import §1!Y§.DisplayObjectContainer;
   import §1!Y§.Sprite;
   import §1!v§.§!,§;
   import §1!v§.§>"!§;
   import §1!v§.§@%§;
   import §7z§.b2Body;
   import §8q§.§#!R§;
   import §8q§.§@§;
   import §<!p§.§ !'§;
   import §[_§.§2!B§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?"%§
   {
      
      private static var §<!e§:Dictionary = new Dictionary(true);
       
      
      private var §&!$§:Object;
      
      public function §?"%§()
      {
         super();
      }
      
      public static function §!!D§(param1:§6!u§) : void
      {
         var _loc4_:§?"%§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §<!e§)
         {
            _loc4_.§-!M§(param1);
            if(_loc4_.§&!$§)
            {
               _loc2_[_loc4_.§&!$§] = _loc4_;
               if(_loc4_.isGround())
               {
                  _loc3_++;
               }
            }
         }
         §<!e§ = _loc2_;
      }
      
      public static function §3! §(param1:*) : §?"%§
      {
         var _loc2_:§?"%§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§<!e§[param1] == undefined)
         {
            _loc2_ = new §?"%§();
            _loc2_.§&!$§ = param1;
            §<!e§[param1] = _loc2_;
         }
         return §<!e§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).getBody().§"1§(param1);
         }
         else if(this.§&!$§ is §!,§)
         {
            (this.§&!$§ as §!,§).setPosition(param1.x,param1.y);
         }
         else if(this.§&!$§ is §>"!§)
         {
            (this.§&!$§ as §>"!§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§&!$§ is §%,§ && (this.§&!$§ as §%,§).isGround();
      }
      
      public function §^6§() : Boolean
      {
         return this.§&!$§ is §%,§ && ((this.§&!$§ as §%,§).§^6§() || (this.§&!$§ as §%,§).isMiscBlock());
      }
      
      public function §@!e§() : Boolean
      {
         return this.§&!$§ is §%,§ && (this.§&!$§ as §%,§).§@!e§();
      }
      
      public function §^!!§() : Boolean
      {
         return this.§&!$§ is §!,§;
      }
      
      public function §!"0§() : Boolean
      {
         return this.§&!$§ is §>"!§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&!$§ is §%,§ && (this.§&!$§ as §%,§).isTexture();
      }
      
      public function §[!V§(param1:Boolean = false) : Rectangle
      {
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§%,§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§!,§ = null;
         var _loc8_:§>"!§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(this.§&!$§ is §%,§)
         {
            if(_loc6_ = (_loc5_ = this.§&!$§ as §%,§).getBody())
            {
               _loc4_ = _loc6_.§2!r§().GetShape();
               _loc3_ = _loc5_.getBody().§7V§();
               _loc2_ = § !'§.each(_loc4_,_loc3_);
            }
         }
         else if(this.§&!$§ is §!,§)
         {
            _loc7_ = this.§&!$§ as §!,§;
            _loc4_ = §@§.§4"#§(_loc7_.name).shape.§^!T§();
            _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
            _loc2_ = § !'§.each(_loc4_,_loc3_);
         }
         else if(this.§&!$§ is §>"!§)
         {
            _loc8_ = this.§&!$§ as §>"!§;
            _loc4_ = §#!R§.§&r§("SLINGSHOT_SHAPE").§^!T§();
            _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
            _loc2_ = § !'§.each(_loc4_,_loc3_);
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
         var _loc1_:§%,§ = null;
         var _loc2_:Rectangle = null;
         if(this.§&!$§ is §%,§)
         {
            _loc1_ = this.§&!$§ as §%,§;
            return § !'§.§^q§(_loc1_.getBody().§2!r§().GetShape(),_loc1_.getBody().§7V§());
         }
         _loc2_ = this.§[!V§(true);
         return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
      }
      
      public function §-!-§() : b2Vec2
      {
         var _loc1_:§%,§ = null;
         if(this.§&!$§ is §%,§)
         {
            _loc1_ = this.§&!$§ as §%,§;
            return § !'§.§-!-§(_loc1_.getBody().§2!r§().GetShape(),_loc1_.getBody().§7V§());
         }
         return new b2Vec2();
      }
      
      public function clone(param1:§@%§, param2:Number = 0, param3:Number = 0) : §?"%§
      {
         var _loc4_:§%,§ = null;
         var _loc5_:§?"%§ = null;
         var _loc6_:§!,§ = null;
         if(this.§&!$§ is §%,§)
         {
            _loc4_ = this.§&!$§ as §%,§;
            return §3! §(param1.objects.addObject(_loc4_.§"g§,_loc4_.§4!V§ + param2,_loc4_.§<!#§ + param3,_loc4_.§;!k§(),false,false,true,1,false));
         }
         if(this.§&!$§ is §!,§)
         {
            _loc6_ = this.§&!$§ as §!,§;
            return §3! §(param1.slingshot.addNewBirdToEndOfList(_loc6_.name,_loc6_.x + param2,_loc6_.y + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§&!$§;
      }
      
      public function §;!k§() : Number
      {
         return this.§'f§().GetAngle();
      }
      
      public function §]>§() : b2Vec2
      {
         var _loc1_:b2Transform = this.§'f§();
         if(!_loc1_)
         {
            return null;
         }
         return _loc1_.position.Copy();
      }
      
      public function §'f§() : b2Transform
      {
         if(this.§&!$§ is §%,§)
         {
            if(this.getBody() == null)
            {
               return null;
            }
            return new b2Transform((this.§&!$§ as §%,§).getBody().§7V§().position.Copy(),(this.§&!$§ as §%,§).getBody().§7V§().R.Copy());
         }
         if(this.§&!$§ is §!,§)
         {
            return new b2Transform(new b2Vec2((this.§&!$§ as §!,§).x,(this.§&!$§ as §!,§).y),new b2Mat22());
         }
         if(this.§&!$§ is §>"!§)
         {
            return new b2Transform(new b2Vec2((this.§&!$§ as §>"!§).mX,(this.§&!$§ as §>"!§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function §[P§(param1:b2Transform) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).getBody().§@!3§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
         }
         else if(this.§&!$§ is §!,§)
         {
            (this.§&!$§ as §!,§).setPosition(param1.position.x,param1.position.y);
         }
         else if(this.§&!$§ is §>"!§)
         {
            (this.§&!$§ as §>"!§).setPosition(param1.position.x,param1.position.y,true);
         }
      }
      
      public function getBody() : b2Body
      {
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).getBody();
         }
         return null;
      }
      
      public function §'_§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§&!$§ is §%,§ && !(this.§&!$§ as §%,§).isGround())
         {
            this.§<!5§(param1,(this.§&!$§ as §%,§).§>!M§.§[1§());
         }
         else if(this.§&!$§ is §!,§)
         {
            this.§<!5§(param1,(this.§&!$§ as §!,§).§[1§());
         }
         else if(this.§&!$§ is §>"!§)
         {
            _loc2_ = (this.§&!$§ as §>"!§).§9!2§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§<!5§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §<!5§(param1:Boolean, param2:§8C§) : void
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
      
      public function §2_§(param1:Number, param2:Point) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).§2_§(param1,param2);
         }
      }
      
      public function §%e§() : String
      {
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).§switch§.shape.mName;
         }
         return null;
      }
      
      public function §"!j§() : String
      {
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).§switch§.material.mName;
         }
         return null;
      }
      
      public function §6!`§(param1:b2Vec2) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).§""4§(param1);
            (this.§&!$§ as §%,§).getBody().SetAwake(true);
         }
      }
      
      public function §[]§() : Boolean
      {
         if(this.§&!$§ is §%,§)
         {
            return !(this.§&!$§ as §%,§).getBody().IsAwake() || !(this.§&!$§ as §%,§).getBody().§7%§();
         }
         return true;
      }
      
      public function §2!t§() : Boolean
      {
         if(this.§&!$§ is §%,§)
         {
            return this.§&!$§.getBody() && (this.§&!$§ as §%,§).getBody().§7%§();
         }
         return true;
      }
      
      public function §[!p§(param1:Boolean) : void
      {
         if(this.§&!$§ is §%,§ && this.§&!$§.getBody())
         {
            (this.§&!$§ as §%,§).getBody().§0!2§(param1);
         }
      }
      
      public function getName() : String
      {
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).§"g§;
         }
         if(this.§&!$§ is §!,§)
         {
            return (this.§&!$§ as §!,§).name;
         }
         if(this.§&!$§ is §>"!§)
         {
            return "SLINGSHOT";
         }
         return "";
      }
      
      public function §`!Q§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§&!$§ is §%,§)
         {
            _loc3_ = (this.§&!$§ as §%,§).sprite.parent;
            _loc4_ = (this.§&!$§ as §%,§).sprite;
         }
         else if(this.§&!$§ is §!,§)
         {
            _loc3_ = (this.§&!$§ as §!,§).sprite.parent;
            _loc4_ = (this.§&!$§ as §!,§).sprite;
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
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).uniqueID;
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).uniqueID = param1;
         }
      }
      
      public function §9!§() : Sprite
      {
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).sprite;
         }
         if(this.§&!$§ is §!,§)
         {
            return (this.§&!$§ as §!,§).sprite;
         }
         if(this.§&!$§ is §>"!§)
         {
            return (this.§&!$§ as §>"!§).sprite;
         }
         return null;
      }
      
      public function §<!<§() : Point
      {
         var _loc1_:b2Vec2 = null;
         if(this.§&!$§ is §%,§)
         {
            _loc1_ = this.§]>§();
            return (this.§&!$§ as §%,§).container.§]Z§.§for§(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §1!§() : Number
      {
         var _loc1_:Number = this.§9!§().rotation;
         this.§9!§().rotation = 0;
         var _loc2_:Number = this.§9!§().width;
         this.§9!§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §[S§() : Number
      {
         var _loc1_:Number = this.§9!§().rotation;
         this.§9!§().rotation = 0;
         var _loc2_:Number = this.§9!§().height;
         this.§9!§().rotation = _loc1_;
         return _loc2_;
      }
      
      public function §'![§() : void
      {
         if(this.§&!$§ is §%,§)
         {
         }
      }
      
      public function §!!j§(param1:Number) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).§=!,§ = param1;
         }
      }
      
      public function §0!e§() : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).§=!,§ = (this.§&!$§ as §%,§).§,!f§;
         }
      }
      
      public function §[1§() : Bitmap
      {
         var _loc1_:BitmapData = §2!B§.§if §.§#"6§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §=N§() : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).dispose();
         }
      }
      
      public function §@g§() : Boolean
      {
         return this.§&!$§ is §%,§ && (this.§&!$§ as §%,§).isMiscBlock();
      }
      
      public function §>!%§() : void
      {
         var _loc2_:b2Vec2 = this.§]>§();
         _loc2_.x = Math.round(_loc2_.x * 100) / 100;
         _loc2_.y = Math.round(_loc2_.y * 100) / 100;
         var _loc3_:Number = this.getBody().GetAngle();
         _loc3_ = Math.round(_loc3_ * 100) / 100;
         this.getBody().§"1§(_loc2_);
      }
      
      public function § W§() : Boolean
      {
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).getBody() == null;
         }
         return false;
      }
      
      private function §-!M§(param1:§6!u§) : void
      {
         if(this.§&!$§ is §%,§)
         {
            if(this.isGround())
            {
               this.§&!$§ = param1.getObject(0);
            }
            else if(this.uniqueID != null)
            {
               this.§&!$§ = param1.getObjectWithID(this.uniqueID);
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.§&!$§ is §%,§)
         {
            (this.§&!$§ as §%,§).sprite.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         if(this.§ W§())
         {
            return false;
         }
         if(this.§&!$§ is §%,§)
         {
            return (this.§&!$§ as §%,§).sprite.visible;
         }
         return true;
      }
   }
}
