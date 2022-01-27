package §@b§
{
   public class §&M§
   {
      
      public static const §4!F§:String = "bird_powerup";
      
      public static const §0!f§:String = "mighty_falcon_powerup";
      
      public static const §5"z§:String = "extra_bird_powerup";
      
      public static const §@!8§:String = "action_execute_only";
      
      public static const §="6§:String = "action_time_step";
      
      public static const §["K§:String = "action_engine_step";
       
      
      private var §-"Z§:Vector.<§1"0§>;
      
      public function §&M§()
      {
         super();
         this.§-"Z§ = new Vector.<§1"0§>(0);
      }
      
      public function §9;§(param1:§1"0§) : void
      {
         if(this.§-"Z§.indexOf(param1) == -1)
         {
            this.§-"Z§.push(param1);
         }
      }
      
      public function get §8"A§() : Vector.<§1"0§>
      {
         return this.§-"Z§.concat();
      }
      
      public function §9!r§(param1:String) : §1"0§
      {
         var _loc2_:§1"0§ = null;
         for each(_loc2_ in this.§-"Z§)
         {
            if(_loc2_.§0B§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
