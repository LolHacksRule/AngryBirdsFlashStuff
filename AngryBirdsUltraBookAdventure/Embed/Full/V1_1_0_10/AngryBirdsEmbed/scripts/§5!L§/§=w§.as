package §5!L§
{
   import §1!-§.§@Z§;
   import §3a§.§3T§;
   import §6A§.§ !§;
   import §7j§.§8P§;
   import §=!0§.§>I§;
   import §>!7§.§;b§;
   import §>k§.§5$§;
   import §^!L§.§6<§;
   import flash.geom.Rectangle;
   
   public class §=w§
   {
      
      public static var §9!#§:int = 0;
      
      public static var §0i§:int = 0;
      
      public static var § o§:§ !§;
      
      public static var §?!L§:§3T§;
      
      public static var §%Z§:Boolean = false;
      
      public static var §=! §:§=w§ = null;
      
      public static var § !H§:§8P§;
      
      public static var §@J§:Boolean = true;
      
      public static var §44§:Number = 1;
      
      public static var §continue§:Number = 1.0;
      
      public static var §'c§:Number = 1.0;
      
      private static var §>B§:§;b§ = null;
      
      private static var §6q§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!#§ = 0;
            §0i§ = 0;
            if(!_loc1_)
            {
               §%Z§ = false;
               if(!(_loc1_ && _loc2_))
               {
                  addr47:
                  §=! § = null;
                  §@J§ = true;
                  if(!(_loc1_ && §=w§))
                  {
                     §44§ = 1;
                     addr73:
                     §continue§ = 1;
                     if(!(_loc1_ && §=w§))
                     {
                        §'c§ = 1;
                        §>B§ = null;
                        if(_loc2_ || _loc1_)
                        {
                        }
                        §§goto(addr99);
                     }
                     §6q§ = false;
                  }
                  §§goto(addr73);
               }
               addr99:
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr73);
      }
      
      public function §=w§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §;!B§() : Number
      {
         return §9!#§ * §continue§;
      }
      
      public static function §0E§() : Number
      {
         return §0i§ * §'c§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!§6q§)
            {
               if(_loc2_ || _loc2_)
               {
                  §6q§ = true;
                  §§push(§>I§.§2!@§);
                  if(!(_loc1_ && §=w§))
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr70:
                           §>I§.§2!@§.isPaused = true;
                        }
                     }
                     §§push(§>I§.§`S§);
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr86);
                     }
                     §§pop().§ !I§(false);
                     §§goto(addr86);
                  }
                  §§goto(addr70);
               }
               §§goto(addr82);
            }
            addr86:
            if(§§pop())
            {
               addr82:
               §§push(§>I§.§`S§);
            }
            return;
         }
         §§goto(addr82);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§6q§)
            {
               if(_loc2_ || _loc2_)
               {
                  §6q§ = false;
                  if(!(_loc1_ && §=w§))
                  {
                     §§push(§>I§.§2!@§);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              addr77:
                              §>I§.§2!@§.isPaused = false;
                              addr75:
                              if(_loc1_)
                              {
                              }
                              addr100:
                              §>I§.§`S§.§ !I§(true);
                              addr102:
                              return;
                              addr98:
                           }
                        }
                        §§push(§>I§.§`S§);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr100);
                     }
                  }
               }
            }
            §§goto(addr77);
         }
         §§goto(addr75);
      }
      
      public static function get isPaused() : Boolean
      {
         return §6q§;
      }
      
      public static function init(param1:§8P§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            § !H§ = param1;
            if(!(_loc4_ && §=w§))
            {
               §9!#§ = param2;
               if(_loc5_ || param3)
               {
               }
               §§goto(addr76);
            }
            §0i§ = param3;
            if(!(_loc4_ && param2))
            {
               §?!L§ = new §3T§(true,param1.canvas);
            }
         }
         addr76:
      }
      
      public static function §?!"§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §=w§))
         {
            §6<§.§?!"§(param1,param2);
         }
      }
      
      public static function §5!B§(param1:§5$§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            § o§.§5!B§(param1,param2,param3);
         }
      }
      
      public static function §]a§(param1:§@Z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            § o§.init(param1);
         }
      }
      
      public static function §>@§(param1:§;b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §>B§ = param1;
            if(_loc2_ || _loc2_)
            {
               addr43:
               § o§.§>@§(param1);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function get controller() : §;b§
      {
         return §>B§;
      }
      
      public static function §9C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §=w§)
         {
            §@J§ = param1;
            if(!_loc3_)
            {
               § o§.background.§9C§(param1);
            }
         }
      }
      
      public static function §-!;§() : Boolean
      {
         return §@J§;
      }
      
      public static function §8'§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(param4);
            if(_loc5_)
            {
               §§push(32);
               if(!(_loc6_ && param2))
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(32);
                        if(!(_loc6_ && §=w§))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              param4 = §§pop();
                              if(!_loc6_)
                              {
                                 addr51:
                                 §§push(param3);
                                 if(!(_loc6_ && param3))
                                 {
                                    addr69:
                                    if(§§pop() < 32)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr75);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr83);
                                 }
                                 addr75:
                                 param3 = 32;
                                 §§goto(addr74);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr69);
                        }
                        addr74:
                        if(_loc5_ || param1)
                        {
                           addr83:
                           §44§ = Math.min(param3 / §9!#§,param4 / §0i§);
                        }
                        §§push(§§findproperty(§continue§));
                        §§push(param3);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop() / §9!#§);
                        }
                        §§pop().§continue§ = §§pop();
                        if(!_loc6_)
                        {
                           §§push(§§findproperty(§'c§));
                           §§push(param4);
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() / §0i§);
                           }
                           §§pop().§'c§ = §§pop();
                           addr129:
                           §>I§.§+2§ = new Rectangle(param1,param2,param3,param4);
                           addr137:
                           §>I§.§6+§ = true;
                        }
                        § o§.§&!5§(param3,param4);
                        return;
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr51);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr129);
      }
   }
}
