package §+!7§
{
   import §!>§.§5!$§;
   import §"!@§.§&;§;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§6w§;
   import §3E§.§>o§;
   import §3E§.§]Y§;
   import §5!G§.§31§;
   import §7u§.Sprite;
   import §=!M§.§[q§;
   
   public class §[!]§ extends §]Y§
   {
       
      
      private var §=#§:Boolean = false;
      
      public function §[!]§(param1:§6w§, param2:§&;§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §>o§
      {
         var _loc5_:§-;§ = new §-;§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §0!`§.push(_loc5_);
         }
         else
         {
            §0!`§.splice(param4,0,_loc5_);
         }
         §>!#§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §[!A§() : void
      {
         this.§=#§ = true;
         var _loc1_:§>o§ = §[!C§("BIRD_CHEETOS_BAG",§,G§ + 0.7,§-+§ + 0.1);
         this.§;'§(_loc1_);
         §31§.§>%§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §8!A§() : §5!$§
      {
         var _loc1_:§5!$§ = null;
         if(this.§=#§)
         {
            return _loc1_;
         }
         this.§[!A§();
         var _loc2_:§-;§ = §0!`§[§%!5§] as §-;§;
         if(§0!`§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §-;§).§;b§(_loc2_.§@!$§,_loc2_.§=^§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§5j§();
            _loc1_ = (_loc2_ as §-;§).§;b§(_loc2_.§@!$§,_loc2_.§=^§);
         }
         setSlingShotState(§,!5§);
         return _loc1_;
      }
      
      public function §"!M§() : void
      {
         var _loc1_:§>o§ = null;
         if(§0!`§.length > 0)
         {
            for each(_loc1_ in §0!`§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§;'§(_loc1_);
                  §&t§(§0!`§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §;'§(param1:§>o§) : void
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
            §]v§.particles.addParticle(§[q§.CHEETOS_EXPLOSION,§ M§.§&^§,§4+§.§&'§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §6!C§() : Boolean
      {
         return this.§=#§;
      }
   }
}
