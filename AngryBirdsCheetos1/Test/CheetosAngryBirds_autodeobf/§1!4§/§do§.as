package §1!4§
{
   import §9t§.§&!W§;
   import §9t§.§=!>§;
   import §^a§.Sprite;
   
   public class §do§
   {
      
      public static const §`!Z§:int = 0;
      
      public static const §[N§:int = 1;
      
      public static const §&!d§:int = 2;
      
      public static const §+!c§:int = 3;
      
      public static const §+Z§:int = 4;
      
      public static const §'U§:int = 5;
      
      public static const §2t§:int = 6;
       
      
      private var §6D§:Vector.<§3!^§>;
      
      protected var §^H§:§&!W§;
      
      protected var §>!K§:§=!>§;
      
      public function §do§(param1:§&!W§, param2:§=!>§)
      {
         super();
         this.§^H§ = param1;
         this.§>!K§ = param2;
         this.§6D§ = new Vector.<§3!^§>();
         var _loc3_:int = 0;
         while(_loc3_ < §2t§)
         {
            this.§6D§[_loc3_] = new §3!^§();
            _loc3_++;
         }
      }
      
      public function get §#U§() : §&!W§
      {
         return this.§^H§;
      }
      
      public function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3!^§ = null;
         if(this.§6D§)
         {
            while(this.§6D§.length)
            {
               _loc1_ = this.§6D§.pop();
               _loc1_.dispose();
            }
         }
         this.§6D§ = null;
      }
      
      public function §2!L§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§3J§ = new §3J§(this.§^H§,this.§>!K§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§3!^§;
         if(_loc18_ = this.§[P§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!?§
      {
         var _loc16_:§7!?§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§3!^§;
         if(_loc17_ = this.§[P§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!?§
      {
         return new §7!?§(this.§^H§,this.§>!K§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6D§.length)
         {
            this.§[P§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §#9§(param1:int) : void
      {
         var _loc2_:§3!^§ = this.§[P§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §#!g§(param1:int) : Sprite
      {
         return this.§[P§(param1).sprite;
      }
      
      public function §[P§(param1:Number) : §3!^§
      {
         if(this.§6D§ != null)
         {
            return this.§6D§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§#9§(§`!Z§);
         var _loc1_:§3!^§ = this.§[P§(§[N§);
         var _loc2_:§3!^§ = this.§[P§(§`!Z§);
         _loc1_.§[%§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3!^§ = null;
         for each(_loc3_ in this.§6D§)
         {
            _loc3_.§ !h§(param1,param2);
         }
      }
   }
}
