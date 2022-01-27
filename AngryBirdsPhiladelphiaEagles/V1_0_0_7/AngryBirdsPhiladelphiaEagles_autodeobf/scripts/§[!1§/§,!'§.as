package §[!1§
{
   import §+f§.§4!8§;
   import §+f§.§@d§;
   import §4G§.Sprite;
   
   public class §,!'§
   {
      
      public static const §6!"§:int = 0;
      
      public static const §!!-§:int = 1;
      
      public static const §<V§:int = 2;
      
      public static const §=8§:int = 3;
      
      public static const §?Y§:int = 4;
      
      public static const §<b§:int = 5;
       
      
      private var §%!F§:Vector.<§%F§>;
      
      private var §,!J§:§@d§;
      
      private var §;?§:§4!8§;
      
      public function §,!'§(param1:§@d§, param2:§4!8§)
      {
         super();
         this.§,!J§ = param1;
         this.§;?§ = param2;
         this.§%!F§ = new Vector.<§%F§>();
         var _loc3_:int = 0;
         while(_loc3_ < §<b§)
         {
            this.§%!F§[_loc3_] = new §%F§();
            _loc3_++;
         }
      }
      
      public function get §94§() : §@d§
      {
         return this.§,!J§;
      }
      
      public function get textureManager() : §4!8§
      {
         return this.§;?§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%F§ = null;
         if(this.§%!F§)
         {
            while(this.§%!F§.length)
            {
               _loc1_ = this.§%!F§.pop();
               _loc1_.dispose();
            }
         }
         this.§%!F§ = null;
      }
      
      public function §&!#§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§0!E§ = new §0!E§(this.§,!J§,this.§;?§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§%F§;
         if(_loc18_ = this.§18§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § J§
      {
         var _loc16_:§ J§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%F§;
         if(_loc17_ = this.§18§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § J§
      {
         return new § J§(this.§,!J§,this.§;?§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!F§.length)
         {
            this.§18§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §2g§(param1:int) : void
      {
         var _loc2_:§%F§ = this.§18§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function § g§(param1:int) : Sprite
      {
         return this.§18§(param1).sprite;
      }
      
      public function §18§(param1:Number) : §%F§
      {
         if(this.§%!F§ != null)
         {
            return this.§%!F§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§2g§(§6!"§);
         var _loc1_:§%F§ = this.§18§(§!!-§);
         var _loc2_:§%F§ = this.§18§(§6!"§);
         _loc1_.§'s§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §3]§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%F§ = null;
         for each(_loc3_ in this.§%!F§)
         {
            _loc3_.§%!'§(param1,param2);
         }
      }
   }
}
