package §9!S§
{
   import §!$§.§!!O§;
   import §0V§.§6!G§;
   import §0V§.§^K§;
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §39§.§=R§;
   import §3`§.§,!V§;
   import §6!S§.§,!9§;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   
   public class §@!G§ extends §^K§
   {
       
      
      private var §6!%§:Boolean = false;
      
      public function §@!G§(param1:§`!O§, param2:§=R§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §6!G§
      {
         var _loc5_:§%!%§ = new §%!%§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §0#§.push(_loc5_);
         }
         else
         {
            §0#§.splice(param4,0,_loc5_);
         }
         §9%§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §`!0§() : void
      {
         this.§6!%§ = true;
         var _loc1_:§6!G§ = §`!A§("BIRD_CHEETOS_BAG",§ W§ + 0.7,§9!9§ + 0.1);
         this.§&a§(_loc1_);
         §!!O§.§<D§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §!x§() : §,!9§
      {
         var _loc1_:§,!9§ = null;
         if(this.§6!%§)
         {
            return _loc1_;
         }
         this.§`!0§();
         var _loc2_:§%!%§ = §0#§[§?!#§] as §%!%§;
         if(§0#§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §%!%§).§-!R§(_loc2_.§?K§,_loc2_.§%X§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§'A§();
            _loc1_ = (_loc2_ as §%!%§).§-!R§(_loc2_.§?K§,_loc2_.§%X§);
         }
         setSlingShotState(§@T§);
         return _loc1_;
      }
      
      public function §&`§() : void
      {
         var _loc1_:§6!G§ = null;
         if(§0#§.length > 0)
         {
            for each(_loc1_ in §0#§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§&a§(_loc1_);
                  §#!%§(§0#§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §&a§(param1:§6!G§) : void
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
            §!q§.particles.addParticle(§,!V§.CHEETOS_EXPLOSION,§"^§.§<!L§,§7!%§.§!w§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §^!E§() : Boolean
      {
         return this.§6!%§;
      }
   }
}
