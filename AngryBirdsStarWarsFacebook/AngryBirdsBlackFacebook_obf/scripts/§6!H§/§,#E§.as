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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §00§ = "bird_powerup";
            while(true)
            {
               §'"d§ = "mighty_falcon_powerup";
            }
            addr97:
         }
         loop1:
         while(true)
         {
            §%"h§ = "extra_bird_powerup";
            while(true)
            {
               §3#I§ = "action_execute_only";
               loop3:
               while(_loc2_)
               {
                  §&X§ = "action_time_step";
                  while(true)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop1;
                     }
                     continue loop3;
                     addr66:
                     §<#Q§ = "action_engine_step";
                     if(_loc2_ || §,#E§)
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private var §=#H§:Vector.<§8!r§>;
      
      public function §,#E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            do
            {
               this.§=#H§ = new Vector.<§8!r§>(0);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §>"m§(param1:§8!r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§=#H§.indexOf(param1) == -1)
            {
               if(_loc2_ || param1)
               {
                  this.§=#H§.push(param1);
               }
            }
         }
      }
      
      public function get §^"'§() : Vector.<§8!r§>
      {
         return this.§=#H§.concat();
      }
      
      public function §<Z§(param1:String) : §8!r§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8!r§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§=#H§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || this))
               {
                  break;
               }
               if(_loc2_.§="A§ == param1)
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
   }
}
