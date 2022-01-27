package §'"A§
{
   public class §3"x§
   {
      
      public static const § [§:String = "bird_powerup";
      
      public static const §<!j§:String = "mighty_falcon_powerup";
      
      public static const §""J§:String = "extra_bird_powerup";
      
      public static const §#!Q§:String = "action_execute_only";
      
      public static const §"!0§:String = "action_time_step";
      
      public static const §1s§:String = "action_engine_step";
       
      
      private var §;!G§:Vector.<§!#2§>;
      
      public function §3"x§()
      {
         super();
         this.§;!G§ = new Vector.<§!#2§>(0);
      }
      
      public function §@8§(param1:§!#2§) : void
      {
         if(this.§;!G§.indexOf(param1) == -1)
         {
            this.§;!G§.push(param1);
         }
      }
      
      public function get §2d§() : Vector.<§!#2§>
      {
         return this.§;!G§.concat();
      }
      
      public function §%!u§(param1:String) : §!#2§
      {
         var _loc2_:§!#2§ = null;
         for each(_loc2_ in this.§;!G§)
         {
            if(_loc2_.§1!b§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
