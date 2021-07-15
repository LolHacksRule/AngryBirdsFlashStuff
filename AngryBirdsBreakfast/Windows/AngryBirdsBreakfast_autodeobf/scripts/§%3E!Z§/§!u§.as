package §>!Z§
{
   import § ! §.§5!x§;
   import § ! §.§?b§;
   import §6![§.Sprite;
   
   public class §!u§
   {
      
      public static const §?d§:int = 0;
      
      public static const §%c§:int = 1;
      
      public static const §;W§:int = 2;
      
      public static const §54§:int = 3;
      
      public static const §"!q§:int = 4;
      
      public static const §?!+§:int = 5;
      
      public static const §5k§:int = 6;
       
      
      private var §,m§:Vector.<§&""§>;
      
      private var §^!f§:§?b§;
      
      private var §`8§:§5!x§;
      
      public function §!u§(param1:§?b§, param2:§5!x§)
      {
         super();
         this.§^!f§ = param1;
         this.§`8§ = param2;
         this.§,m§ = new Vector.<§&""§>();
         var _loc3_:int = 0;
         while(_loc3_ < §5k§)
         {
            this.§,m§[_loc3_] = new §&""§();
            _loc3_++;
         }
      }
      
      public function get §5-§() : §?b§
      {
         return this.§^!f§;
      }
      
      public function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&""§ = null;
         if(this.§,m§)
         {
            while(this.§,m§.length)
            {
               _loc1_ = this.§,m§.pop();
               _loc1_.dispose();
            }
         }
         this.§,m§ = null;
      }
      
      public function §-!,§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2_§
      {
         var _loc16_:§2_§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§&""§;
         if(_loc17_ = this.§5!8§(param2))
         {
            _loc17_.§-!,§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §+!v§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§68§ = new §68§(this.§^!f§,this.§`8§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§&""§;
         if(_loc18_ = this.§5!8§(param3))
         {
            _loc18_.§-!,§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2_§
      {
         return new §2_§(this.§^!f§,this.§`8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,m§.length)
         {
            this.§5!8§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §0!;§(param1:int) : void
      {
         var _loc2_:§&""§ = this.§5!8§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §2]§(param1:int) : Sprite
      {
         return this.§5!8§(param1).sprite;
      }
      
      public function §5!8§(param1:Number) : §&""§
      {
         if(this.§,m§ != null)
         {
            return this.§,m§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§0!;§(§?d§);
         var _loc1_:§&""§ = this.§5!8§(§%c§);
         var _loc2_:§&""§ = this.§5!8§(§?d§);
         _loc1_.§+!,§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&""§ = null;
         for each(_loc3_ in this.§,m§)
         {
            _loc3_.§7!d§(param1,param2);
         }
      }
   }
}
