package §0q§
{
   import §"Z§.§5!2§;
   import §,!2§.§9=§;
   import §7!7§.§return§;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.Sprite;
   import §9T§.§#!4§;
   import §9T§.§%!_§;
   import §9T§.§=!^§;
   import §^9§.§3A§;
   
   public class §#!_§ extends §#!4§
   {
       
      
      private var §`!+§:Boolean = false;
      
      public function §#!_§(param1:§=!^§, param2:§3A§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §%!_§
      {
         var _loc5_:§-!V§ = new §-!V§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §2!R§.push(_loc5_);
         }
         else
         {
            §2!R§.splice(param4,0,_loc5_);
         }
         §^_§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §>9§() : void
      {
         this.§`!+§ = true;
         var _loc1_:§%!_§ = §""§("BIRD_CHEETOS_BAG",§!-§ + 0.7,§[4§ + 0.1);
         this.§=f§(_loc1_);
         §return§.§2!S§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §#!#§() : §5!2§
      {
         var _loc1_:§5!2§ = null;
         if(this.§`!+§)
         {
            return _loc1_;
         }
         this.§>9§();
         var _loc2_:§-!V§ = §2!R§[§6V§] as §-!V§;
         if(§2!R§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §-!V§).§]p§(_loc2_.§@!a§,_loc2_.§6F§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§7g§();
            _loc1_ = (_loc2_ as §-!V§).§]p§(_loc2_.§@!a§,_loc2_.§6F§);
         }
         setSlingShotState(§9!?§);
         return _loc1_;
      }
      
      public function §[!Z§() : void
      {
         var _loc1_:§%!_§ = null;
         if(§2!R§.length > 0)
         {
            for each(_loc1_ in §2!R§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§=f§(_loc1_);
                  §3!6§(§2!R§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §=f§(param1:§%!_§) : void
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
            §&?§.particles.addParticle(§9=§.CHEETOS_EXPLOSION,§2!4§.§8!Q§,§%v§.§[H§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §"!K§() : Boolean
      {
         return this.§`!+§;
      }
   }
}
