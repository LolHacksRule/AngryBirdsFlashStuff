package §32§
{
   import § y§.b2World;
   import §#B§.§ ! §;
   import §#B§.§<%§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§2!V§;
   import §<!$§.Sprite;
   import §[+§.§3L§;
   
   public class §%U§ extends §<%§
   {
       
      
      public function §%U§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         this.§=!V§(param1);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§=1§ == 0)
         {
            §=1§ = §?G§;
            this.addDestructionParticles(container.mLevelMain.particles);
         }
         return _loc7_;
      }
      
      private function §=!V§(param1:§]s§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc4_:Number = 90;
         var _loc11_:int = 0;
         while(_loc11_ < 80)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / 80)) / (180 / Math.PI);
            _loc8_ = 20 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -20 * Math.sin(_loc7_) * Math.random();
            _loc10_ = Math.random() * 2 + 3;
            param1.§;!V§("PARTICLE_COLLECT_DRUM_STAR_" + _loc10_,§]s§.§0!E§,§3L§.§3f§,§4g§().GetWorldCenter().x,§4g§().GetWorldCenter().y,2000 * (80 * 0.5),"",§&!^§.§5F§(§3a§),_loc8_,_loc9_,-20,_loc9_ * 20,0.5 + Math.random());
            _loc11_++;
         }
      }
   }
}
