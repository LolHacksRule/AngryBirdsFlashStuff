package §,#,§
{
   import §%"N§.§5#z§;
   
   public class §>#g§ extends §1!P§
   {
      
      public static const §=-§:String = "VirtualCurrency";
      
      public static const §#I§:String = "Bird Coins";
       
      
      private var §"!W§:int = 0;
      
      public function §>#g§(param1:Object)
      {
         super(param1);
      }
      
      public function get §#"+§() : int
      {
         return this.§"!W§;
      }
      
      public function §="c§(param1:int) : void
      {
         this.§?"K§(this.§"!W§ + param1);
      }
      
      public function §?"K§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§"!W§;
         var _loc4_:int = param1 - _loc3_;
         this.§"!W§ = param1;
         if(!param2)
         {
            this.§3N§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §3N§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §5#z§(§5#z§.§?"P§,false,false,param1,this.§"!W§));
         }
      }
   }
}
