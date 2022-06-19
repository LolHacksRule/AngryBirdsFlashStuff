package §5!M§
{
   import §!X§.§#K§;
   import §!X§.§86§;
   import §!X§.§9k§;
   import §#!V§.§&!!§;
   import §#![§.§5<§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §]!F§.§&!]§;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   
   public class §7!0§ extends §#K§
   {
       
      
      private var §#O§:Boolean = false;
      
      private var §@v§:§%!T§;
      
      public function §7!0§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §9k§
      {
         var _loc5_:§%!T§ = new §%!T§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §8k§.push(_loc5_);
         }
         else
         {
            §8k§.splice(param4,0,_loc5_);
         }
         §3,§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §<!<§() : void
      {
         this.§#O§ = true;
         var _loc1_:§9k§ = §>l§("BIRD_CHEETOS_BAG",§<!Y§ + 0.7,§ l§ + 0.1);
         this.§>!E§(_loc1_);
         §!!>§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
      }
      
      public function §]!&§() : §&!!§
      {
         var _loc1_:§&!!§ = null;
         if(this.§#O§)
         {
            return _loc1_;
         }
         this.§<!<§();
         var _loc2_:§%!T§ = §8k§[§'J§] as §%!T§;
         if(§8k§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §%!T§).§0+§(_loc2_.§9a§,_loc2_.§1!2§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§!!Q§();
            _loc1_ = (_loc2_ as §%!T§).§0+§(_loc2_.§9a§,_loc2_.§1!2§);
            this.§@v§ = _loc2_;
         }
         setSlingShotState(§8! §);
         return _loc1_;
      }
      
      public function §1e§() : void
      {
         this.§@v§.§]A§();
      }
      
      public function §2Q§() : void
      {
         var _loc1_:§9k§ = null;
         if(§8k§.length > 0)
         {
            for each(_loc1_ in §8k§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§>!E§(_loc1_);
                  §'2§(§8k§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §>!E§(param1:§9k§) : void
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
            §>`§.particles.addParticle(§5<§.CHEETOS_EXPLOSION,§<2§.§]!X§,§7o§.§%u§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get § $§() : Boolean
      {
         return this.§#O§;
      }
   }
}
