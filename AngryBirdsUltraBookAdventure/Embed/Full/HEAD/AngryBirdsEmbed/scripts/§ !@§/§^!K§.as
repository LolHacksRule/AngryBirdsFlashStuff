package § !@§
{
   import §+F§.§"o§;
   import §1!-§.§2n§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §6!F§.§9A§;
   import §7W§.§'!-§;
   
   public class §^!K§ extends §<v§
   {
      
      public static const §>9§:String = "LevelLoadStateClassic";
      
      private static var §+!%§:Number;
      
      private static var §=r§:§"o§;
      
      private static var §9y§:§'!-§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>9§ = "LevelLoadStateClassic";
         }
      }
      
      public function §^!K§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §+!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §^!K§)
         {
            §[4§.§]a§(§[4§.§4E§());
            if(_loc2_)
            {
               §+?§ = §`!2§;
            }
         }
      }
      
      public static function §1t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §0J§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               addr44:
               §+?§ = §`!2§;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function §@!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§=w§.§ o§.camera)
            {
               if(!_loc2_)
               {
                  §+!%§ = §=w§.§ o§.camera.§^!4§;
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr45);
            }
            §+?§ = §`!2§;
         }
         addr45:
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§=r§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr30:
                     §=r§.§1!8§();
                  }
               }
               return;
            }
         }
         §§goto(addr30);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§2n§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(!(_loc6_ && _loc3_))
         {
            if(_loc1_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  initLevelMain(_loc1_);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(!isNaN(§+!%§))
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           addr72:
                           §=w§.§ o§.camera.§"!6§(§+!%§);
                           if(_loc7_)
                           {
                              addr79:
                              §+!%§ = NaN;
                           }
                        }
                     }
                     §§goto(addr299);
                  }
               }
               §§goto(addr72);
            }
            else
            {
               _loc2_ = §[4§.§<%§(§[4§.§"!>§);
               if(!_loc6_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        if(!§9y§)
                        {
                           §9y§ = new §'!-§();
                        }
                        §§push(§=r§);
                        if(_loc7_ || _loc3_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc6_ && this))
                              {
                                 §=r§ = new §"o§();
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr133:
                                    §§push(§%!8§.assetsUrl);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§pop();
                                                if(_loc7_)
                                                {
                                                   §§push("");
                                                   if(_loc7_ || _loc1_)
                                                   {
                                                      addr175:
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr181:
                                                            §§push(§%!8§.buildNumber);
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               addr192:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr195:
                                                                     §§pop();
                                                                     §§push("");
                                                                     if(_loc7_)
                                                                     {
                                                                        addr200:
                                                                        _loc5_ = §§pop();
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§=r§);
                                                                           if(!(_loc6_ && _loc1_))
                                                                           {
                                                                              §§goto(addr211);
                                                                           }
                                                                           §§goto(addr279);
                                                                        }
                                                                        §§goto(addr224);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr224);
                        }
                        addr211:
                        §§pop().init(§9A§.§,!5§(),_loc4_,_loc5_,§9y§);
                        if(_loc7_ || _loc1_)
                        {
                           addr224:
                           §§push(§=r§);
                           if(_loc7_ || this)
                           {
                              §§pop().§6!§();
                              §§push("packages/chapter");
                              if(_loc7_ || _loc1_)
                              {
                                 addr241:
                                 §§push(§§pop() + _loc2_.name);
                                 if(_loc7_ || this)
                                 {
                                    addr251:
                                    §§push(§§pop() + ".pak");
                                 }
                              }
                              _loc3_ = §§pop();
                              if(_loc7_ || _loc1_)
                              {
                                 addr271:
                                 §§push(§=r§);
                                 if(_loc7_ || _loc2_)
                                 {
                                    addr279:
                                    §§pop().§]<§(<pack url="{_loc3_}"/>);
                                    if(_loc7_ || _loc1_)
                                    {
                                       addr295:
                                       §§push(§=r§);
                                    }
                                    §§goto(addr299);
                                 }
                              }
                              §§goto(addr295);
                           }
                           §§pop().§^]§(this.§'U§);
                        }
                        §§goto(addr299);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr299);
               }
               §§goto(addr133);
            }
         }
         §§goto(addr79);
      }
      
      protected function §'U§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(_loc3_ || _loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  initLevelMain(_loc1_);
                  if(!_loc2_)
                  {
                     addr64:
                     if(!isNaN(§+!%§))
                     {
                        if(_loc3_ || _loc1_)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
               }
               §=w§.§ o§.camera.§"!6§(§+!%§);
               if(_loc3_ || this)
               {
                  §+!%§ = NaN;
               }
            }
            addr90:
            return;
         }
         §§goto(addr64);
      }
      
      override public function isReady() : Boolean
      {
         return §=w§.§ o§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §=w§.§ o§.§>&§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = this.§=!-§();
         }
      }
      
      protected function §=!-§() : String
      {
         return StatePlay.§>9§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = §6!@§.§>9§;
         }
      }
   }
}
