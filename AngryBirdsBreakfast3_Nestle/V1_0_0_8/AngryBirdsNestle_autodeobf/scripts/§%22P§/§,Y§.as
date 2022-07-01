package §"P§
{
   import §!"+§.§ !S§;
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §-j§.b2AABB;
   import §9G§.§0i§;
   import §=!c§.b2Body;
   import §=!c§.b2Fixture;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   
   public class §,Y§
   {
       
      
      protected var §>%§:b2World;
      
      private var §[<§:Sprite;
      
      protected var §"F§:b2Fixture;
      
      protected var §!"$§:b2Body;
      
      protected var §6!-§:§!o§;
      
      protected var §!!n§:Boolean = false;
      
      protected var §=!Q§:int = -1;
      
      protected var §]w§:Number;
      
      public function §,Y§(param1:Sprite, param2:b2World, param3:§!o§)
      {
         super();
         this.§[<§ = param1;
         this.§>%§ = param2;
         this.§6!-§ = param3;
         if(this.§6!-§)
         {
            param1.z = this.§6!-§.§+k§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§[<§;
      }
      
      public function get levelItem() : §!o§
      {
         return this.§6!-§;
      }
      
      public function get §^7§() : Boolean
      {
         return this.§!!n§;
      }
      
      public function set §?!9§(param1:Number) : void
      {
         this.§]w§ = param1;
      }
      
      public function §#%§(param1:Number) : Number
      {
         if(this.§=!Q§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§]w§;
         }
         return 1;
      }
      
      public function get shape() : § !S§
      {
         return this.§6!-§.shape;
      }
      
      public function dispose() : void
      {
         this.§!!n§ = true;
         if(this.§>%§ && this.§!"$§)
         {
            this.§>%§.§0h§(this.§!"$§);
         }
         if(this.§[<§)
         {
            this.§[<§.dispose();
            this.§[<§ = null;
         }
         this.§>%§ = null;
         this.§!"$§ = null;
         this.§"F§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §7J§() : b2Body
      {
         return this.§!"$§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§"F§.§6"6§();
         if(param1 >= _loc3_.§use§.x && param1 <= _loc3_.§6&§.x && param2 >= _loc3_.§use§.y && param2 <= _loc3_.§6&§.y)
         {
            return this.§"F§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§7J§() && this.§7J§().IsAwake();
      }
      
      public function get §3"$§() : int
      {
         return this.§=!Q§;
      }
      
      public function set §3"$§(param1:int) : void
      {
         if(this.§=!Q§ == param1)
         {
            return;
         }
         this.§=!Q§ = param1;
         if(this.§!"$§)
         {
            this.updateGravityFilter();
            this.§!"$§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§=!Q§)
         {
            case -1:
               this.§!"$§.SetLinearDamping(§0i§.§5!`§);
               this.§!"$§.SetAngularDamping(§0i§.§'!!§);
               this.§!"$§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§=!Q§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§7J§().GetPosition().x >= param3 && this.§7J§().GetPosition().x <= param4 && this.§7J§().GetPosition().y >= param1 && this.§7J§().GetPosition().y <= param2;
      }
      
      public function get §'!b§() : Number
      {
         return this.§!"$§.GetPosition().x;
      }
      
      public function get §1"%§() : Number
      {
         return this.§!"$§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§0w§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §+!f§(param1:§9"3§) : void
      {
      }
      
      public function §1!K§(param1:§9"3§) : void
      {
      }
      
      public function §5!7§(param1:§,Y§ = null) : void
      {
      }
      
      public function §'=§(param1:§,Y§ = null) : void
      {
      }
      
      public function collidedWith(param1:§,Y§) : void
      {
      }
      
      public function collisionEnded(param1:§,Y§) : void
      {
      }
   }
}
