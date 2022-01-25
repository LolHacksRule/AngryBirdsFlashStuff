package §9!C§
{
   import §0@§.Sprite;
   import §7! §.§4n§;
   import §7! §.§6X§;
   
   public class §,!j§
   {
      
      public static const §'3§:int = 0;
      
      public static const §`!F§:int = 1;
      
      public static const §'a§:int = 2;
      
      public static const §++§:int = 3;
      
      public static const §^_§:int = 4;
      
      public static const §]![§:int = 5;
       
      
      private var § !]§:Vector.<§"!D§>;
      
      private var §'!_§:§6X§;
      
      private var §!3§:§4n§;
      
      public function §,!j§(param1:§6X§, param2:§4n§)
      {
         super();
         this.§'!_§ = param1;
         this.§!3§ = param2;
         this.§ !]§ = new Vector.<§"!D§>();
         var _loc3_:int = 0;
         while(_loc3_ < §]![§)
         {
            this.§ !]§[_loc3_] = new §"!D§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §6X§
      {
         return this.§'!_§;
      }
      
      public function get textureManager() : §4n§
      {
         return this.§!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"!D§ = null;
         if(this.§ !]§)
         {
            while(this.§ !]§.length)
            {
               _loc1_ = this.§ !]§.pop();
               _loc1_.dispose();
            }
         }
         this.§ !]§ = null;
      }
      
      public function §"_§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§?!+§ = new §?!+§(this.§'!_§,this.§!3§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§"!D§;
         if(_loc18_ = this.§"t§(param3))
         {
            _loc18_.§4!2§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §4!2§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3!f§
      {
         var _loc16_:§3!f§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§"!D§;
         if(_loc17_ = this.§"t§(param2))
         {
            _loc17_.§4!2§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3!f§
      {
         return new §3!f§(this.§'!_§,this.§!3§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !]§.length)
         {
            this.§"t§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §?=§(param1:int) : void
      {
         var _loc2_:§"!D§ = this.§"t§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §&!L§(param1:int) : Sprite
      {
         return this.§"t§(param1).sprite;
      }
      
      public function §"t§(param1:Number) : §"!D§
      {
         if(this.§ !]§ != null)
         {
            return this.§ !]§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§?=§(§'3§);
         var _loc1_:§"!D§ = this.§"t§(§`!F§);
         var _loc2_:§"!D§ = this.§"t§(§'3§);
         _loc1_.§%b§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function § !l§(param1:Number, param2:Number) : void
      {
         var _loc3_:§"!D§ = null;
         for each(_loc3_ in this.§ !]§)
         {
            _loc3_.§51§(param1,param2);
         }
      }
   }
}
