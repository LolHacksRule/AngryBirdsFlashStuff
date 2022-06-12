package §3!7§
{
   public class §>,§
   {
      
      public static const §^Q§:§2G§;
      
      public static const §7!C§:§2G§;
      
      public static const §%!X§:§2G§;
      
      public static const §&m§:§2G§;
      
      public static const §^t§:§2G§;
      
      public static const §," §:§2G§;
      
      private static const §`T§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^Q§ = new §2G§("BirdFood","Super Seeds","Button_PowerUp1","PowerUpCount1","POWERUP1");
            loop0:
            while(true)
            {
               §7!C§ = new §2G§("ExtraSpeed","King Sling","Button_PowerUp2","PowerUpCount2","POWERUP2");
               addr103:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §^t§ = new §2G§("MightyEagle","Mighty Eagle","Button_MightyEagle","PowerUpCountME","MIGHTY_EAGLE");
               loop4:
               while(_loc2_ || _loc2_)
               {
                  §," § = new §2G§("ExtraBird","Van Terrence","Button_ExtraBird","PowerUpCountVH","EXTRABIRD","ExtraBirdSubscription");
                  while(!_loc1_)
                  {
                     §`T§ = [§^Q§,§7!C§,§%!X§,§&m§,§^t§,§," §];
                     if(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop4;
                     }
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr103);
                     }
                     else
                     {
                        while(true)
                        {
                           §&m§ = new §2G§("Earthquake","Birdquake","Button_PowerUp4","PowerUpCount4","POWERUP4");
                           continue loop3;
                        }
                        addr131:
                     }
                  }
                  continue loop0;
               }
               while(true)
               {
                  §%!X§ = new §2G§("LaserSight","Sling Scope","Button_PowerUp3","PowerUpCount3","POWERUP3");
                  §§goto(addr131);
                  §§goto(addr78);
               }
               addr78:
               addr142:
            }
         }
         §§goto(addr142);
      }
      
      public function §>,§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function get §%!#§() : Array
      {
         return §`T§.concat();
      }
      
      public static function §4!x§(param1:String) : §2G§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2G§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §`T§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(_loc2_.§[2§ == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §+!a§(param1:String) : §2G§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2G§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §`T§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.§<"?§ == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §'!i§(param1:String) : §2G§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2G§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §`T§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.§]6§ == param1)
               {
                  if(!_loc5_)
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
