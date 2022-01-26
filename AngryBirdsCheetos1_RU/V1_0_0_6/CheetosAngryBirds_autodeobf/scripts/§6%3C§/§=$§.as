package §6<§
{
   import §!7§.§!>§;
   import §+X§.§#o§;
   import §0H§.§0!&§;
   import §2>§.§?!1§;
   import §8!`§.§%t§;
   import §8!`§.§3!Q§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §`;§.§5i§;
   import §`;§.§[E§;
   
   public class §=$§ extends §%t§
   {
       
      
      private var §>!;§:Boolean = false;
      
      public function §=$§(param1:§4J§, param2:§0!&§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §3!Q§
      {
         var _loc5_:§`<§ = new §`<§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §%!4§.push(_loc5_);
         }
         else
         {
            §%!4§.splice(param4,0,_loc5_);
         }
         §`r§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §4`§() : void
      {
         this.§>!;§ = true;
         var _loc1_:§3!Q§ = §?M§("BIRD_CHEETOS_BAG",§"9§ + 0.7,§[g§ + 0.1);
         this.§5!#§(_loc1_);
         §?!1§.§0!O§("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §=U§() : §!>§
      {
         var _loc1_:§!>§ = null;
         if(this.§>!;§)
         {
            return _loc1_;
         }
         this.§4`§();
         var _loc2_:§`<§ = §%!4§[§@+§] as §`<§;
         if(§%!4§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §`<§).§5!@§(_loc2_.§1%§,_loc2_.§0L§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§]!F§();
            _loc1_ = (_loc2_ as §`<§).§5!@§(_loc2_.§1%§,_loc2_.§0L§);
         }
         setSlingShotState(§<=§);
         return _loc1_;
      }
      
      public function § true§() : void
      {
         var _loc1_:§3!Q§ = null;
         if(§%!4§.length > 0)
         {
            for each(_loc1_ in §%!4§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§5!#§(_loc1_);
                  §^F§(§%!4§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §5!#§(param1:§3!Q§) : void
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
            §'N§.particles.addParticle(§#o§.CHEETOS_EXPLOSION,§5i§.§-!D§,§[E§.§!`§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §2!C§() : Boolean
      {
         return this.§>!;§;
      }
   }
}
