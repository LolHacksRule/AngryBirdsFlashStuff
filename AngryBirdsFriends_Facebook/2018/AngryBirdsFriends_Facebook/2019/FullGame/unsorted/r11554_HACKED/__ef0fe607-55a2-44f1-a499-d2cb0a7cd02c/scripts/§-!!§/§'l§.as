package §-!!§
{
   import § !D§.§;#W§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §'l§ extends §8"J§
   {
       
      
      private const §]#Y§:Boolean = true;
      
      private const §3"x§:uint = 10000;
      
      public var §]"t§:Boolean = false;
      
      public var §?!f§:Boolean = false;
      
      private var §'"#§:DisplayObject;
      
      private var §'"Q§:Number = 0;
      
      private const §9!A§:Number = Math.random() * Math.PI * 2;
      
      private var §?";§:Number = 0;
      
      public function §'l§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§-!S§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(!this.§?!f§)
         {
            this.§?";§ = this.§3"x§;
            this.§?!f§ = true;
         }
         else
         {
            this.§?";§ -= 100;
         }
         return §1#H§;
      }
      
      private function §-!S§(param1:§4!8§, param2:Sprite) : void
      {
         this.§'"#§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§'"#§);
      }
      
      public function §;#B§(param1:Number, param2:§ #'§) : void
      {
         var _loc4_:§8"J§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§?!f§ && getBody())
         {
            this.§?";§ -= param1;
            if(this.§]#Y§ && !getBody().IsAwake() || this.§?";§ <= 0)
            {
               getBody().GetPosition();
               §[#%§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§30§(),§7S§.ID_NEXT_FREE) as §8"J§)
               {
                  _loc4_.§6-§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§'"#§)
         {
            _loc5_ = this.§9!A§ + this.§'"Q§ / 1000 * Math.PI * §;#W§.§-"U§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§?!f§ || !getBody())
            {
               this.§'"#§.alpha -= 0.025;
               this.§'"#§.y += 1;
               this.§'"#§.rotation += 0.01;
               if(this.§'"#§.alpha <= 0)
               {
                  this.§'"#§.dispose();
                  this.§'"#§ = null;
               }
            }
            else
            {
               this.§'"#§.rotation = Math.cos(_loc5_) * §;#W§.§`$3§;
               _loc7_ = new Point(-this.§'"#§.pivotX,-this.§'"#§.pivotY * 2);
               this.§'"#§.x = x + _loc7_.x * Math.cos(this.§'"#§.rotation) - _loc7_.y * Math.sin(this.§'"#§.rotation);
               this.§'"#§.y = y + _loc7_.x * Math.sin(this.§'"#§.rotation) + _loc7_.y * Math.cos(this.§'"#§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §;#W§.§7X§)
               {
                  _loc8_ = §;#W§.§7X§;
               }
               else if(_loc8_ < -§;#W§.§7X§)
               {
                  _loc8_ = -§;#W§.§7X§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §;#W§.§2",§,_loc8_));
            }
         }
         this.§'"Q§ += param1;
      }
      
      public function get §>#a§() : Boolean
      {
         return !getBody() && this.§'"#§ == null;
      }
      
      public function get §0!@§() : Boolean
      {
         return this.§?!f§;
      }
   }
}
