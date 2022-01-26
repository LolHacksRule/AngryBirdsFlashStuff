package §3X§
{
   import §!!V§.§%§;
   import §!!V§.§&I§;
   import §!!V§.§<!>§;
   import §&!5§.Sprite;
   import §&!S§.§"!N§;
   import §1E§.§2^§;
   import §4x§.§?R§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §>8§.§#%§;
   
   public class §%+§ extends §<!>§
   {
       
      
      private var §+!8§:Boolean = false;
      
      public function §%+§(param1:§&I§, param2:§#%§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §%§
      {
         var _loc5_:§9§ = new §9§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §3r§.push(_loc5_);
         }
         else
         {
            §3r§.splice(param4,0,_loc5_);
         }
         §4u§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §#z§() : void
      {
         this.§+!8§ = true;
         var _loc1_:§%§ = § !^§("BIRD_CHEETOS_BAG",§ !2§ + 0.7,§'!F§ + 0.1);
         this.§2b§(_loc1_);
         §2^§.§ !C§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §+I§() : §?R§
      {
         var _loc1_:§?R§ = null;
         if(this.§+!8§)
         {
            return _loc1_;
         }
         this.§#z§();
         var _loc2_:§9§ = §3r§[§!!^§] as §9§;
         if(§3r§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §9§).§9K§(_loc2_.§5!W§,_loc2_.§#!"§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§@;§();
            _loc1_ = (_loc2_ as §9§).§9K§(_loc2_.§5!W§,_loc2_.§#!"§);
         }
         setSlingShotState(§;C§);
         return _loc1_;
      }
      
      public function §50§() : void
      {
         var _loc1_:§%§ = null;
         if(§3r§.length > 0)
         {
            for each(_loc1_ in §3r§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§2b§(_loc1_);
                  §57§(§3r§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §2b§(param1:§%§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = 1;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = 20 * Math.cos(_loc6_) * Math.random();
            _loc8_ = -20 * Math.sin(_loc6_) * Math.random();
            §%v§.particles.addParticle(§"!N§.CHEETOS_EXPLOSION,§7!H§.§]0§,§"!U§.§+6§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §0!6§() : Boolean
      {
         return this.§+!8§;
      }
   }
}
