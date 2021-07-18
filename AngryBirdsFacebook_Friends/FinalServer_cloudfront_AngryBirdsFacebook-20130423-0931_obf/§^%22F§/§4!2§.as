package §^"F§
{
   public class §4!2§
   {
      
      public static const §4"X§:String = "PowerupBundle";
      
      public static const §`!4§:§^"K§;
      
      public static const §<"O§:§^"K§;
      
      public static const §3"$§:§^"K§;
      
      public static const §8"1§:§^"K§;
      
      public static const §%!U§:§^"K§;
      
      public static const §6"O§:§^"K§;
      
      public static const §-Y§:§^"K§;
      
      public static const §!! §:§^"K§;
      
      private static const §7!=§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4!2§))
         {
            §4"X§ = "PowerupBundle";
            loop0:
            while(true)
            {
               §`!4§ = new §^"K§("BirdFood","Super Seeds","Button_PowerUp1","PowerUpCount1","POWERUP1");
               while(true)
               {
                  §<"O§ = new §^"K§("ExtraSpeed","King Sling","Button_PowerUp2","PowerUpCount2","POWERUP2");
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        §3"$§ = new §^"K§("LaserSight","Sling Scope","Button_PowerUp3","PowerUpCount3","POWERUP3");
                        while(true)
                        {
                           §8"1§ = new §^"K§("Earthquake","Birdquake","Button_PowerUp4","PowerUpCount4","POWERUP4",null,false);
                           continue loop0;
                           addr130:
                           loop6:
                           while(_loc1_ || §4!2§)
                           {
                              §6"O§ = new §^"K§("MightyEagle","Mighty Eagle","Button_MightyEagle","PowerUpCountME","MIGHTY_EAGLE",null,false);
                              do
                              {
                                 §-Y§ = new §^"K§("ExtraBird","Wingman","Button_Wingman","PowerUpCountWM","POWERUP_WINGMAN",["ExtraBirdSubscriptionDay","ExtraBirdSubscriptionTournament"],false);
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                              while(!(_loc1_ || _loc2_));
                              
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr196);
      }
      
      public function §4!2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function get §1!V§() : Array
      {
         return §7!=§.concat();
      }
      
      public static function §7=§(param1:String) : §^"K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^"K§ = null;
         for each(_loc2_ in §7!=§)
         {
            if(_loc5_ || §4!2§)
            {
               if(_loc2_.§,§ == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §return§(param1:String) : §^"K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^"K§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §7!=§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  continue;
               }
               §§push(_loc2_.§>",§);
               if(_loc6_ || _loc3_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc5_ && _loc2_)
                     {
                        break;
                     }
                     addr74:
                     if(_loc2_.§>",§.indexOf(param1) != -1)
                     {
                        if(_loc6_ || param1)
                        {
                           break;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr74);
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §2o§(param1:String) : §^"K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^"K§ = null;
         for each(_loc2_ in §7!=§)
         {
            if(!(_loc5_ && param1))
            {
               if(_loc2_.§1!#§ == param1)
               {
                  if(!(_loc5_ && §4!2§))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
   }
}
