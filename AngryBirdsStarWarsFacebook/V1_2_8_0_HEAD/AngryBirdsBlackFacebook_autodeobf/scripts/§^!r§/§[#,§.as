package §^!r§
{
   import §+!4§.§&!"§;
   import §3"H§.§"w§;
   import §3"H§.§<K§;
   import §3"H§.§@!g§;
   import §^V§.§8F§;
   import §^V§.Logging;
   import flash.utils.getTimer;
   
   public class §[#,§ implements §8F§
   {
       
      
      private var §'!G§:Class;
      
      private var §3<§:String;
      
      private var §1B§:int = -1;
      
      private var §%"d§:Boolean = true;
      
      private var §3!9§:Boolean = false;
      
      private var §5R§:Boolean = true;
      
      public function §[#,§(param1:*)
      {
         super();
         this.§'!G§ = param1;
         if(this.§'!G§ == Logging && Logging.§0"O§() != Logging.§="9§)
         {
            this.§3!9§ = true;
         }
         else
         {
            this.§3<§ = §<K§.§^m§(param1);
         }
      }
      
      public function info(... rest) : void
      {
         this.log.apply(this,[§&!"§.INFO].concat(rest));
      }
      
      public function debug(... rest) : void
      {
         this.log.apply(this,[§&!"§.DEBUG].concat(rest));
      }
      
      public function error(... rest) : void
      {
         this.log.apply(this,[§&!"§.ERROR].concat(rest));
      }
      
      public function §2">§(... rest) : void
      {
         this.log.apply(this,[§&!"§.WARN].concat(rest));
      }
      
      public function fatal(... rest) : void
      {
         this.log.apply(this,[§&!"§.FATAL].concat(rest));
      }
      
      public function log(param1:int, ... rest) : void
      {
         if(Logging.§8N§() > param1 || !this.§5R§)
         {
            return;
         }
         var _loc3_:Number = getTimer();
         var _loc4_:String = §"w§.§[!3§(param1);
         var _loc5_:String = §@!g§.§;!L§(this.§3o§(),rest);
         Logging.§""W§(this.§^m§(),_loc4_,_loc5_);
      }
      
      private function §^m§() : String
      {
         if(this.§3!9§)
         {
            return Logging.§0"O§();
         }
         return this.§3<§;
      }
      
      public function §@#<§(param1:int) : void
      {
         this.§1B§ = param1;
         this.§%"d§ = false;
      }
      
      public function §3o§() : int
      {
         if(this.§%"d§)
         {
            return Logging.§3o§();
         }
         return this.§1B§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§5R§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§5R§ = param1;
      }
   }
}
