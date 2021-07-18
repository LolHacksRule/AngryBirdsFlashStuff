package §]">§
{
   import §"!&§.§+W§;
   import §'!&§.b2World;
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §1"H§.§!v§;
   import §1"H§.§<!I§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import flash.geom.Point;
   
   public class §]"-§ extends §6!y§
   {
      
      public static const §!!p§:String = "LaserBird";
      
      public static const §]2§:String = "LaserBirdSpecialTrail";
       
      
      protected var §5`§:Number;
      
      protected var §@r§:Number;
      
      private var §%!m§:§<!I§;
      
      private var §]"4§:Boolean = false;
      
      private var §5#§:§!v§;
      
      private var §2B§:Point;
      
      public function §]"-§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         this.§%!m§ = §<!I§(param1.addObject(§<!I§.§!!p§,param2,param3,0,§-%§.§;!J§,false,false,false,1,true));
         this.§5`§ = param2;
         this.§@r§ = param3;
         var _loc4_:Number = §^!z§().GetPosition().x;
         var _loc5_:Number = §^!z§().GetPosition().y;
         var _loc6_:Number;
         if((_loc6_ = Math.atan2(param3 - _loc5_,param2 - _loc4_)) < 0)
         {
            _loc6_ += Math.PI * 2;
         }
         this.§<?§(param1,_loc6_);
         this.§`i§(param1,_loc6_);
         this.§]"4§ = true;
         return true;
      }
      
      override public function updateOutOfCamera() : void
      {
         super.updateOutOfCamera();
         if(this.§%!m§)
         {
            this.§%!m§.hide();
         }
         if(this.§5#§)
         {
            this.§5#§.§=F§();
            this.§5#§.§[U§();
         }
         this.§]"4§ = false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §^!z§() == null)
         {
            return false;
         }
         if(this.§]"4§)
         {
            return false;
         }
         return true;
      }
      
      private function §<?§(param1:§;U§, param2:Number) : void
      {
         this.§2B§ = new Point(x,y);
         this.§5#§ = (param1 as §@!q§).addObject(§]2§,this.§2B§.x,this.§2B§.y,0,§-%§.§;!J§,false,true,false,1,true) as §!v§;
         this.§5#§.§>" §(param2);
      }
      
      override public function applyGravity() : Boolean
      {
         return !this.§]"4§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.render(param1,param2,param3);
         if(this.§5#§)
         {
            _loc4_ = Math.pow(this.§2B§.x - x,2);
            _loc5_ = Math.pow(this.§2B§.y - y,2);
            _loc6_ = Math.sqrt(_loc4_ + _loc5_);
            this.§5#§.§7T§(x,y);
            this.§5#§.§[u§(_loc6_ * §^g§.§5!-§ * 0.5,1);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         this.§]"4§ = false;
         if(this.§%!m§)
         {
            this.§%!m§.hide();
         }
         if(this.§5#§)
         {
            this.§5#§.§=F§();
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      protected function §`i§(param1:§;U§, param2:Number) : void
      {
         §=9§(new b2Vec2(Math.cos(param2),Math.sin(param2)));
         §var§(§-T§.§;x§);
      }
      
      override public function dispose() : void
      {
         if(this.§%!m§)
         {
            this.§%!m§.dispose();
            this.§%!m§ = null;
         }
         if(this.§5#§)
         {
            this.§5#§.§3"6§ = true;
            this.§5#§ = null;
         }
         super.dispose();
      }
   }
}
