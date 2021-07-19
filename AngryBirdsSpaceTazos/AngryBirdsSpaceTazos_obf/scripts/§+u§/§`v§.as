package §+u§
{
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §77§.§ ",§;
   import §8!_§.§?!#§;
   import §8!_§.§]J§;
   import §`!j§.§9"!§;
   import flash.events.EventDispatcher;
   
   public class §`v§ extends EventDispatcher implements §["!§
   {
       
      
      protected var §,!w§:§ ",§;
      
      protected var §>!-§:Boolean;
      
      protected var §3u§:§=!_§;
      
      protected var §7Z§:§3!'§;
      
      protected var §6u§:§9"!§;
      
      public function §`v§(param1:§ ",§, param2:§9"!§, param3:§=!_§, param4:§3!'§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§,!w§ = param1;
               while(true)
               {
                  this.§6u§ = param2;
                  while(_loc6_)
                  {
                     this.§7Z§ = param4;
                     continue loop0;
                     loop5:
                     while(_loc6_ || param1)
                     {
                        this.init();
                        if(_loc6_ || param1)
                        {
                           addr34:
                           if(!(_loc6_ || param2))
                           {
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§>!-§ = true;
                                    continue loop5;
                                 }
                                 continue loop0;
                                 §§goto(addr34);
                              }
                              addr68:
                           }
                           return;
                           addr41:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get §?"1§() : § ",§
      {
         return this.§,!w§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §7!=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>!-§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§>!-§ = true;
         }
      }
      
      public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>!-§ = false;
         }
      }
      
      protected function §?!I§() : String
      {
         return §]J§.STATE_NAME;
      }
      
      protected function §`!e§() : String
      {
         return §?!#§.STATE_NAME;
      }
   }
}
