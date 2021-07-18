package §&!m§
{
   import § !t§.b2Body;
   import §#b§.b2Shape;
   import §+]§.§"^§;
   import §-!`§.§7!J§;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   import §<!<§.§]K§;
   import §<!B§.b2Mat22;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import §?!6§.§1!!§;
   import §?!6§.§3>§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §;5§
   {
      
      private static var §"z§:Dictionary = new Dictionary();
       
      
      private var §]e§:Object;
      
      public function §;5§()
      {
         super();
      }
      
      public static function §9!6§(param1:*) : §;5§
      {
         var _loc2_:§;5§ = null;
         if(param1 == null)
         {
            return null;
         }
         if(§"z§[param1] == undefined)
         {
            _loc2_ = new §;5§();
            _loc2_.§]e§ = param1;
            §"z§[param1] = _loc2_;
         }
         return §"z§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         if(this.§]e§ is §<!3§)
         {
            (this.§]e§ as §<!3§).getBody().§&!%§(param1);
         }
         else if(this.§]e§ is §]K§)
         {
            (this.§]e§ as §]K§).setPosition(param1.x,param1.y);
         }
         else if(this.§]e§ is §;§)
         {
            (this.§]e§ as §;§).setPosition(param1.x,param1.y,true);
         }
      }
      
      public function isGround() : Boolean
      {
         return this.§]e§ is §<!3§ && (this.§]e§ as §<!3§).isGround();
      }
      
      public function §;!Z§() : Boolean
      {
         return this.§]e§ is §<!3§ && ((this.§]e§ as §<!3§).§;!Z§() || (this.§]e§ as §<!3§).§`T§());
      }
      
      public function §%P§() : Boolean
      {
         return this.§]e§ is §<!3§ && (this.§]e§ as §<!3§).§%P§();
      }
      
      public function §;L§() : Boolean
      {
         return this.§]e§ is §]K§;
      }
      
      public function §<P§() : Boolean
      {
         return this.§]e§ is §;§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]e§ is §<!3§ && (this.§]e§ as §<!3§).isTexture();
      }
      
      public function §]!5§() : Rectangle
      {
         var _loc1_:§<!3§ = null;
         var _loc2_:§]K§ = null;
         var _loc3_:b2Shape = null;
         var _loc4_:b2Transform = null;
         var _loc5_:§;§ = null;
         var _loc6_:b2Shape = null;
         var _loc7_:b2Transform = null;
         if(this.§]e§ is §<!3§)
         {
            _loc1_ = this.§]e§ as §<!3§;
            return §"^§.§3Q§(_loc1_.getBody().§7!Y§().GetShape(),_loc1_.getBody().§>!H§());
         }
         if(this.§]e§ is §]K§)
         {
            _loc2_ = this.§]e§ as §]K§;
            _loc3_ = §1!!§.§#P§(_loc2_.name).shape.§8!8§();
            _loc4_ = new b2Transform(new b2Vec2(_loc2_.mX,_loc2_.mY),new b2Mat22());
            return §"^§.§3Q§(_loc3_,_loc4_);
         }
         if(this.§]e§ is §;§)
         {
            _loc5_ = this.§]e§ as §;§;
            _loc6_ = §3>§.§?p§("SLINGSHOT_SHAPE").§8!8§();
            _loc7_ = new b2Transform(new b2Vec2(_loc5_.mX,_loc5_.mY),new b2Mat22());
            return §"^§.§3Q§(_loc6_,_loc7_);
         }
         return null;
      }
      
      public function getCenter() : Point
      {
         var _loc1_:§<!3§ = null;
         var _loc2_:b2Vec2 = null;
         var _loc3_:Rectangle = null;
         if(this.§]e§ is §<!3§)
         {
            _loc1_ = this.§]e§ as §<!3§;
            _loc2_ = _loc1_.getBody().§>!H§().position;
            return new Point(_loc2_.x,_loc2_.y);
         }
         _loc3_ = this.§]!5§();
         return new Point(_loc3_.x + _loc3_.width / 2,_loc3_.y + _loc3_.height / 2);
      }
      
      public function clone(param1:§7E§, param2:Number = 0, param3:Number = 0) : §;5§
      {
         var _loc4_:§<!3§ = null;
         var _loc5_:§]K§ = null;
         if(this.§]e§ is §<!3§)
         {
            _loc4_ = this.§]e§ as §<!3§;
            return §9!6§(param1.objects.addObject(_loc4_.§>p§,_loc4_.§1!M§ + param2,_loc4_.§7"§ + param3,_loc4_.§;x§(),false,false));
         }
         if(this.§]e§ is §]K§)
         {
            _loc5_ = this.§]e§ as §]K§;
            return §9!6§(param1.slingshot.addNewBirdToEndOfList(_loc5_.name,_loc5_.mX + param2,_loc5_.mY + param3));
         }
         return null;
      }
      
      public function getObject() : Object
      {
         return this.§]e§;
      }
      
      public function getPosition() : b2Vec2
      {
         var _loc1_:b2Transform = this.§!0§();
         return _loc1_.position.Copy();
      }
      
      public function §!0§() : b2Transform
      {
         if(this.§]e§ is §<!3§)
         {
            return new b2Transform((this.§]e§ as §<!3§).getBody().§>!H§().position.Copy(),(this.§]e§ as §<!3§).getBody().§>!H§().R.Copy());
         }
         if(this.§]e§ is §]K§)
         {
            return new b2Transform(new b2Vec2((this.§]e§ as §]K§).mX,(this.§]e§ as §]K§).mY),new b2Mat22());
         }
         if(this.§]e§ is §;§)
         {
            return new b2Transform(new b2Vec2((this.§]e§ as §;§).mX,(this.§]e§ as §;§).mY),new b2Mat22());
         }
         return null;
      }
      
      public function getBody() : b2Body
      {
         if(this.§]e§ is §<!3§)
         {
            return (this.§]e§ as §<!3§).getBody();
         }
         return null;
      }
      
      public function §+!D§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(this.§]e§ is §<!3§ && !(this.§]e§ as §<!3§).isGround())
         {
            this.§8!h§(param1,(this.§]e§ as §<!3§).§0!E§.§+!V§());
         }
         else if(this.§]e§ is §]K§)
         {
            this.§8!h§(param1,(this.§]e§ as §]K§).§+!V§());
         }
         else if(this.§]e§ is §;§)
         {
            _loc2_ = (this.§]e§ as §;§).§try §();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§8!h§(param1,_loc2_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §8!h§(param1:Boolean, param2:§7!J§) : void
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
      
      public function § !-§(param1:Number, param2:Point) : void
      {
         if(this.§]e§ is §<!3§)
         {
            (this.§]e§ as §<!3§).§ !-§(param1,param2);
         }
      }
   }
}
