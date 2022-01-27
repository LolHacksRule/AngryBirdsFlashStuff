package §!X§
{
   import §0R§.§0!8§;
   import §9!!§.§=!S§;
   import com.angrybirds.§;!e§;
   
   public class §="#§
   {
      
      private static const §]!v§:Number = -5 * 1000;
      
      private static const §?!k§:Number = 10 * 1000;
       
      
      private var §<"#§:Number = -5000.0;
      
      private var §6"P§:int = 0;
      
      private var §;!b§:Number = 0;
      
      private var §6W§:Number = 0;
      
      private var §6B§:String;
      
      public function §="#§(param1:String)
      {
         super();
         this.§6B§ = param1;
      }
      
      public function §7!5§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         if(this.§<"#§ > §?!k§)
         {
            _loc1_ = Math.round(1000 / this.§<"#§ * this.§6"P§);
            _loc2_ = (§;!e§.§6!v§ as §;"@§).§3!g§();
            §0!8§.§[=§(_loc1_,this.§6B§,§=!S§.§&!n§,_loc2_);
         }
      }
      
      public function §&]§(param1:Number) : void
      {
         this.§<"#§ += param1;
         if(this.§<"#§ > 0)
         {
            ++this.§6"P§;
         }
         if(this.§;!b§ != §;!e§.§6K§() || this.§6W§ != §;!e§.§?!Q§())
         {
            this.§[!6§();
         }
      }
      
      public function §[!6§() : void
      {
         this.§<"#§ = §]!v§;
         this.§6"P§ = 0;
         this.§;!b§ = §;!e§.§6K§();
         this.§6W§ = §;!e§.§?!Q§();
      }
   }
}
