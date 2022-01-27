package §5"D§
{
   import §!u§.§-r§;
   import §!u§.§>!z§;
   import §3R§.§1!R§;
   import §3R§.§;!h§;
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   import flash.geom.Point;
   
   public class §<!9§ extends §34§
   {
      
      public static const §8p§:String = "LaserBird";
      
      public static const §5!5§:String = "LaserBirdSpecialTrail";
       
      
      protected var §3"-§:Number;
      
      protected var §%X§:Number;
      
      private var §%!i§:§-r§;
      
      private var §<J§:Boolean = false;
      
      private var §9"&§:Boolean = false;
      
      private var §7""§:§>!z§;
      
      private var §>"§:Point;
      
      public function §<!9§(param1:Sprite, param2:§^5§, param3:b2World, param4:§9`§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         this.§3"-§ = param2;
         this.§%X§ = param3;
         this.§9"&§ = true;
         return true;
      }
      
      override public function updateOutOfCamera() : void
      {
         super.updateOutOfCamera();
         if(this.§%!i§)
         {
            this.§%!i§.hide();
         }
         if(this.§7""§)
         {
            this.§7""§.§2K§();
            this.§7""§.§4!D§();
         }
         this.§<J§ = false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §9B§() == null)
         {
            return false;
         }
         if(this.§<J§)
         {
            return false;
         }
         return true;
      }
      
      private function §4"§(param1:§0!5§, param2:Number) : void
      {
         this.§>"§ = new Point(x,y);
         this.§7""§ = (param1 as §=r§).addObject(§5!5§,this.§>"§.x,this.§>"§.y,0,§3!3§.§'!y§,false,true,false,1,true) as §>!z§;
         this.§7""§.§-"<§(param2);
      }
      
      override public function applyGravity() : Boolean
      {
         return !this.§<J§;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super.update(param1,param2);
         if(this.§9"&§ && this.§<J§ == false)
         {
            this.§9"&§ = false;
            this.§<J§ = true;
            this.§%!i§ = §-r§(param2.addObject(§-r§.§8p§,this.§3"-§,this.§%X§,0,§3!3§.§'!y§,false,false,false,1,true));
            §6!;§(new b2Vec2(0,0));
            _loc3_ = x * §1!R§.§00§;
            _loc4_ = y * §1!R§.§00§;
            §9B§().SetPosition(new b2Vec2(_loc3_,_loc4_));
            if((_loc5_ = Math.atan2(this.§%X§ - _loc4_,this.§3"-§ - _loc3_)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            this.§4"§(param2,_loc5_);
            this.§"!H§(param2,_loc5_);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.render(param1,param2,param3);
         if(this.§7""§)
         {
            _loc4_ = Math.pow(this.§>"§.x - x,2);
            _loc5_ = Math.pow(this.§>"§.y - y,2);
            _loc6_ = Math.sqrt(_loc4_ + _loc5_);
            this.§7""§.§?4§(x,y);
            this.§7""§.§#!?§(_loc6_ * §1!R§.§00§ * 0.5,1);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         this.§<J§ = false;
         if(this.§%!i§)
         {
            this.§%!i§.hide();
         }
         if(this.§7""§)
         {
            this.§7""§.§2K§();
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      protected function §"!H§(param1:§0!5§, param2:Number) : void
      {
         §6!;§(new b2Vec2(Math.cos(param2),Math.sin(param2)));
         §0N§(§;!h§.§=o§);
      }
      
      override public function dispose() : void
      {
         if(this.§%!i§)
         {
            this.§%!i§.dispose();
            this.§%!i§ = null;
         }
         if(this.§7""§)
         {
            this.§7""§.§#"0§ = true;
            this.§7""§ = null;
         }
         super.dispose();
      }
   }
}
