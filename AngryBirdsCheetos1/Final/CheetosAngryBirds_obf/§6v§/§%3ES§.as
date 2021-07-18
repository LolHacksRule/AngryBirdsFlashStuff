package §6v§
{
   import §%s§.§;!5§;
   import §&p§.§9!H§;
   import §'!3§.§3n§;
   import §=A§.§5r§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §>S§
   {
      
      public static const §+Z§:String = "InitialiseSession";
      
      public static const §7!J§:String = "GetActiveLevels";
      
      public static const §-!U§:String = "GetActiveSpotPrize";
      
      public static const §%!K§:String = "LevelStart";
      
      public static const §[0§:String = "PurchasePowerUp";
      
      public static const §9d§:String = "UseFreePlay";
      
      public static const §=1§:String = "UpdateSpotPrizeWin";
      
      public static const §2I§:String = "LevelComplete";
      
      public static const §<!0§:String = "RefreshSession";
      
      public static const §"!H§:String = "serializationJSON";
      
      public static const §=q§:String = "serializationURLParameters";
      
      private static var §1!W§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+Z§ = "InitialiseSession";
            loop0:
            while(true)
            {
               §7!J§ = "GetActiveLevels";
               while(true)
               {
                  §-!U§ = "GetActiveSpotPrize";
                  while(true)
                  {
                     §%!K§ = "LevelStart";
                     while(!(_loc2_ && _loc2_))
                     {
                        §[0§ = "PurchasePowerUp";
                        while(_loc1_ || §>S§)
                        {
                           §9d§ = "UseFreePlay";
                           continue loop0;
                           if(!(_loc2_ && §>S§))
                           {
                              return;
                              addr68:
                           }
                        }
                     }
                  }
                  loop7:
                  for(; !(_loc2_ && _loc2_); if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr99))
                  {
                     §<!0§ = "RefreshSession";
                     loop8:
                     while(true)
                     {
                        §"!H§ = "serializationJSON";
                        while(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              §=q§ = "serializationURLParameters";
                              loop10:
                              while(_loc1_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop8;
                                 while(true)
                                 {
                                    §1!W§ = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
                                    if(!_loc1_)
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr61);
                                 }
                                 §§goto(addr68);
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        addr130:
                        while(true)
                        {
                           §2I§ = "LevelComplete";
                           continue loop7;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      public function §>S§(param1:Object, param2:String, param3:§3n§, param4:String)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super();
         }
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         if(_loc8_ || param3)
         {
            _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc7_:* = param4;
         if(_loc8_ || param1)
         {
            §§push(§"!H§);
            if(_loc8_)
            {
               §§push(_loc7_);
               if(_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc9_ && param2))
                     {
                        addr111:
                        §§push(0);
                        if(!(_loc8_ || param3))
                        {
                           addr126:
                        }
                     }
                     else
                     {
                        addr123:
                        §§push(1);
                        if(!_loc9_)
                        {
                           §§goto(addr126);
                        }
                     }
                     addr131:
                     loop5:
                     switch(§§pop())
                     {
                        case 0:
                           _loc6_.contentType = "application/json";
                           if(_loc8_)
                           {
                              addr52:
                              _loc6_.data = §5r§.encode(param1);
                              if(!_loc9_)
                              {
                                 addr194:
                                 _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
                                 break;
                              }
                              loop0:
                              while(true)
                              {
                                 _loc6_.url = param2;
                                 loop1:
                                 while(_loc8_)
                                 {
                                    while(true)
                                    {
                                       _loc5_.load(_loc6_);
                                       if(!_loc9_)
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             break loop5;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr167);
                        case 1:
                           _loc6_.data = this.§5M§(param1);
                           if(!_loc9_)
                           {
                              if(false)
                              {
                                 §§goto(addr52);
                              }
                              §§goto(addr194);
                           }
                           break;
                        default:
                           §§goto(addr194);
                     }
                     continue loop3;
                  }
                  addr122:
                  if(§=q§ === _loc7_)
                  {
                     §§goto(addr123);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr131);
                  §§goto(addr123);
               }
            }
            §§goto(addr122);
         }
         §§goto(addr111);
      }
      
      public static function § J§(param1:Object) : String
      {
         return §;!5§.§"!A§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§1!W§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §9!^§(param1:String) : String
      {
         return §;!5§.§"!A§([param1,§9!H§.§ o§.§ I§,getText(§1!W§)].join("|"));
      }
      
      public static function §^g§(param1:String, param2:Number, param3:Number) : String
      {
         return §;!5§.§"!A§([param1,param2,param3,getText(§1!W§)].join("|"));
      }
      
      public static function §9J§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§9!H§.§<!7§ + ".");
         if(!_loc2_)
         {
            return §§pop() + §>S§.§9!^§(§9!H§.§<!7§);
         }
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §5M§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc6_ && _loc3_))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
