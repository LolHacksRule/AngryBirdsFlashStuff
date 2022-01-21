package §2!`§
{
   import §5!l§.§ !D§;
   import §5!l§.§!,§;
   import §5x§.Sprite;
   
   public class §3F§
   {
      
      public static const §@!C§:int = 0;
      
      public static const §44§:int = 1;
      
      public static const §15§:int = 2;
      
      public static const §![§:int = 3;
      
      public static const §!T§:int = 4;
      
      public static const § !Z§:int = 5;
       
      
      private var §`#§:Vector.<§,[§>;
      
      private var §=V§:§!,§;
      
      private var §8!b§:§ !D§;
      
      public function §3F§(param1:§!,§, param2:§ !D§)
      {
         super();
         this.§=V§ = param1;
         this.§8!b§ = param2;
         this.§`#§ = new Vector.<§,[§>();
         var _loc3_:int = 0;
         while(_loc3_ < § !Z§)
         {
            this.§`#§[_loc3_] = new §,[§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §!,§
      {
         return this.§=V§;
      }
      
      public function get textureManager() : § !D§
      {
         return this.§8!b§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,[§ = null;
         if(this.§`#§)
         {
            while(this.§`#§.length)
            {
               _loc1_ = this.§`#§.pop();
               _loc1_.dispose();
            }
         }
         this.§`#§ = null;
      }
      
      public function §%!9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§&&§ = new §&&§(this.§=V§,this.§8!b§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§,[§;
         if(_loc18_ = this.§#+§(param3))
         {
            _loc18_.§;!G§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §;!G§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8!;§
      {
         var _loc16_:§8!;§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§,[§;
         if(_loc17_ = this.§#+§(param2))
         {
            _loc17_.§;!G§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8!;§
      {
         return new §8!;§(this.§=V§,this.§8!b§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`#§.length)
         {
            this.§#+§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §4!0§(param1:int) : void
      {
         var _loc2_:§,[§ = this.§#+§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §6!-§(param1:int) : Sprite
      {
         return this.§#+§(param1).sprite;
      }
      
      public function §#+§(param1:Number) : §,[§
      {
         if(this.§`#§ != null)
         {
            return this.§`#§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§4!0§(§@!C§);
         var _loc1_:§,[§ = this.§#+§(§44§);
         var _loc2_:§,[§ = this.§#+§(§@!C§);
         _loc1_.§+#§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §8!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:§,[§ = null;
         for each(_loc3_ in this.§`#§)
         {
            _loc3_.§;7§(param1,param2);
         }
      }
   }
}
