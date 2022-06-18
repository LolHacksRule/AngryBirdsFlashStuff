package §!D§
{
   import §#!@§.Sprite;
   import §[v§.§0&§;
   import §[v§.§7e§;
   
   public class §5O§
   {
      
      public static const §3J§:int = 0;
      
      public static const §#!K§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §?3§:int = 4;
      
      public static const §]q§:int = 5;
      
      public static const §4!D§:int = 6;
       
      
      private var §%c§:Vector.<§'J§>;
      
      protected var §>&§:§7e§;
      
      protected var §4d§:§0&§;
      
      public function §5O§(param1:§7e§, param2:§0&§)
      {
         super();
         this.§>&§ = param1;
         this.§4d§ = param2;
         this.§%c§ = new Vector.<§'J§>();
         var _loc3_:int = 0;
         while(_loc3_ < §4!D§)
         {
            this.§%c§[_loc3_] = new §'J§();
            _loc3_++;
         }
      }
      
      public function get §%F§() : §7e§
      {
         return this.§>&§;
      }
      
      public function get textureManager() : §0&§
      {
         return this.§4d§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'J§ = null;
         if(this.§%c§)
         {
            while(this.§%c§.length)
            {
               _loc1_ = this.§%c§.pop();
               _loc1_.dispose();
            }
         }
         this.§%c§ = null;
      }
      
      public function §5!&§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§?!§ = new §?!§(this.§>&§,this.§4d§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§'J§;
         if(_loc18_ = this.§=!+§(param3))
         {
            _loc18_.§3S§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §3S§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7D§
      {
         var _loc16_:§7D§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§'J§;
         if(_loc17_ = this.§=!+§(param2))
         {
            _loc17_.§3S§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7D§
      {
         return new §7D§(this.§>&§,this.§4d§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%c§.length)
         {
            this.§=!+§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §1,§(param1:int) : void
      {
         var _loc2_:§'J§ = this.§=!+§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §'!K§(param1:int) : Sprite
      {
         return this.§=!+§(param1).sprite;
      }
      
      public function §=!+§(param1:Number) : §'J§
      {
         if(this.§%c§ != null)
         {
            return this.§%c§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§1,§(§3J§);
         var _loc1_:§'J§ = this.§=!+§(§#!K§);
         var _loc2_:§'J§ = this.§=!+§(§3J§);
         _loc1_.§>w§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §,P§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'J§ = null;
         for each(_loc3_ in this.§%c§)
         {
            _loc3_.§`[§(param1,param2);
         }
      }
   }
}
