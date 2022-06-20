package §3!Z§
{
   import §?"<§.§&!B§;
   import §?"<§.§<"!§;
   import §]&§.Sprite;
   
   public class §,>§
   {
      
      public static const §=1§:int = 0;
      
      public static const §2"=§:int = 1;
      
      public static const § else§:int = 2;
      
      public static const §^!<§:int = 3;
      
      public static const §,L§:int = 4;
      
      public static const §!!g§:int = 5;
       
      
      private var §6"3§:Vector.<§?!s§>;
      
      private var §;!z§:§&!B§;
      
      private var §9s§:§<"!§;
      
      public function §,>§(param1:§&!B§, param2:§<"!§)
      {
         super();
         this.§;!z§ = param1;
         this.§9s§ = param2;
         this.§6"3§ = new Vector.<§?!s§>();
         var _loc3_:int = 0;
         while(_loc3_ < §!!g§)
         {
            this.§6"3§[_loc3_] = new §?!s§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §&!B§
      {
         return this.§;!z§;
      }
      
      public function get textureManager() : §<"!§
      {
         return this.§9s§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!s§ = null;
         if(this.§6"3§)
         {
            while(this.§6"3§.length)
            {
               _loc1_ = this.§6"3§.pop();
               _loc1_.dispose();
            }
         }
         this.§6"3§ = null;
      }
      
      public function §`K§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§^!l§ = new §^!l§(this.§;!z§,this.§9s§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§?!s§;
         if(_loc18_ = this.§;!6§(param3))
         {
            _loc18_.§&!J§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §&!J§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5!$§
      {
         var _loc16_:§5!$§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§?!s§;
         if(_loc17_ = this.§;!6§(param2))
         {
            _loc17_.§&!J§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5!$§
      {
         return new §5!$§(this.§;!z§,this.§9s§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6"3§.length)
         {
            this.§;!6§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §;!A§(param1:int) : void
      {
         var _loc2_:§?!s§ = this.§;!6§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §>`§(param1:int) : Sprite
      {
         return this.§;!6§(param1).sprite;
      }
      
      public function §;!6§(param1:Number) : §?!s§
      {
         if(this.§6"3§ != null)
         {
            return this.§6"3§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§;!A§(§=1§);
         var _loc1_:§?!s§ = this.§;!6§(§2"=§);
         var _loc2_:§?!s§ = this.§;!6§(§=1§);
         _loc1_.§&d§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §6!>§(param1:Number, param2:Number) : void
      {
         var _loc3_:§?!s§ = null;
         for each(_loc3_ in this.§6"3§)
         {
            _loc3_.§0!-§(param1,param2);
         }
      }
   }
}
