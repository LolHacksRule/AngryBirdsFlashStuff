package §<"c§
{
   import §#!'§.§6"]§;
   import §&#H§.§3#J§;
   import com.angrybirds.§,!q§;
   
   public class §2"W§
   {
      
      private static const §`G§:Number = -5 * 1000;
      
      private static const §6!z§:Number = 10 * 1000;
       
      
      private var §7!-§:Number = -5000.0;
      
      private var §4-§:int = 0;
      
      private var §0"7§:Number = 0;
      
      private var §[!t§:Number = 0;
      
      private var §@!F§:String;
      
      public function §2"W§(param1:String)
      {
         super();
         this.§@!F§ = param1;
      }
      
      public function §5"]§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         if(this.§7!-§ > §6!z§)
         {
            _loc1_ = Math.round(1000 / this.§7!-§ * this.§4-§);
            _loc2_ = (§,!q§.§>#D§ as §4#;§).§>!Z§();
            §6"]§.§]F§(_loc1_,this.§@!F§,§3#J§.§3!s§,_loc2_);
         }
      }
      
      public function §4K§(param1:Number) : void
      {
         this.§7!-§ += param1;
         if(this.§7!-§ > 0)
         {
            ++this.§4-§;
         }
         if(this.§0"7§ != §,!q§.§0#X§() || this.§[!t§ != §,!q§.§[">§())
         {
            this.§8Q§();
         }
      }
      
      public function §8Q§() : void
      {
         this.§7!-§ = §`G§;
         this.§4-§ = 0;
         this.§0"7§ = §,!q§.§0#X§();
         this.§[!t§ = §,!q§.§[">§();
      }
   }
}
