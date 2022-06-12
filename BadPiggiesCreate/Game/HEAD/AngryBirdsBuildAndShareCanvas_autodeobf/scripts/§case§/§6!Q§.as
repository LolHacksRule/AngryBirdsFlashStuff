package §case§
{
   import §+!-§.Sprite;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   
   public class §6!Q§
   {
      
      public static const §#6§:int = 0;
      
      public static const §;"#§:int = 1;
      
      public static const §!"%§:int = 2;
      
      public static const §+f§:int = 3;
      
      public static const §2!A§:int = 4;
      
      public static const §3E§:int = 5;
       
      
      private var §<p§:Vector.<§%!'§>;
      
      protected var §#"@§:§5!O§;
      
      protected var §7k§:§="<§;
      
      public function §6!Q§(param1:§5!O§, param2:§="<§)
      {
         super();
         this.§#"@§ = param1;
         this.§7k§ = param2;
         this.§<p§ = new Vector.<§%!'§>();
         var _loc3_:int = 0;
         while(_loc3_ < §3E§)
         {
            this.§<p§[_loc3_] = new §%!'§();
            _loc3_++;
         }
      }
      
      public function get §00§() : §5!O§
      {
         return this.§#"@§;
      }
      
      public function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!'§ = null;
         if(this.§<p§)
         {
            while(this.§<p§.length)
            {
               _loc1_ = this.§<p§.pop();
               _loc1_.dispose();
            }
         }
         this.§<p§ = null;
      }
      
      public function §-"<§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§]"8§ = new §]"8§(this.§#"@§,this.§7k§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§%!'§;
         if(_loc18_ = this.§3!=§(param3))
         {
            _loc18_.§'p§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §'p§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`!E§
      {
         var _loc16_:§`!E§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%!'§;
         if(_loc17_ = this.§3!=§(param2))
         {
            _loc17_.§'p§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`!E§
      {
         return new §`!E§(this.§#"@§,this.§7k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<p§.length)
         {
            this.§3!=§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function § "%§(param1:int) : void
      {
         var _loc2_:§%!'§ = this.§3!=§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §#!D§(param1:int) : Sprite
      {
         return this.§3!=§(param1).sprite;
      }
      
      public function §3!=§(param1:Number) : §%!'§
      {
         if(this.§<p§ != null)
         {
            return this.§<p§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§ "%§(§#6§);
         var _loc1_:§%!'§ = this.§3!=§(§;"#§);
         var _loc2_:§%!'§ = this.§3!=§(§#6§);
         _loc1_.§%>§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%!'§ = null;
         for each(_loc3_ in this.§<p§)
         {
            _loc3_.§8!l§(param1,param2);
         }
      }
   }
}
