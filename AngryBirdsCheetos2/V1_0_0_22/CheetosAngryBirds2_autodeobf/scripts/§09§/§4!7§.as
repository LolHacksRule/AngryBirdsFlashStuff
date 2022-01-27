package §09§
{
   import §,§.§ 3§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6H§.§#!;§;
   import §<!0§.§7g§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   
   public class §4!7§ extends §7!N§
   {
       
      
      private var §=]§:Boolean = false;
      
      public function §4!7§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § 3§
      {
         var _loc5_:§^V§ = new §^V§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §0!b§.push(_loc5_);
         }
         else
         {
            §0!b§.splice(param4,0,_loc5_);
         }
         §,!C§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §0!7§() : void
      {
         this.§=]§ = true;
         var _loc1_:§ 3§ = §'"§("BIRD_CHEETOS_BAG",§7F§ + 0.7,§6_§ + 0.1);
         this.§+]§(_loc1_);
         §,!7§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §?!5§() : §7g§
      {
         var _loc1_:§7g§ = null;
         if(this.§=]§)
         {
            return _loc1_;
         }
         this.§0!7§();
         var _loc2_:§^V§ = §0!b§[§7!B§] as §^V§;
         if(§0!b§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §^V§).§,!§(_loc2_.§04§,_loc2_.§-@§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§42§();
            _loc1_ = (_loc2_ as §^V§).§,!§(_loc2_.§04§,_loc2_.§-@§);
         }
         setSlingShotState(§8!4§);
         return _loc1_;
      }
      
      public function §+]§(param1:§ 3§) : void
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
            §^!I§.particles.addParticle(§#!;§.CHEETOS_EXPLOSION,§do§.§+!c§,§7!?§.§22§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §">§() : Boolean
      {
         return this.§=]§;
      }
   }
}
