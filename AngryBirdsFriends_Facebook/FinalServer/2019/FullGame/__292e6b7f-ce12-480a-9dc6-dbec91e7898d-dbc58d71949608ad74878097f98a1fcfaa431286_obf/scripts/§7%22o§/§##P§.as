package §7"o§
{
   import §,#e§.Sprite;
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   
   public class §##P§
   {
      
      public static const §?##§:int = 0;
      
      public static const §`#q§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §-#r§:int = 4;
      
      public static const PARTICLE_GROUP_FOREGROUND_EFFECTS:int = 5;
      
      public static const §6w§:int = 6;
       
      
      private var §!!d§:Vector.<§#"E§>;
      
      private var §`!§:§4#[§;
      
      private var §-i§:§#"^§;
      
      public function §##P§(param1:§4#[§, param2:§#"^§)
      {
         super();
         this.§`!§ = param1;
         this.§-i§ = param2;
         this.§!!d§ = new Vector.<§#"E§>();
         var _loc3_:int = 0;
         while(_loc3_ < §6w§)
         {
            this.§!!d§[_loc3_] = new §#"E§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §4#[§
      {
         return this.§`!§;
      }
      
      public function get textureManager() : §#"^§
      {
         return this.§-i§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#"E§ = null;
         if(this.§!!d§)
         {
            while(this.§!!d§.length)
            {
               _loc1_ = this.§!!d§.pop();
               _loc1_.dispose();
            }
         }
         this.§!!d§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false, param16:String = null) : §=,§
      {
         var _loc17_:§=,§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         var _loc18_:§#"E§;
         if(_loc18_ = this.§5$<§(param2))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
         return _loc17_;
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:Number = -1, param16:Boolean = false) : void
      {
         var _loc17_:§3#z§ = new §3#z§(this.§`!§,this.§-i§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#"E§;
         if(_loc18_ = this.§5$<§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §@#<§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§<"Z§ = new §<"Z§(this.§`!§,this.§-i§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§#"E§;
         if(_loc17_ = this.§5$<§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = null) : §=,§
      {
         return new §=,§(this.§`!§,this.§-i§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!d§.length)
         {
            this.§5$<§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §[!L§(param1:int) : void
      {
         var _loc2_:§#"E§ = this.§5$<§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §@!O§(param1:int) : Sprite
      {
         return this.§5$<§(param1).sprite;
      }
      
      public function §5$<§(param1:Number) : §#"E§
      {
         if(this.§!!d§ != null)
         {
            return this.§!!d§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§[!L§(§?##§);
         var _loc1_:§#"E§ = this.§5$<§(§`#q§);
         var _loc2_:§#"E§ = this.§5$<§(§?##§);
         _loc1_.§4!3§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§#"E§ = null;
         for each(_loc3_ in this.§!!d§)
         {
            _loc3_.§8!b§(param1,param2);
         }
      }
   }
}
