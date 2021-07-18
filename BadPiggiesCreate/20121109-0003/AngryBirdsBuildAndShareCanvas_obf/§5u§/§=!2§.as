package §5u§
{
   import §^!m§.§0G§;
   import §^!m§.§="&§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §=!2§
   {
      
      private static var §"K§:§0G§;
      
      private static var §&Z§:Object;
      
      private static var §!=§:String = "";
      
      private static var §?!H§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!=§ = "";
            do
            {
               §?!H§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function §=!2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §"K§ = new §0G§();
            loop0:
            while(true)
            {
               §§push(§"K§);
               while(true)
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  loop2:
                  for(; _loc5_; while(!(_loc4_ && param1))
                  {
                     §§goto(addr95);
                     §§push(§"K§);
                  })
                  {
                     §§push(§"K§);
                     loop3:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,§%j§);
                        loop4:
                        while(true)
                        {
                           §§push(§"K§);
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,§0!q§);
                              addr67:
                              if(!(_loc5_ || param2))
                              {
                                 continue;
                              }
                              §§pop().load(§="&§.§&!r§(AngryBirdsFP11.§ !i§ + "/init"));
                              loop9:
                              while(!_loc4_)
                              {
                                 loop10:
                                 while(§[!^§.§^q§)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop9;
                                       }
                                       if(_loc5_)
                                       {
                                          §%j§(new Event("COMPLETE"));
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(param1)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§"K§);
                                             if(_loc4_ && §=!2§)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc4_ && param2)
                                             {
                                                break;
                                             }
                                             §§goto(addr67);
                                          }
                                          while(true)
                                          {
                                             §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0!q§);
                                             §§goto(addr201);
                                             §§goto(addr60);
                                          }
                                          addr201:
                                          addr197:
                                       }
                                    }
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || §=!2§)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr192:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop10;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                              }
                              while(true)
                              {
                                 §§goto(addr197);
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr208);
      }
      
      protected static function §0!q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §=!2§))
         {
            §!=§ = "Can\'t contact server.\n" + param1.toString();
         }
         do
         {
            §"K§ = null;
         }
         while(!(_loc3_ || §=!2§));
         
      }
      
      private static function §%j§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §&Z§ = {
               "friends":{"items":[{
                  "u":"100002999593950",
                  "n":"jonas jakob nyman",
                  "s":3,
                  "me":999999,
                  "r":1
               }]},
               "user":{
                  "name":"jonas jakob nyman",
                  "userId":"100002999593950"
               }
            };
            do
            {
               §"K§ = null;
            }
            while(_loc3_);
            
         }
      }
      
      public static function get §1!C§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§"K§ == null);
         if(_loc2_ || §=!2§)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §&Z§;
      }
      
      public static function §1z§() : String
      {
         return §!=§;
      }
      
      public static function §7!^§() : int
      {
         return §?!H§;
      }
   }
}
