package §6!M§
{
   import §+!Q§.§<[§;
   import §0X§.§%'§;
   import §8A§.§%!4§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §@i§.§=r§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §;!G§
   {
      
      private static var §,Y§:§!e§;
      
      private static var §4M§:Object;
      
      private static var §+!U§:String = "";
      
      private static var § 7§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §;!G§))
         {
            §+!U§ = "";
            do
            {
               § 7§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §;!G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §,Y§ = new §!e§();
         }
         loop0:
         while(true)
         {
            §§push(§,Y§);
            loop1:
            while(true)
            {
               §§pop().dataFormat = URLLoaderDataFormat.TEXT;
               loop2:
               while(true)
               {
                  §§push(§,Y§);
                  loop3:
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,§#6§);
                     loop4:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           §§push(§,Y§);
                           loop5:
                           while(_loc5_)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,§5!`§);
                              loop6:
                              do
                              {
                                 §§push(§,Y§);
                                 do
                                 {
                                    §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5!`§);
                                    while(true)
                                    {
                                       if(param1)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(§,Y§);
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       §§push(§,Y§);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          §§pop().load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/init"));
                                          if(_loc5_ || param3)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr25);
                                             }
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 while(!(_loc5_ || param1));
                                 
                                 continue loop3;
                              }
                              while(_loc4_);
                              
                              if(!(_loc4_ && param2))
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     if(_loc5_)
                     {
                        addr25:
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected static function §5!`§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §;!G§))
         {
            §§push(§§findproperty(§+!U§));
            §§push("Can\'t contact server.\n");
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().§+!U§ = §§pop();
            do
            {
               §,Y§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      private static function §#6§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(!_loc5_)
                           {
                              §§pop().§§slot[1] = param1;
                              loop7:
                              while(true)
                              {
                                 addr57:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr59:
                                    while(_loc6_)
                                    {
                                       §§pop().§§slot[2] = false;
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                       }
                                       continue loop0;
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function get §2Q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§,Y§ == null);
         if(_loc1_ || §;!G§)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §4M§;
      }
      
      public static function § t§() : String
      {
         return §+!U§;
      }
      
      public static function §;K§() : int
      {
         return § 7§;
      }
   }
}
