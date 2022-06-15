package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§7#E§;
   import §'#K§.b2World;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import flash.geom.Point;
   
   public class §8!o§ extends §>"G§
   {
       
      
      private const §9"f§:Boolean = true;
      
      private const §">§:uint = 10000;
      
      public var §^!f§:Boolean = false;
      
      public var §5#!§:Boolean = false;
      
      private var §?$8§:DisplayObject;
      
      private var §@"s§:Number = 0;
      
      private const §+#`§:Number = Math.random() * Math.PI * 2;
      
      private var §@#0§:Number = 0;
      
      public function §8!o§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§@@§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(!this.§5#!§)
         {
            this.§@#0§ = this.§">§;
            this.§5#!§ = true;
         }
         else
         {
            this.§@#0§ -= 100;
         }
         return §+#_§;
      }
      
      private function §@@§(param1:§7b§, param2:Sprite) : void
      {
         this.§?$8§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§?$8§);
      }
      
      public function §'#j§(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:§>"G§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§5#!§ && getBody())
         {
            this.§@#0§ -= param1;
            if(this.§9"f§ && !getBody().IsAwake() || this.§@#0§ <= 0)
            {
               _loc3_ = getBody().GetPosition();
               § b§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§3"W§(),§ !i§.ID_NEXT_FREE) as §>"G§)
               {
                  _loc4_.§-"m§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§?$8§)
         {
            _loc5_ = this.§+#`§ + this.§@"s§ / 1000 * Math.PI * §7#E§.§4!v§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§5#!§ || !getBody())
            {
               this.§?$8§.alpha -= 0.025;
               this.§?$8§.y += 1;
               this.§?$8§.rotation += 0.01;
               if(this.§?$8§.alpha <= 0)
               {
                  this.§?$8§.dispose();
                  this.§?$8§ = null;
               }
            }
            else
            {
               this.§?$8§.rotation = Math.cos(_loc5_) * §7#E§.§6o§;
               _loc7_ = new Point(-this.§?$8§.pivotX,-this.§?$8§.pivotY * 2);
               this.§?$8§.x = x + _loc7_.x * Math.cos(this.§?$8§.rotation) - _loc7_.y * Math.sin(this.§?$8§.rotation);
               this.§?$8§.y = y + _loc7_.x * Math.sin(this.§?$8§.rotation) + _loc7_.y * Math.cos(this.§?$8§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §7#E§.§!$@§)
               {
                  _loc8_ = §7#E§.§!$@§;
               }
               else if(_loc8_ < -§7#E§.§!$@§)
               {
                  _loc8_ = -§7#E§.§!$@§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §7#E§.§9!s§,_loc8_));
            }
         }
         this.§@"s§ += param1;
      }
      
      public function get §,#5§() : Boolean
      {
         return !getBody() && this.§?$8§ == null;
      }
      
      public function get §[#6§() : Boolean
      {
         return this.§5#!§;
      }
   }
}
