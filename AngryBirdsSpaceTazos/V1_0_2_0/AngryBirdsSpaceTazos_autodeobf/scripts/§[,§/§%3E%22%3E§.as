package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §,7§.§0o§;
   import §,7§.§@!c§;
   import §8o§.§]!U§;
   import §;"=§.§[e§;
   import §?!<§.§'!1§;
   import §?!<§.§6"3§;
   import flash.geom.Point;
   
   public class §>">§ extends §@9§
   {
      
      public static const §2_§:String = "LaserBird";
      
      public static const §+!n§:String = "LaserBirdSpecialTrail";
       
      
      protected var §0!C§:Number;
      
      protected var §0N§:Number;
      
      private var §<8§:§@!c§;
      
      private var §`$§:Boolean = false;
      
      private var §6"4§:§0o§;
      
      private var § ">§:Point;
      
      public function §>">§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§[e§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         this.§<8§ = §@!c§(param1.addObject(§@!c§.§2_§,param2,param3,0,§]j§.§4"1§,false,false,false,1,true));
         this.§0!C§ = param2;
         this.§0N§ = param3;
         var _loc4_:Number = § <§().GetPosition().x;
         var _loc5_:Number = § <§().GetPosition().y;
         var _loc6_:Number;
         if((_loc6_ = Math.atan2(param3 - _loc5_,param2 - _loc4_)) < 0)
         {
            _loc6_ += Math.PI * 2;
         }
         this.§&">§(param1,_loc6_);
         this.§#!6§(param1,_loc6_);
         this.§`$§ = true;
         return true;
      }
      
      override public function updateOutOfCamera() : void
      {
         super.updateOutOfCamera();
         if(this.§<8§)
         {
            this.§<8§.hide();
         }
         if(this.§6"4§)
         {
            this.§6"4§.§"!i§();
            this.§6"4§.§-!s§();
         }
         this.§`$§ = false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || § <§() == null)
         {
            return false;
         }
         if(this.§`$§)
         {
            return false;
         }
         return true;
      }
      
      private function §&">§(param1:§class§, param2:Number) : void
      {
         this.§ ">§ = new Point(x,y);
         this.§6"4§ = (param1 as §,!V§).addObject(§+!n§,this.§ ">§.x,this.§ ">§.y,0,§]j§.§4"1§,false,true,false,1,true) as §0o§;
         this.§6"4§.§<c§(param2);
      }
      
      override public function applyGravity() : Boolean
      {
         return !this.§`$§;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.render(param1,param2,param3);
         if(this.§6"4§)
         {
            _loc4_ = Math.pow(this.§ ">§.x - x,2);
            _loc5_ = Math.pow(this.§ ">§.y - y,2);
            _loc6_ = Math.sqrt(_loc4_ + _loc5_);
            this.§6"4§.§!"G§(x,y);
            this.§6"4§.§9o§(_loc6_ * §'!1§.§<!@§ * 0.5,1);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         this.§`$§ = false;
         if(this.§<8§)
         {
            this.§<8§.hide();
         }
         if(this.§6"4§)
         {
            this.§6"4§.§"!i§();
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      protected function §#!6§(param1:§class§, param2:Number) : void
      {
         §]Q§(new b2Vec2(Math.cos(param2),Math.sin(param2)));
         §1]§(§6"3§.§>"A§);
      }
      
      override public function dispose() : void
      {
         if(this.§<8§)
         {
            this.§<8§.dispose();
            this.§<8§ = null;
         }
         if(this.§6"4§)
         {
            this.§6"4§.§@!I§ = true;
            this.§6"4§ = null;
         }
         super.dispose();
      }
   }
}
