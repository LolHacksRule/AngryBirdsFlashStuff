package §8" §
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §6<§
   {
      
      private static var §3!f§:Dictionary;
      
      private static var §#a§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §3!f§ = new Dictionary();
         }
         do
         {
            §#a§ = 10;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §6<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §3!f§[param1] = param2;
         }
      }
      
      public static function doJsCall(param1:String, ... rest) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 285
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private static function §>!h§() : Boolean
      {
         return true;
      }
      
      private static function §%!`§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("{\"startingDate\":\"Oct 11, 2012 7:53:08 AM\",\"completionDate\":\"Oct 11, 2012 7:53:25 AM\",\"path\":\"1\",\"token\":\"bcca787208aef9386644a71aadfda5b0fbce6567\",\"levelId\":\"5a0091aa-f623-4b2c-8f7c-a989d4549336\",\"id\":\"" + Math.random());
         if(_loc1_ || §6<§)
         {
            return §§pop() + "\",\"pack\":1,\"orderNum\":1,\"name\":\"So it Piggins\",\"xp\":4}";
         }
      }
      
      private static function §6!$§() : String
      {
         return "{\"path\":\"1\",\"xp\":4,\"orderNum\":1,\"pack\":1,\"name\":\"So it Piggins\",\"levelId\":\"e1a10335-c328-4cc4-8215-f9fa00fa5201\",\"startingDate\":\"Sep 27, 2012 10:34:14 AM\",\"token\":\"d7541e0dbbd637e4936684a051ec94c1dfa9391c\",\"id\":\"quest_tutorial_01_03\"}";
      }
      
      private static function §9@§() : String
      {
         return "";
      }
      
      private static function §-!U§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "{";
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= 20)
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  §§push(§§pop() + "}");
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           if(_loc4_ || _loc1_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && §6<§))
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       _loc1_ = §§pop() + ", ";
                                       addr90:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             _loc2_++;
                                             addr79:
                                             while(!_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       addr86:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr79);
                        }
                        else
                        {
                           addr152:
                           _loc1_ = §§pop() + _loc2_.toString() + "\"}";
                           addr150:
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr152);
               }
               else
               {
                  addr94:
                  §§push(§§pop() + "\"");
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() + §§pop().toString());
                        if(!_loc3_)
                        {
                           addr110:
                           §§push(§§pop() + "\":{\"name\":\"");
                           if(!_loc3_)
                           {
                              §§push(§§pop() + "Quest");
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + §§pop().toString());
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr152);
                                       §§push(§§pop() + "\", \"id\":\"");
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr110);
               }
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr94);
         }
         return §§pop();
      }
      
      private static function §67§() : String
      {
         return "{\"oldCoins\":0,\"oldBolts\":{\"maxBolts\":2,\"currentBolts\":1,\"lastRefresh\":\"Sep 17, 2012 9:47:08 AM\"},\"oldXp\":0,\"oldXpLevel\":1,\"newCoins\":1,\"newBolts\":{\"maxBolts\":3,\"currentBolts\":3,\"lastRefresh\":\"Oct 15, 2012 10:37:21 AM\"},\"newXp\":4, \"newItems\":{\"WOOD_BLOCK_2X1\":-1,\"MISC_FOOD_BANANA\":1,\"WOOD_TRIANGLE_4X4\":-1},\"newIsLevelUp\":true,\"newXpLevel\":2,\"minXp\":3,\"maxXp\":7,\"maxOldBlocks\":10,\"maxNewBlocks\":11}";
      }
      
      private static function §2!R§() : String
      {
         return "{\"error\":true,\"reason\":\"Error starting quest: java.lang.IllegalArgumentException: Illegal quest id\"}";
      }
      
      private static function § case§() : int
      {
         return 50;
      }
      
      private static function §<"6§() : Object
      {
         return "{\"coins\":0,\"bolts\":\"{\"maxBolts\":3,\"currentBolts\":3}\"}";
      }
   }
}
