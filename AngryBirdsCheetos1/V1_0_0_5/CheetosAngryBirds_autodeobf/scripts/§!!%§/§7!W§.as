package §!!%§
{
   import §!!R§.Sprite;
   import §&!W§.§2z§;
   import §&!W§.§8!K§;
   
   public class §7!W§
   {
      
      public static const §>!P§:int = 0;
      
      public static const §&!>§:int = 1;
      
      public static const §`!+§:int = 2;
      
      public static const §'>§:int = 3;
      
      public static const §-!;§:int = 4;
      
      public static const §"%§:int = 5;
       
      
      private var §,v§:Vector.<§!!E§>;
      
      private var §5<§:§2z§;
      
      private var §&U§:§8!K§;
      
      public function §7!W§(param1:§2z§, param2:§8!K§)
      {
         super();
         this.§5<§ = param1;
         this.§&U§ = param2;
         this.§,v§ = new Vector.<§!!E§>();
         var _loc3_:int = 0;
         while(_loc3_ < §"%§)
         {
            this.§,v§[_loc3_] = new §!!E§();
            _loc3_++;
         }
      }
      
      public function get §+S§() : §2z§
      {
         return this.§5<§;
      }
      
      public function get §"B§() : §8!K§
      {
         return this.§&U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!E§ = null;
         if(this.§,v§)
         {
            while(this.§,v§.length)
            {
               _loc1_ = this.§,v§.pop();
               _loc1_.dispose();
            }
         }
         this.§,v§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §?f§
      {
         var _loc16_:§?f§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§!!E§;
         if(_loc17_ = this.§7q§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §?f§
      {
         return new §?f§(this.§5<§,this.§&U§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,v§.length)
         {
            this.§7q§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §+A§(param1:int) : void
      {
         var _loc2_:§!!E§ = this.§7q§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §0!"§(param1:int) : Sprite
      {
         return this.§7q§(param1).sprite;
      }
      
      public function §7q§(param1:Number) : §!!E§
      {
         if(this.§,v§ != null)
         {
            return this.§,v§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§+A§(§>!P§);
         var _loc1_:§!!E§ = this.§7q§(§&!>§);
         var _loc2_:§!!E§ = this.§7q§(§>!P§);
         _loc1_.§`]§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
         var _loc3_:§!!E§ = null;
         for each(_loc3_ in this.§,v§)
         {
            _loc3_.§[W§(param1,param2);
         }
      }
   }
}
