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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§'!G§ = param1;
               loop1:
               while(true)
               {
                  §§push(this.§'!G§ == Logging);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    while(true)
                                    {
                                       §§push(Logging.§0"O§() == Logging.§="9§);
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc2_)
                                       {
                                          §§push(!§§pop());
                                          continue loop2;
                                       }
                                       §§goto(addr119);
                                    }
                                    continue loop2;
                                    addr120:
                                 }
                                 while(true)
                                 {
                                    this.§3!9§ = true;
                                    break loop5;
                                 }
                              }
                              break;
                           }
                           this.§3<§ = §<K§.§^m§(param1);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        while(_loc2_)
                        {
                           continue loop0;
                        }
                        addr25:
                        return;
                        addr80:
                     }
                     while(true)
                     {
                        §§pop();
                     }
                     addr119:
                     §§goto(addr120);
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function info(... rest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.log.apply(this,[§&!"§.INFO].concat(rest));
         }
      }
      
      public function debug(... rest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.log.apply(this,[§&!"§.DEBUG].concat(rest));
         }
      }
      
      public function error(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.log.apply(this,[§&!"§.ERROR].concat(rest));
         }
      }
      
      public function §2">§(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.log.apply(this,[§&!"§.WARN].concat(rest));
         }
      }
      
      public function fatal(... rest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.log.apply(this,[§&!"§.FATAL].concat(rest));
         }
      }
      
      public function log(param1:int, ... rest) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(Logging.§8N§() > param1);
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     §§pop();
                     if(_loc7_ || param1)
                     {
                        addr42:
                        §§push(this.§5R§);
                        if(_loc7_ || this)
                        {
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr70);
                  }
               }
               addr62:
               §§goto(addr61);
            }
            addr61:
            if(!§§pop())
            {
               if(_loc7_ || rest)
               {
                  addr70:
                  return;
               }
            }
            var _loc3_:Number = getTimer();
            §§push(§"w§.§[!3§(param1));
            if(_loc7_)
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            §§push(§@!g§.§;!L§(this.§3o§(),rest));
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               Logging.§""W§(this.§^m§(),_loc4_,_loc5_);
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function §^m§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§3!9§)
            {
               if(_loc2_ || this)
               {
                  §§push(Logging.§0"O§());
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  return this.§3<§;
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      public function §@#<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§1B§ = param1;
         }
         do
         {
            this.§%"d§ = false;
         }
         while(_loc2_);
         
      }
      
      public function §3o§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§%"d§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(Logging.§3o§());
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return this.§1B§;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      public function get enabled() : Boolean
      {
         return this.§5R§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5R§ = param1;
         }
      }
   }
}
