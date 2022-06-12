package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   import §>2§.§!!W§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import flash.geom.Point;
   
   public class §@!_§ extends §;!U§
   {
       
      
      private const §#Y§:Boolean = true;
      
      private const §6"_§:uint = 10000;
      
      public var §!`§:Boolean = false;
      
      public var §^#8§:Boolean = false;
      
      private var §0#F§:DisplayObject;
      
      private var §&$!§:Number = 0;
      
      private const §2x§:Number = Math.random() * Math.PI * 2;
      
      private var §9M§:Number = 0;
      
      public function §@!_§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§;$B§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(!this.§^#8§)
         {
            this.§9M§ = this.§6"_§;
            this.§^#8§ = true;
         }
         else
         {
            this.§9M§ -= 100;
         }
         return §6"k§;
      }
      
      private function §;$B§(param1:§;D§, param2:Sprite) : void
      {
         this.§0#F§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§0#F§);
      }
      
      public function §1"e§(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:§;!U§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§^#8§ && getBody())
         {
            this.§9M§ -= param1;
            if(this.§#Y§ && !getBody().IsAwake() || this.§9M§ <= 0)
            {
               _loc3_ = getBody().GetPosition();
               §3Z§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§%#4§(),§'!§.ID_NEXT_FREE) as §;!U§)
               {
                  _loc4_.§9"&§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§0#F§)
         {
            _loc5_ = this.§2x§ + this.§&$!§ / 1000 * Math.PI * §!!W§.§ "@§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§^#8§ || !getBody())
            {
               this.§0#F§.alpha -= 0.025;
               this.§0#F§.y += 1;
               this.§0#F§.rotation += 0.01;
               if(this.§0#F§.alpha <= 0)
               {
                  this.§0#F§.dispose();
                  this.§0#F§ = null;
               }
            }
            else
            {
               this.§0#F§.rotation = Math.cos(_loc5_) * §!!W§.§!#6§;
               _loc7_ = new Point(-this.§0#F§.pivotX,-this.§0#F§.pivotY * 2);
               this.§0#F§.x = x + _loc7_.x * Math.cos(this.§0#F§.rotation) - _loc7_.y * Math.sin(this.§0#F§.rotation);
               this.§0#F§.y = y + _loc7_.x * Math.sin(this.§0#F§.rotation) + _loc7_.y * Math.cos(this.§0#F§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §!!W§.§@"z§)
               {
                  _loc8_ = §!!W§.§@"z§;
               }
               else if(_loc8_ < -§!!W§.§@"z§)
               {
                  _loc8_ = -§!!W§.§@"z§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §!!W§.§7";§,_loc8_));
            }
         }
         this.§&$!§ += param1;
      }
      
      public function get §2!b§() : Boolean
      {
         return !getBody() && this.§0#F§ == null;
      }
      
      public function get §=!d§() : Boolean
      {
         return this.§^#8§;
      }
   }
}
