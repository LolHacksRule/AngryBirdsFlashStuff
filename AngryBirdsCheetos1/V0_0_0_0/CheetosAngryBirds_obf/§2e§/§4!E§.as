package §2e§
{
   import §"!+§.§=w§;
   import §,!D§.§5E§;
   import §3o§.§;!=§;
   import §4!J§.§#'§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!E§
   {
      
      public static const §!!I§:String = "InitialiseSession";
      
      public static const §4a§:String = "GetActiveLevels";
      
      public static const §>%§:String = "GetActiveSpotPrize";
      
      public static const §1!Q§:String = "LevelStart";
      
      public static const §9p§:String = "PurchasePowerUp";
      
      public static const §6Y§:String = "UseFreePlay";
      
      public static const §]!N§:String = "UpdateSpotPrizeWin";
      
      public static const §'!<§:String = "LevelComplete";
      
      public static const §""§:String = "RefreshSession";
      
      public static const §;4§:String = "serializationJSON";
      
      public static const § P§:String = "serializationURLParameters";
      
      private static var §,!8§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!I§ = "InitialiseSession";
            loop0:
            while(true)
            {
               §4a§ = "GetActiveLevels";
               loop1:
               while(true)
               {
                  §>%§ = "GetActiveSpotPrize";
                  while(true)
                  {
                     §1!Q§ = "LevelStart";
                     loop3:
                     while(true)
                     {
                        §9p§ = "PurchasePowerUp";
                        while(true)
                        {
                           §6Y§ = "UseFreePlay";
                           while(true)
                           {
                              §]!N§ = "UpdateSpotPrizeWin";
                              loop6:
                              while(true)
                              {
                                 §'!<§ = "LevelComplete";
                                 loop7:
                                 while(true)
                                 {
                                    §""§ = "RefreshSession";
                                    loop8:
                                    while(!_loc2_)
                                    {
                                       §;4§ = "serializationJSON";
                                       loop9:
                                       while(_loc1_)
                                       {
                                          § P§ = "serializationURLParameters";
                                          loop10:
                                          while(_loc1_)
                                          {
                                             continue loop7;
                                             while(true)
                                             {
                                                §,!8§ = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop9;
                                                   continue loop9;
                                                }
                                                continue loop10;
                                             }
                                             return;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc1_ || §4!E§)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function §4!E§(param1:Object, param2:String, param3:§=w§, param4:String)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super();
         }
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         if(!(_loc9_ && param1))
         {
            _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc7_:* = param4;
         if(!_loc9_)
         {
            §§push(§;4§);
            if(_loc8_ || param2)
            {
               §§push(_loc7_);
               if(!(_loc9_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        addr131:
                        §§push(0);
                        if(_loc9_)
                        {
                           addr141:
                        }
                     }
                     else
                     {
                        addr138:
                        §§push(1);
                        if(!_loc9_)
                        {
                           §§goto(addr141);
                        }
                     }
                     addr146:
                     loop5:
                     switch(§§pop())
                     {
                        case 0:
                           _loc6_.contentType = "application/json";
                           if(_loc8_ || param1)
                           {
                              addr57:
                              _loc6_.data = §5E§.encode(param1);
                              if(!(_loc9_ && this))
                              {
                                 addr214:
                                 _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
                              }
                              loop0:
                              while(true)
                              {
                                 _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
                                 while(true)
                                 {
                                    _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
                                    addr193:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          break loop5;
                                       }
                                       break;
                                    }
                                    continue loop0;
                                    while(!(_loc9_ && param1))
                                    {
                                       _loc5_.load(_loc6_);
                                       if(_loc9_ && param2)
                                       {
                                          continue;
                                       }
                                       if(_loc8_)
                                       {
                                          return;
                                          addr173:
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                              }
                           }
                           break;
                        case 1:
                           _loc6_.data = this.§#,§(param1);
                           if(!(_loc9_ && param2))
                           {
                              if(false)
                              {
                                 §§goto(addr57);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr173);
                        default:
                           §§goto(addr214);
                     }
                     continue loop3;
                  }
                  addr137:
                  if(§ P§ === _loc7_)
                  {
                     §§goto(addr138);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr146);
                  §§goto(addr138);
               }
            }
            §§goto(addr137);
         }
         §§goto(addr131);
      }
      
      public static function §-!X§(param1:Object) : String
      {
         return §#'§.§]g§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§,!8§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §1,§(param1:String) : String
      {
         return §#'§.§]g§([param1,§;!=§.§`!;§.§each §,getText(§,!8§)].join("|"));
      }
      
      public static function §2!>§(param1:String, param2:Number, param3:Number) : String
      {
         return §#'§.§]g§([param1,param2,param3,getText(§,!8§)].join("|"));
      }
      
      public static function §0E§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§;!=§.§-j§ + ".");
         if(!_loc2_)
         {
            return §§pop() + §4!E§.§1,§(§;!=§.§-j§);
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
      
      private function §#,§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
