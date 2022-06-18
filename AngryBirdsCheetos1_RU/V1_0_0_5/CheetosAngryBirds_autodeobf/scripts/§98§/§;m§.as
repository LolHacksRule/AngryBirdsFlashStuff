package §98§
{
   import §@!§.§;"§;
   import §@!§.§?! §;
   import §null §.Sprite;
   
   public class §;m§
   {
      
      public static const §&d§:int = 0;
      
      public static const §!!`§:int = 1;
      
      public static const §'g§:int = 2;
      
      public static const §?=§:int = 3;
      
      public static const final:int = 4;
      
      public static const §?!1§:int = 5;
       
      
      private var §6Z§:Vector.<§^G§>;
      
      private var §finally§:§;"§;
      
      private var §`r§:§?! §;
      
      public function §;m§(param1:§;"§, param2:§?! §)
      {
         super();
         this.§finally§ = param1;
         this.§`r§ = param2;
         this.§6Z§ = new Vector.<§^G§>();
         var _loc3_:int = 0;
         while(_loc3_ < §?!1§)
         {
            this.§6Z§[_loc3_] = new §^G§();
            _loc3_++;
         }
      }
      
      public function get §%!P§() : §;"§
      {
         return this.§finally§;
      }
      
      public function get §>A§() : §?! §
      {
         return this.§`r§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^G§ = null;
         if(this.§6Z§)
         {
            while(this.§6Z§.length)
            {
               _loc1_ = this.§6Z§.pop();
               _loc1_.dispose();
            }
         }
         this.§6Z§ = null;
      }
      
      public function §<m§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§4B§ = new §4B§(this.§finally§,this.§`r§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§^G§;
         if(_loc18_ = this.§<t§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=!F§
      {
         var _loc16_:§=!F§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§^G§;
         if(_loc17_ = this.§<t§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=!F§
      {
         return new §=!F§(this.§finally§,this.§`r§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6Z§.length)
         {
            this.§<t§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §33§(param1:int) : void
      {
         var _loc2_:§^G§ = this.§<t§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §`!9§(param1:int) : Sprite
      {
         return this.§<t§(param1).sprite;
      }
      
      public function §<t§(param1:Number) : §^G§
      {
         if(this.§6Z§ != null)
         {
            return this.§6Z§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§33§(§&d§);
         var _loc1_:§^G§ = this.§<t§(§!!`§);
         var _loc2_:§^G§ = this.§<t§(§&d§);
         _loc1_.§<z§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §@^§(param1:Number, param2:Number) : void
      {
         var _loc3_:§^G§ = null;
         for each(_loc3_ in this.§6Z§)
         {
            _loc3_.§0R§(param1,param2);
         }
      }
   }
}
