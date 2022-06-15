package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2Body;
   import §48§.b2World;
   import §6!B§.§>!E§;
   import §9"!§.§9"3§;
   import §<!`§.b2CircleShape;
   import §<!`§.b2MassData;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §<o§ extends §="$§
   {
       
      
      private const §7!P§:int = 2000;
      
      private const §false§:int = 0;
      
      private const §@!s§:int = 3000;
      
      public var §!2§:Point;
      
      public var §["E§:Point;
      
      public var §@!i§:Point;
      
      private var §!"9§:b2Vec2;
      
      private var § ^§:Boolean = false;
      
      private var §>N§:Number;
      
      private var §8!K§:Number = 0;
      
      private var §[!o§:Boolean = false;
      
      private var §`@§:§]a§;
      
      private var §7^§:Boolean = false;
      
      private var §&T§:Point;
      
      public var §^'§:Number;
      
      private var §9!!§:Boolean = false;
      
      public function §<o§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         this.§`@§ = param1;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
         this.init();
      }
      
      private function get §6e§() : Number
      {
         return -this.§^'§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = §=!y§();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§>N§ = this.§7!P§;
         this.§8!K§ = this.§@!s§;
         this.§^'§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§ u§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §]i§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §9"3§.§'"F§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §9"3§.§'"F§ - sprite.y;
         this.§&T§ = new Point(_loc3_,_loc4_);
      }
      
      public function §@p§(param1:Point, param2:Point) : void
      {
         this.§ ^§ = true;
         this.§@!i§ = param1;
         this.§["E§ = param2;
         var _loc3_:b2Body = §=!y§();
         _loc3_.SetPosition(new b2Vec2(this.§@!i§.x - this.§["E§.x * this.§^'§,this.§@!i§.y - this.§["E§.y * this.§^'§));
         this.§!"9§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         if(this.§8!K§ > 0)
         {
            return §@!h§;
         }
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0)
         {
            this.reset();
         }
         return _loc7_;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.§8!K§ > 0)
         {
            this.§8!K§ -= param1;
            if(this.§8!K§ <= 0)
            {
               §>!E§.§@"8§("zombie_pig_transform_var2","ChannelPig");
               §=!y§().SetActive(true);
               §=!y§().SetActive(true);
               §=!y§().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§8!K§ <= 200 && !this.§9!!§)
            {
               this.§9!!§ = true;
               §#6§.§6!z§.particles.§4!P§("HALLOWEEN_ZOMBIE_SMOKE",§'G§.§9!>§,§^!f§.§4N§,§'G§.§+";§,this.§!"9§.x,this.§!"9§.y,2000,"",§'G§.§0=§,0,0,0,0,1,20,true);
            }
            return;
         }
         if(this.§ ^§)
         {
            this.§>N§ -= param1;
            if(this.§>N§ <= 0)
            {
               if(!this.§[!o§)
               {
                  this.reset();
               }
               if(this.§>N§ <= -this.§false§)
               {
                  this.§ ^§ = false;
               }
            }
            else
            {
               _loc2_ = 1 - this.§>N§ / this.§7!P§;
               _loc3_ = new b2Vec2(this.§!"9§.x + this.§["E§.x * (-this.§6e§ * 2 * _loc2_) + Math.random() * 0.2,this.§!"9§.y + this.§["E§.y * (-this.§6e§ * 2 * _loc2_) + Math.random() * 0.2);
               §=!y§().SetPosition(_loc3_);
            }
            if(!this.§[!o§)
            {
               _loc4_ = 0;
               while(_loc4_ < 1)
               {
                  _loc5_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc6_ = this.§["E§.x * Math.cos(_loc5_) - this.§["E§.y * Math.sin(_loc5_);
                  _loc7_ = this.§["E§.x * Math.sin(_loc5_) + this.§["E§.y * Math.cos(_loc5_);
                  §#6§.§6!z§.particles.§4!P§("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,this.§@!i§.x + -this.§["E§.y * (Math.random() * this.§6e§ * 2 - this.§6e§),this.§@!i§.y + this.§["E§.x * (Math.random() * this.§6e§ * 2 - this.§6e§),1500,"",0,_loc6_ * (Math.random() * 6 + 3),_loc7_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc4_++;
               }
            }
         }
         else
         {
            this.reset();
         }
      }
      
      private function reset() : void
      {
         if(!this.§7^§)
         {
            this.§7^§ = true;
            this.§[!o§ = true;
            sprite.removeFromParent();
            this.§`@§.§'!!§.addChild(sprite);
            §=!y§().SetLinearVelocity(new b2Vec2(0,0));
            §=!y§().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
   }
}
