package §!7§
{
   import §#b§.§85§;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.Sprite;
   import §-!;§.§4^§;
   import §-A§.§ '§;
   import §-A§.§%9§;
   import §-A§.§^!F§;
   import §1o§.§'M§;
   import §9T§.§;d§;
   
   public class §@a§ extends § '§
   {
       
      
      private var §7!O§:Boolean = false;
      
      public function §@a§(param1:§%9§, param2:§85§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §^!F§
      {
         var _loc5_:§^-§ = new §^-§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §3!Q§.push(_loc5_);
         }
         else
         {
            §3!Q§.splice(param4,0,_loc5_);
         }
         §7!a§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §5L§() : void
      {
         this.§7!O§ = true;
         var _loc1_:§^!F§ = §=l§("BIRD_CHEETOS_BAG",§,!_§ + 0.7,§4b§ + 0.1);
         this.§&!C§(_loc1_);
         §'M§.§1T§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §!!4§() : §4^§
      {
         var _loc1_:§4^§ = null;
         if(this.§7!O§)
         {
            return _loc1_;
         }
         this.§5L§();
         var _loc2_:§^-§ = §3!Q§[§4!]§] as §^-§;
         if(§3!Q§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §^-§).§<F§(_loc2_.§92§,_loc2_.§&>§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§`!G§();
            _loc1_ = (_loc2_ as §^-§).§<F§(_loc2_.§92§,_loc2_.§&>§);
         }
         setSlingShotState(§8>§);
         return _loc1_;
      }
      
      public function §,!<§() : void
      {
         var _loc1_:§^!F§ = null;
         if(§3!Q§.length > 0)
         {
            for each(_loc1_ in §3!Q§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§&!C§(_loc1_);
                  §null§(§3!Q§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §&!C§(param1:§^!F§) : void
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
            §return§.particles.addParticle(§;d§.CHEETOS_EXPLOSION,§^Z§.§<!%§,§+e§.§]@§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §,b§() : Boolean
      {
         return this.§7!O§;
      }
   }
}
