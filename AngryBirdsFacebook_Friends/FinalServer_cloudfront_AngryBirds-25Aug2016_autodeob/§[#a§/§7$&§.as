package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§;!p§;
   import §8§.§#$+§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §7$&§ extends §="@§
   {
       
      
      private const §;"v§:Boolean = true;
      
      private const §6"2§:uint = 10000;
      
      public var §;"G§:Boolean = false;
      
      public var §!z§:Boolean = false;
      
      private var §,#9§:DisplayObject;
      
      private var §'# §:Number = 0;
      
      private const §6#7§:Number = Math.random() * Math.PI * 2;
      
      private var §+!D§:Number = 0;
      
      public function §7$&§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2"3§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(!this.§!z§)
         {
            this.§+!D§ = this.§6"2§;
            this.§!z§ = true;
         }
         else
         {
            this.§+!D§ -= 100;
         }
         return §2!w§;
      }
      
      private function §2"3§(param1:§`"W§, param2:Sprite) : void
      {
         this.§,#9§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§,#9§);
      }
      
      public function §+!F§(param1:Number, param2:§7!O§) : void
      {
         var _loc4_:§="@§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§!z§ && getBody())
         {
            this.§+!D§ -= param1;
            if(this.§;"v§ && !getBody().IsAwake() || this.§+!D§ <= 0)
            {
               getBody().GetPosition();
               §#$+§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§^!Y§(),§6"[§.ID_NEXT_FREE) as §="@§)
               {
                  _loc4_.§!!i§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§,#9§)
         {
            _loc5_ = this.§6#7§ + this.§'# § / 1000 * Math.PI * §;!p§.§##w§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§!z§ || !getBody())
            {
               this.§,#9§.alpha -= 0.025;
               this.§,#9§.y += 1;
               this.§,#9§.rotation += 0.01;
               if(this.§,#9§.alpha <= 0)
               {
                  this.§,#9§.dispose();
                  this.§,#9§ = null;
               }
            }
            else
            {
               this.§,#9§.rotation = Math.cos(_loc5_) * §;!p§.§;" §;
               _loc7_ = new Point(-this.§,#9§.pivotX,-this.§,#9§.pivotY * 2);
               this.§,#9§.x = x + _loc7_.x * Math.cos(this.§,#9§.rotation) - _loc7_.y * Math.sin(this.§,#9§.rotation);
               this.§,#9§.y = y + _loc7_.x * Math.sin(this.§,#9§.rotation) + _loc7_.y * Math.cos(this.§,#9§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §;!p§.§9!8§)
               {
                  _loc8_ = §;!p§.§9!8§;
               }
               else if(_loc8_ < -§;!p§.§9!8§)
               {
                  _loc8_ = -§;!p§.§9!8§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §;!p§.§<"d§,_loc8_));
            }
         }
         this.§'# § += param1;
      }
      
      public function get §`!W§() : Boolean
      {
         return !getBody() && this.§,#9§ == null;
      }
      
      public function get §!#[§() : Boolean
      {
         return this.§!z§;
      }
   }
}
