package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§4! §;
   import §1"?§.§8G§;
   import §3"#§.§'"&§;
   import §3"#§.§`"8§;
   import §3>§.§1!;§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import flash.geom.Point;
   
   public class §;g§ extends §7!>§
   {
      
      public static const §#!"§:String = "LaserBird";
      
      public static const §%W§:String = "LaserBirdSpecialTrail";
       
      
      protected var §'!>§:Number;
      
      protected var §]R§:Number;
      
      private var §<y§:§4! §;
      
      private var §"G§:Boolean = false;
      
      private var §6>§:Boolean = false;
      
      private var §%!'§:§8G§;
      
      private var §+^§:Point;
      
      public function §;g§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§1!;§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         this.§'!>§ = param2;
         this.§]R§ = param3;
         this.§6>§ = true;
         return true;
      }
      
      override public function updateOutOfCamera() : void
      {
         super.updateOutOfCamera();
         if(this.§<y§)
         {
            this.§<y§.hide();
         }
         if(this.§%!'§)
         {
            this.§%!'§.§!!h§();
            this.§%!'§.§!!p§();
         }
         this.§"G§ = false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §`I§() == null)
         {
            return false;
         }
         if(this.§"G§)
         {
            return false;
         }
         return true;
      }
      
      private function §'V§(param1:§0!s§, param2:Number) : void
      {
         this.§+^§ = new Point(x,y);
         this.§%!'§ = (param1 as §]m§).addObject(§%W§,this.§+^§.x,this.§+^§.y,0,§"" §.§%A§,false,true,false,1,true) as §8G§;
         this.§%!'§.§0!L§(param2);
      }
      
      override public function applyGravity() : Boolean
      {
         return !this.§"G§;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§6>§ && this.§"G§ == false)
         {
            this.§6>§ = false;
            this.§"G§ = true;
            this.§<y§ = §4! §(param2.addObject(§4! §.§#!"§,this.§'!>§,this.§]R§,0,§"" §.§%A§,false,false,false,1,true));
            §?!m§(new b2Vec2(0,0));
            _loc3_ = x * §`"8§.§3!=§;
            _loc4_ = y * §`"8§.§3!=§;
            §`I§().SetPosition(new b2Vec2(_loc3_,_loc4_));
            if((_loc5_ = Math.atan2(this.§]R§ - _loc4_,this.§'!>§ - _loc3_)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            this.§'V§(param2,_loc5_);
            this.§'8§(param2,_loc5_);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.render(param1,param2,param3);
         if(this.§%!'§)
         {
            _loc4_ = Math.pow(this.§+^§.x - x,2);
            _loc5_ = Math.pow(this.§+^§.y - y,2);
            _loc6_ = Math.sqrt(_loc4_ + _loc5_);
            this.§%!'§.§3"F§(x,y);
            this.§%!'§.§&"8§(_loc6_ * §`"8§.§3!=§ * 0.5,1);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         this.§"G§ = false;
         if(this.§<y§)
         {
            this.§<y§.hide();
         }
         if(this.§%!'§)
         {
            this.§%!'§.§!!h§();
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      protected function §'8§(param1:§0!s§, param2:Number) : void
      {
         §?!m§(new b2Vec2(Math.cos(param2),Math.sin(param2)));
         §2Y§(§'"&§.§ O§);
      }
      
      override public function dispose() : void
      {
         if(this.§<y§)
         {
            this.§<y§.dispose();
            this.§<y§ = null;
         }
         if(this.§%!'§)
         {
            this.§%!'§.§8!o§ = true;
            this.§%!'§ = null;
         }
         super.dispose();
      }
   }
}
