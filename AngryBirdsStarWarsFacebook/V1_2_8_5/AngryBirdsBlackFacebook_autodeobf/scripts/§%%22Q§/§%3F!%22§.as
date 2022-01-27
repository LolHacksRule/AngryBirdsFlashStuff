package §%"Q§
{
   import § "-§.§6!R§;
   import §!b§.§]!s§;
   import com.angrybirds.§<!J§;
   
   public class §?!"§
   {
      
      private static const §>!6§:Number = -5 * 1000;
      
      private static const §-"%§:Number = 10 * 1000;
       
      
      private var §[#2§:Number = -5000.0;
      
      private var §#!>§:int = 0;
      
      private var §9!B§:Number = 0;
      
      private var §%"5§:Number = 0;
      
      private var §88§:String;
      
      public function §?!"§(param1:String)
      {
         super();
         this.§88§ = param1;
      }
      
      public function §7"J§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         if(this.§[#2§ > §-"%§)
         {
            _loc1_ = Math.round(1000 / this.§[#2§ * this.§#!>§);
            _loc2_ = (§<!J§.§#!L§ as §4"#§).§!n§();
            §]!s§.§]!^§(_loc1_,this.§88§,§6!R§.§%!f§,_loc2_);
         }
      }
      
      public function §9!r§(param1:Number) : void
      {
         this.§[#2§ += param1;
         if(this.§[#2§ > 0)
         {
            ++this.§#!>§;
         }
         if(this.§9!B§ != §<!J§.§&u§() || this.§%"5§ != §<!J§.§!"!§())
         {
            this.§?@§();
         }
      }
      
      public function §?@§() : void
      {
         this.§[#2§ = §>!6§;
         this.§#!>§ = 0;
         this.§9!B§ = §<!J§.§&u§();
         this.§%"5§ = §<!J§.§!"!§();
      }
   }
}
