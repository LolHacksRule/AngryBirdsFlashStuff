package §0&§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §#K§.§,3§;
   import §1!A§.Sprite;
   import §6!P§.§88§;
   import §7z§.§&!>§;
   import §7z§.§0!D§;
   import §7z§.§]!-§;
   import §=q§.§?X§;
   import §?[§.§4y§;
   
   public class §<!+§ extends §0!D§
   {
       
      
      private var §8[§:Boolean = false;
      
      public function §<!+§(param1:§]!-§, param2:§?X§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §&!>§
      {
         var _loc5_:§0z§ = new §0z§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §`u§.push(_loc5_);
         }
         else
         {
            §`u§.splice(param4,0,_loc5_);
         }
         §8!C§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §9q§() : void
      {
         this.§8[§ = true;
         var _loc1_:§&!>§ = § A§("BIRD_CHEETOS_BAG",§6!Z§ + 0.7,§,!A§ + 0.1);
         this.§>!5§(_loc1_);
         §,3§.§7!=§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §,!H§() : §88§
      {
         var _loc1_:§88§ = null;
         if(this.§8[§)
         {
            return _loc1_;
         }
         this.§9q§();
         var _loc2_:§0z§ = §`u§[§,B§] as §0z§;
         if(§`u§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §0z§).§;!A§(_loc2_.§%!F§,_loc2_.§@3§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§`!4§();
            _loc1_ = (_loc2_ as §0z§).§;!A§(_loc2_.§%!F§,_loc2_.§@3§);
         }
         setSlingShotState(§+!@§);
         return _loc1_;
      }
      
      public function §?!'§() : void
      {
         var _loc1_:§&!>§ = null;
         if(§`u§.length > 0)
         {
            for each(_loc1_ in §`u§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§>!5§(_loc1_);
                  §5s§(§`u§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §>!5§(param1:§&!>§) : void
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
            §^'§.particles.addParticle(§4y§.CHEETOS_EXPLOSION,§0m§.§=!T§,§^!_§.§4t§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §?2§() : Boolean
      {
         return this.§8[§;
      }
   }
}
