package §3g§
{
   import §-!f§.Sprite;
   import §6_§.§,!>§;
   import §6_§.§,^§;
   
   public class §`O§
   {
      
      public static const §0X§:int = 0;
      
      public static const §<s§:int = 1;
      
      public static const §0i§:int = 2;
      
      public static const §#!`§:int = 3;
      
      public static const § i§:int = 4;
      
      public static const §,"3§:int = 5;
      
      public static const §4"$§:int = 6;
       
      
      private var §^q§:Vector.<§[$§>;
      
      private var §8!G§:§,^§;
      
      private var §'+§:§,!>§;
      
      public function §`O§(param1:§,^§, param2:§,!>§)
      {
         super();
         this.§8!G§ = param1;
         this.§'+§ = param2;
         this.§^q§ = new Vector.<§[$§>();
         var _loc3_:int = 0;
         while(_loc3_ < §4"$§)
         {
            this.§^q§[_loc3_] = new §[$§();
            _loc3_++;
         }
      }
      
      public function get §8!3§() : §,^§
      {
         return this.§8!G§;
      }
      
      public function get §`!`§() : §,!>§
      {
         return this.§'+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[$§ = null;
         if(this.§^q§)
         {
            while(this.§^q§.length)
            {
               _loc1_ = this.§^q§.pop();
               _loc1_.dispose();
            }
         }
         this.§^q§ = null;
      }
      
      public function §`q§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §?!d§
      {
         var _loc16_:§?!d§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§[$§;
         if(_loc17_ = this.§,W§(param2))
         {
            _loc17_.§`q§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §5!s§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§<L§ = new §<L§(this.§8!G§,this.§'+§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§[$§;
         if(_loc18_ = this.§,W§(param3))
         {
            _loc18_.§`q§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §?!d§
      {
         return new §?!d§(this.§8!G§,this.§'+§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^q§.length)
         {
            this.§,W§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function § +§(param1:int) : void
      {
         var _loc2_:§[$§ = this.§,W§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §9!2§(param1:int) : Sprite
      {
         return this.§,W§(param1).sprite;
      }
      
      public function §,W§(param1:Number) : §[$§
      {
         if(this.§^q§ != null)
         {
            return this.§^q§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§ +§(§0X§);
         var _loc1_:§[$§ = this.§,W§(§<s§);
         var _loc2_:§[$§ = this.§,W§(§0X§);
         _loc1_.§4!B§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function § ",§(param1:Number, param2:Number) : void
      {
         var _loc3_:§[$§ = null;
         for each(_loc3_ in this.§^q§)
         {
            _loc3_.§ !t§(param1,param2);
         }
      }
   }
}
