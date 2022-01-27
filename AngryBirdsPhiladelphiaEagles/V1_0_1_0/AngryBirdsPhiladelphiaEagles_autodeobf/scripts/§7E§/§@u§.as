package §7E§
{
   import § !N§.§]!P§;
   import § !N§.§`v§;
   import §3H§.Sprite;
   
   public class §@u§
   {
      
      public static const § true§:int = 0;
      
      public static const §+1§:int = 1;
      
      public static const §`!8§:int = 2;
      
      public static const §&&§:int = 3;
      
      public static const §-!J§:int = 4;
      
      public static const §3M§:int = 5;
       
      
      private var §?!?§:Vector.<§+!<§>;
      
      private var §8s§:§]!P§;
      
      private var §<!-§:§`v§;
      
      public function §@u§(param1:§]!P§, param2:§`v§)
      {
         super();
         this.§8s§ = param1;
         this.§<!-§ = param2;
         this.§?!?§ = new Vector.<§+!<§>();
         var _loc3_:int = 0;
         while(_loc3_ < §3M§)
         {
            this.§?!?§[_loc3_] = new §+!<§();
            _loc3_++;
         }
      }
      
      public function get §4!C§() : §]!P§
      {
         return this.§8s§;
      }
      
      public function get textureManager() : §`v§
      {
         return this.§<!-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!<§ = null;
         if(this.§?!?§)
         {
            while(this.§?!?§.length)
            {
               _loc1_ = this.§?!?§.pop();
               _loc1_.dispose();
            }
         }
         this.§?!?§ = null;
      }
      
      public function §+V§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§#$§ = new §#$§(this.§8s§,this.§<!-§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§+!<§;
         if(_loc18_ = this.§<A§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^A§
      {
         var _loc16_:§^A§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§+!<§;
         if(_loc17_ = this.§<A§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^A§
      {
         return new §^A§(this.§8s§,this.§<!-§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!?§.length)
         {
            this.§<A§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §%>§(param1:int) : void
      {
         var _loc2_:§+!<§ = this.§<A§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §6!=§(param1:int) : Sprite
      {
         return this.§<A§(param1).sprite;
      }
      
      public function §<A§(param1:Number) : §+!<§
      {
         if(this.§?!?§ != null)
         {
            return this.§?!?§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§%>§(§ true§);
         var _loc1_:§+!<§ = this.§<A§(§+1§);
         var _loc2_:§+!<§ = this.§<A§(§ true§);
         _loc1_.§9!0§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§+!<§ = null;
         for each(_loc3_ in this.§?!?§)
         {
            _loc3_.§'T§(param1,param2);
         }
      }
   }
}
