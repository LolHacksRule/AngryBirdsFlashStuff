package §!f§
{
   import §-![§.Sprite;
   import §6`§.§2a§;
   import §6`§.§`!&§;
   
   public class §>!s§
   {
      
      public static const § !3§:int = 0;
      
      public static const §3e§:int = 1;
      
      public static const §,"$§:int = 2;
      
      public static const §>M§:int = 3;
      
      public static const §+![§:int = 4;
      
      public static const §]!a§:int = 5;
      
      public static const §@!_§:int = 6;
       
      
      private var §@1§:Vector.<§&0§>;
      
      private var §!!l§:§`!&§;
      
      private var §1!5§:§2a§;
      
      public function §>!s§(param1:§`!&§, param2:§2a§)
      {
         super();
         this.§!!l§ = param1;
         this.§1!5§ = param2;
         this.§@1§ = new Vector.<§&0§>();
         var _loc3_:int = 0;
         while(_loc3_ < §@!_§)
         {
            this.§@1§[_loc3_] = new §&0§();
            _loc3_++;
         }
      }
      
      public function get §<a§() : §`!&§
      {
         return this.§!!l§;
      }
      
      public function get § X§() : §2a§
      {
         return this.§1!5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&0§ = null;
         if(this.§@1§)
         {
            while(this.§@1§.length)
            {
               _loc1_ = this.§@1§.pop();
               _loc1_.dispose();
            }
         }
         this.§@1§ = null;
      }
      
      public function §8" §(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §@"§
      {
         var _loc16_:§@"§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§&0§;
         if(_loc17_ = this.§-r§(param2))
         {
            _loc17_.§8" §(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §`H§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§9w§ = new §9w§(this.§!!l§,this.§1!5§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§&0§;
         if(_loc18_ = this.§-r§(param3))
         {
            _loc18_.§8" §(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §@"§
      {
         return new §@"§(this.§!!l§,this.§1!5§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@1§.length)
         {
            this.§-r§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §?h§(param1:int) : void
      {
         var _loc2_:§&0§ = this.§-r§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §8!z§(param1:int) : Sprite
      {
         return this.§-r§(param1).sprite;
      }
      
      public function §-r§(param1:Number) : §&0§
      {
         if(this.§@1§ != null)
         {
            return this.§@1§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§?h§(§ !3§);
         var _loc1_:§&0§ = this.§-r§(§3e§);
         var _loc2_:§&0§ = this.§-r§(§ !3§);
         _loc1_.§>!b§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §`!Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&0§ = null;
         for each(_loc3_ in this.§@1§)
         {
            _loc3_.§"n§(param1,param2);
         }
      }
   }
}
