package §0![§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §"v§.§9"§;
   import §%c§.§=!X§;
   import §4!D§.§3!7§;
   import §="6§.§;!a§;
   import §@!v§.§6!Q§;
   
   public class §0!v§ extends §0",§
   {
      
      public static const §'=§:String = "LevelLoadStateClassic";
      
      private static var §4!F§:Number;
      
      private static var §[t§:§3!7§;
      
      private static var §&!K§:§;!a§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §0!v§)
         {
            §'=§ = "LevelLoadStateClassic";
         }
      }
      
      public function §0!v§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function §`" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3!w§.loadLevel(§3!w§.§;d§());
         }
         do
         {
            §7""§ = §#!F§;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function §'u§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §`!j§ = param1;
         }
         do
         {
            §7""§ = §#!F§;
         }
         while(_loc3_ && §0!v§);
         
      }
      
      public static function §4[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§=!X§.§!'§.camera)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §4!F§ = §=!X§.§!'§.camera.§0"'§;
                  addr73:
                  while(true)
                  {
                  }
                  addr73:
               }
               §§goto(addr73);
            }
            while(true)
            {
               §7""§ = §#!F§;
               if(!(_loc1_ && §0!v§))
               {
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§[t§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr52);
            }
            §§pop().§'e§();
         }
         addr52:
         if(_loc2_)
         {
            §§push(§[t§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§"! § = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§9"§ = §3!w§.§7%§(§3!w§.§%n§);
         if(_loc6_)
         {
            if(_loc1_)
            {
               loop29:
               while(true)
               {
                  initLevelMain(_loc1_);
                  loop30:
                  while(true)
                  {
                     addr57:
                     addr88:
                     while(!isNaN(§4!F§))
                     {
                        while(!(_loc7_ && _loc1_))
                        {
                           §=!X§.§!'§.camera.§="'§(§4!F§);
                           continue loop29;
                        }
                        continue loop30;
                     }
                  }
               }
            }
            else
            {
               _loc2_ = §3!w§.§>! §(§3!w§.§%n§);
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§&!K§)
                        {
                           while(true)
                           {
                              §&!K§ = new §;!a§();
                              addr325:
                              while(true)
                              {
                              }
                           }
                           addr321:
                        }
                        while(true)
                        {
                           §§push(§[t§);
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §[t§ = new §3!7§();
                                    while(true)
                                    {
                                       §§push(§;" §.assetsUrl);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr296:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr298:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                   }
                                                }
                                                addr297:
                                             }
                                             while(true)
                                             {
                                                addr267:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr202);
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              §§pop().§^A§(<pack url="{_loc3_}"/>);
                              for(; _loc6_ || _loc1_; §§pop().§,!'§(this.§8j§),if(_loc7_ && this)
                              {
                                 continue;
                              },if(_loc6_)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr263);
                              },§§goto(addr194))
                              {
                                 §§push(§[t§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr216);
                           }
                        }
                        if(_loc7_ && this)
                        {
                           continue;
                        }
                        §§goto(addr140);
                     }
                  }
                  §§goto(addr326);
               }
               §§goto(addr298);
            }
            §§goto(addr326);
         }
         §§goto(addr81);
      }
      
      protected function §8j§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9"§ = §3!w§.§7%§(§3!w§.§%n§);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_)
            {
               if(_loc2_ || this)
               {
                  initLevelMain(_loc1_);
               }
               loop0:
               while(!isNaN(§4!F§))
               {
                  do
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(§=!X§.§!'§.camera.§="'§(§4!F§), do
                  {
                     §4!F§ = NaN;
                  }
                  while(!_loc2_);
                  , _loc3_);
                  
                  break;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function isReady() : Boolean
      {
         return §=!X§.§!'§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §=!X§.§!'§.§9"=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = this.getPlayState();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'=§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = §7B§.§'=§;
         }
      }
   }
}
