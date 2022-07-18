package §6!H§
{
   public class §,#E§
   {
      
      public static const §00§:String = "bird_powerup";
      
      public static const §'"d§:String = "mighty_falcon_powerup";
      
      public static const §%"h§:String = "extra_bird_powerup";
      
      public static const §3#I§:String = "action_execute_only";
      
      public static const §&X§:String = "action_time_step";
      
      public static const §<#Q§:String = "action_engine_step";
       
      
      private var §=#H§:Vector.<§8!r§>;
      
      public function §,#E§()
      {
         super();
         this.§=#H§ = new Vector.<§8!r§>(0);
      }
      
      public function §>"m§(param1:§8!r§) : void
      {
         if(this.§=#H§.indexOf(param1) == -1)
         {
            this.§=#H§.push(param1);
         }
      }
      
      public function get §^"'§() : Vector.<§8!r§>
      {
         return this.§=#H§.concat();
      }
      
      public function §<Z§(param1:String) : §8!r§
      {
         var _loc2_:§8!r§ = null;
         for each(_loc2_ in this.§=#H§)
         {
            if(_loc2_.§="A§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
