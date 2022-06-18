package §7f§
{
   import §%b§.§&b§;
   import §%b§.§0!Z§;
   import §%b§.§=!!§;
   import §+k§.§=! §;
   import §0C§.§;!Q§;
   import §7G§.§^0§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §;C§.§5!O§;
   import §null §.Sprite;
   
   public class §8!M§ extends §=!!§
   {
       
      
      private var §[!Y§:Boolean = false;
      
      public function §8!M§(param1:§0!Z§, param2:§;!Q§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §&b§
      {
         var _loc5_:§9i§ = new §9i§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §^!O§.push(_loc5_);
         }
         else
         {
            §^!O§.splice(param4,0,_loc5_);
         }
         §%!-§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §;`§() : void
      {
         this.§[!Y§ = true;
         var _loc1_:§&b§ = §>X§("BIRD_CHEETOS_BAG",§+!L§ + 0.7,§!;§ + 0.1);
         this.§#!&§(_loc1_);
         §5!O§.§-q§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §implements§() : §=! §
      {
         var _loc1_:§=! § = null;
         if(this.§[!Y§)
         {
            return _loc1_;
         }
         this.§;`§();
         var _loc2_:§9i§ = §^!O§[§3!H§] as §9i§;
         if(§^!O§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §9i§).§>!1§(_loc2_.§%!W§,_loc2_.§+2§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§'$§();
            _loc1_ = (_loc2_ as §9i§).§>!1§(_loc2_.§%!W§,_loc2_.§+2§);
         }
         setSlingShotState(§%!7§);
         return _loc1_;
      }
      
      public function §`$§() : void
      {
         var _loc1_:§&b§ = null;
         if(§^!O§.length > 0)
         {
            for each(_loc1_ in §^!O§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§#!&§(_loc1_);
                  §2o§(§^!O§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §#!&§(param1:§&b§) : void
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
            §]!8§.particles.addParticle(§^0§.CHEETOS_EXPLOSION,§;m§.§?=§,§=!F§.§'U§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §-!]§() : Boolean
      {
         return this.§[!Y§;
      }
   }
}
