package §&!F§
{
   import §'!D§.§?!h§;
   import §7'§.§!y§;
   import §[h§.§4I§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class §,Z§
   {
      
      private static const §7&§:String = "WarmUp";
      
      private static const §5!7§:String = "AimHigh";
      
      private static const §"8§:String = "StarPlayer";
      
      private static const §>!3§:String = "GotTheSnacksBack";
      
      private static const §]3§:String = "OnFire";
      
      private static const §switch§:String = "AllStars";
       
      
      private var §3y§:Dictionary;
      
      private var §"!=§:Dictionary;
      
      public function §,Z§()
      {
         super();
         this.§-!1§();
         this.§6! §();
      }
      
      private function §-!1§() : void
      {
         this.§3y§ = new Dictionary();
         this.§3y§[§7&§] = "TextWarmUp";
         this.§3y§[§5!7§] = "TextAimHigh";
         this.§3y§[§"8§] = "TextStarPlayer";
         this.§3y§[§>!3§] = "TextGotTheSnacksBack";
         this.§3y§[§]3§] = "TextOnFire";
         this.§3y§[§switch§] = "TextAllStars";
      }
      
      private function §6! §() : void
      {
         this.§"!=§ = new Dictionary();
      }
      
      public function §=D§(param1:String) : String
      {
         if(!this.§3y§[param1])
         {
            return null;
         }
         return §4I§.getText(this.§3y§[param1]);
      }
      
      public function §1!2§(param1:String, param2:§?!h§) : Boolean
      {
         var _loc4_:MovieClip = null;
         var _loc3_:String = "MovieClip_" + param1;
         if(§!y§.§+,§(_loc3_))
         {
            _loc4_ = new §!y§.§%!C§(_loc3_)();
            param2.changeMovieClip(_loc4_);
            return true;
         }
         return false;
      }
   }
}
