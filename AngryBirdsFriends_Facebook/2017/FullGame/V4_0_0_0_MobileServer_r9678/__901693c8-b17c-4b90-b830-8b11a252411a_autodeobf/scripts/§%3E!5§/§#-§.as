package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§1!$§;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §7"&§.§!"v§;
   import §7"&§.§]"k§;
   import §7"^§.b2AABB;
   
   public class §#-§
   {
       
      
      protected var mWorld:b2World;
      
      private var §'$&§:Sprite;
      
      private var §&"f§:Sprite;
      
      private var §9!o§:Number = 0.0;
      
      protected var §>$8§:Number;
      
      protected var §1"T§:b2Fixture;
      
      protected var §-[§:b2Body;
      
      protected var §8"3§:§!"v§;
      
      protected var §6"X§:Boolean = false;
      
      protected var §?#@§:int = -1;
      
      protected var §0!7§:Number;
      
      private var §+"s§:Boolean;
      
      public function §#-§(param1:Sprite, param2:b2World, param3:§!"v§)
      {
         this.§>$8§ = §^"9§.§%!5§;
         super();
         this.§'$&§ = param1;
         this.mWorld = param2;
         this.§8"3§ = param3;
         if(this.§8"3§)
         {
            this.§;!2§(this.§8"3§.getItemZOrder());
         }
         else
         {
            this.§;!2§(1);
         }
         this.§+"s§ = this.§8"3§.§^0§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'$&§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§&"f§;
      }
      
      public function get levelItem() : §!"v§
      {
         return this.§8"3§;
      }
      
      public function get §]$&§() : Boolean
      {
         return this.§6"X§;
      }
      
      public function get §`"b§() : Number
      {
         return this.§9!o§;
      }
      
      public function get §=M§() : Boolean
      {
         return this.§+"s§;
      }
      
      public function set §=M§(param1:Boolean) : void
      {
         this.§+"s§ = param1;
      }
      
      public function set §0P§(param1:Number) : void
      {
         this.§0!7§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§?#@§ == §4@§.§<#P§)
         {
            return this.§0!7§;
         }
         return 1;
      }
      
      public function get shape() : §]"k§
      {
         return this.§8"3§.shape;
      }
      
      public function §`#d§() : void
      {
         if(!this.§&"f§)
         {
            this.§&"f§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§6"X§ = true;
         if(param1)
         {
            if(this.mWorld && this.§-[§)
            {
               this.mWorld.DestroyBody(this.§-[§);
            }
         }
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         if(this.§&"f§)
         {
            this.§&"f§.dispose();
            this.§&"f§ = null;
         }
         this.mWorld = null;
         this.§-[§ = null;
         this.§1"T§ = null;
         if(this.§=M§ && §!#A§.§=![§)
         {
            §!#A§.§=![§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§-[§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§1"T§.§##g§();
         if(param1 >= _loc3_.§""x§.x && param1 <= _loc3_.§%"i§.x && param2 >= _loc3_.§""x§.y && param2 <= _loc3_.§%"i§.y)
         {
            return this.§1"T§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §>#j§() : int
      {
         return this.§?#@§;
      }
      
      public function set §>#j§(param1:int) : void
      {
         if(this.§?#@§ == param1)
         {
            return;
         }
         this.§?#@§ = param1;
         if(this.§-[§)
         {
            this.updateGravityFilter();
            this.§-[§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§?#@§)
         {
            case -1:
            case §4@§.§^"#§:
               this.§-[§.SetLinearDamping(§1!$§.§^$5§);
               this.§-[§.SetAngularDamping(§1!$§.§^!V§);
               this.§-[§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§?#@§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get §;"o§() : Number
      {
         return this.§-[§.GetPosition().x;
      }
      
      public function get §`#T§() : Number
      {
         return this.§-[§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§-!S§) : void
      {
         if(this.§9!o§ + param1 > Number.MAX_VALUE)
         {
            this.§9!o§ = 0;
         }
         this.§9!o§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§0S§) : void
      {
      }
      
      public function leftSensor(param1:§0S§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§#-§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§#-§ = null) : void
      {
      }
      
      public function collidedWith(param1:§#-§) : void
      {
      }
      
      public function collisionEnded(param1:§#-§) : void
      {
      }
      
      public function §=#7§() : Number
      {
         return this.§>$8§;
      }
      
      public function §;!2§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§>$8§ = param1;
         this.sprite.z = param1;
      }
   }
}
