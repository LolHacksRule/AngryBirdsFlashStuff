package §?!P§
{
   import § !%§.§!!&§;
   import § !%§.§7!>§;
   import §&c§.Sprite;
   
   public class §4!-§
   {
      
      public static const §'P§:int = 0;
      
      public static const § <§:int = 1;
      
      public static const §4=§:int = 2;
      
      public static const §&#§:int = 3;
      
      public static const §^!D§:int = 4;
      
      public static const §@#§:int = 5;
       
      
      private var §]=§:Vector.<§#A§>;
      
      private var §2X§:§!!&§;
      
      private var §9M§:§7!>§;
      
      public function §4!-§(param1:§!!&§, param2:§7!>§)
      {
         super();
         this.§2X§ = param1;
         this.§9M§ = param2;
         this.§]=§ = new Vector.<§#A§>();
         var _loc3_:int = 0;
         while(_loc3_ < §@#§)
         {
            this.§]=§[_loc3_] = new §#A§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §!!&§
      {
         return this.§2X§;
      }
      
      public function get textureManager() : §7!>§
      {
         return this.§9M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#A§ = null;
         if(this.§]=§)
         {
            while(this.§]=§.length)
            {
               _loc1_ = this.§]=§.pop();
               _loc1_.dispose();
            }
         }
         this.§]=§ = null;
      }
      
      public function §3!3§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§,!;§ = new §,!;§(this.§2X§,this.§9M§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#A§;
         if(_loc18_ = this.§7D§(param3))
         {
            _loc18_.§ D§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function § D§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §65§
      {
         var _loc16_:§65§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#A§;
         if(_loc17_ = this.§7D§(param2))
         {
            _loc17_.§ D§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §65§
      {
         return new §65§(this.§2X§,this.§9M§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]=§.length)
         {
            this.§7D§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §!!m§(param1:int) : void
      {
         var _loc2_:§#A§ = this.§7D§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §5!K§(param1:int) : Sprite
      {
         return this.§7D§(param1).sprite;
      }
      
      public function §7D§(param1:Number) : §#A§
      {
         if(this.§]=§ != null)
         {
            return this.§]=§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§!!m§(§'P§);
         var _loc1_:§#A§ = this.§7D§(§ <§);
         var _loc2_:§#A§ = this.§7D§(§'P§);
         _loc1_.§=!V§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §-B§(param1:Number, param2:Number) : void
      {
         var _loc3_:§#A§ = null;
         for each(_loc3_ in this.§]=§)
         {
            _loc3_.§%-§(param1,param2);
         }
      }
   }
}
