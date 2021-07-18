package §1!F§
{
   import §&!0§.§%!`§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §-!0§.§4!N§;
   import §1j§.§1R§;
   import §7v§.§%!M§;
   import §?!-§.§'!V§;
   
   public class §26§ extends §4!&§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §9t§:Number;
      
      private static var §!!t§:§%!M§;
      
      private static var §^@§:§1R§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §26§)
         {
            STATE_NAME = "LevelLoadStateClassic";
         }
      }
      
      public function §26§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      public static function §=0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1^§.loadLevel(§1^§.§`!L§());
            if(_loc2_)
            {
               §>V§ = §8-§;
            }
         }
      }
      
      public static function §?!S§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-!;§ = param1;
            if(_loc3_ || _loc2_)
            {
               addr29:
               §>V§ = §8-§;
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §!=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§'!V§.§1!2§.camera)
            {
               if(_loc1_)
               {
                  §9t§ = §'!V§.§1!2§.camera.§[!+§;
                  if(!_loc2_)
                  {
                     addr47:
                     §>V§ = §8-§;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§!!t§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr27);
            }
            §§pop().§`g§();
         }
         addr27:
         if(!_loc1_)
         {
            §§push(§!!t§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§4!N§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
         if(_loc7_ || _loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  addr51:
                  initLevelMain(_loc1_);
                  if(_loc7_)
                  {
                     if(!isNaN(§9t§))
                     {
                        if(_loc7_ || this)
                        {
                           addr67:
                           §'!V§.§1!2§.camera.§<l§(§9t§);
                           if(_loc6_)
                           {
                           }
                           return;
                           addr77:
                        }
                        §9t§ = NaN;
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr67);
            }
            else
            {
               _loc2_ = §1^§.§['§(§1^§.§ ]§);
               if(!_loc6_)
               {
                  if(_loc2_)
                  {
                     if(!§^@§)
                     {
                        if(_loc7_ || this)
                        {
                           §^@§ = new §1R§();
                           addr101:
                           §§push(§!!t§);
                           if(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 addr105:
                                 §!!t§ = new §%!M§();
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(§[e§.assetsUrl);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§pop();
                                                §§push("");
                                                if(_loc7_)
                                                {
                                                   addr141:
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr144:
                                                      _loc4_ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§[e§.buildNumber);
                                                         if(!_loc6_)
                                                         {
                                                            addr153:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  addr161:
                                                                  §§pop();
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§push("");
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr173:
                                                                        _loc5_ = §§pop();
                                                                        §§push(§!!t§);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§pop().init(§%!`§.§[!6§(),_loc4_,_loc5_,§^@§);
                                                                           if(!(_loc6_ && _loc1_))
                                                                           {
                                                                              addr195:
                                                                              §§push(§!!t§);
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 §§pop().§<C§();
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    addr211:
                                                                                    §§push("packages/chapter");
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc2_.name);
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          addr236:
                                                                                          _loc3_ = §§pop() + ".pak";
                                                                                          addr234:
                                                                                          §§push(§!!t§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                          }
                                                                                          §§pop().§7S§(this.packageLoaded);
                                                                                          §§goto(addr67);
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 §§goto(addr67);
                                                                              }
                                                                           }
                                                                           addr256:
                                                                           §§goto(addr236);
                                                                           §§push(§!!t§);
                                                                        }
                                                                        §§pop().§^!K§(<pack url="{_loc3_}"/>);
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§goto(addr67);
                                                                        addr172:
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr101);
            }
         }
         §§goto(addr51);
      }
      
      protected function packageLoaded() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
         if(!_loc2_)
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  initLevelMain(_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     if(!isNaN(§9t§))
                     {
                        if(_loc3_)
                        {
                           §'!V§.§1!2§.camera.§<l§(§9t§);
                           if(_loc2_ && _loc2_)
                           {
                           }
                           §§goto(addr80);
                        }
                     }
                     §§goto(addr80);
                  }
               }
               §9t§ = NaN;
            }
         }
         addr80:
      }
      
      override public function isReady() : Boolean
      {
         return §'!V§.§1!2§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §'!V§.§1!2§.§<!q§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            mNextState = this.getPlayState();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = §?&§.STATE_NAME;
         }
      }
   }
}
