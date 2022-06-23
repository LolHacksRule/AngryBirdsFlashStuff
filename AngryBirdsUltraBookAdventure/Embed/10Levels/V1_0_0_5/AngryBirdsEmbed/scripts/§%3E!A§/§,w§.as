package §>!A§
{
   import §+?§.§03§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import §9>§.§"!C§;
   import §;z§.§%"§;
   
   public class §,w§ extends §8i§
   {
      
      public static const §?x§:String = "LevelLoadStateClassic";
      
      private static var §'0§:Number;
      
      private static var §7! §:§"!C§;
      
      private static var §extends§:§%"§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?x§ = "LevelLoadStateClassic";
         }
      }
      
      public function §,w§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §^^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5j§.§#8§(§5j§.§&1§());
            if(!_loc2_)
            {
               addr24:
               §]!$§ = §&!4§;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public static function §-Y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>4§ = param1;
            if(!_loc3_)
            {
               addr23:
               §]!$§ = §&!4§;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public static function §9!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§[k§.§&@§.camera)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §'0§ = §[k§.§&@§.camera.§-!D§;
                  if(!(_loc1_ && §,w§))
                  {
                     addr53:
                     §]!$§ = §&!4§;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§7! §);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr46:
                     §7! §.§`5§();
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§?S§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
         if(!_loc6_)
         {
            if(_loc1_)
            {
               if(_loc7_)
               {
                  initLevelMain(_loc1_);
                  if(_loc7_)
                  {
                     if(!isNaN(§'0§))
                     {
                        if(_loc7_ || _loc3_)
                        {
                           §[k§.§&@§.camera.§%!3§(§'0§);
                           if(_loc6_ && _loc1_)
                           {
                           }
                           addr269:
                           return;
                           addr72:
                        }
                     }
                     §§goto(addr72);
                  }
                  §'0§ = NaN;
               }
               §§goto(addr72);
            }
            else
            {
               _loc2_ = §5j§.§^!>§(§5j§.§%V§);
               if(_loc2_)
               {
                  if(_loc7_)
                  {
                     if(!§extends§)
                     {
                        if(_loc7_)
                        {
                           §extends§ = new §%"§();
                           if(_loc7_ || _loc1_)
                           {
                           }
                           addr140:
                           §§push("");
                           if(_loc7_)
                           {
                              addr143:
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(§+!!§.buildNumber);
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       addr159:
                                       if(!§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             addr163:
                                             §§pop();
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr171:
                                                §§push("");
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   addr180:
                                                   _loc5_ = §§pop();
                                                   §§push(§7! §);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§pop().init(§03§.§3!-§(),_loc4_,_loc5_,§extends§);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr202:
                                                         §§push(§7! §);
                                                         if(_loc7_)
                                                         {
                                                            addr205:
                                                            §§pop().§^E§();
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               §§push("packages/chapter");
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  addr221:
                                                                  §§push(§§pop() + _loc2_.name);
                                                                  if(_loc7_ || _loc1_)
                                                                  {
                                                                     addr241:
                                                                     §§push(§§pop() + ".pak");
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §§push(§7! §);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop().§>!3§(<pack url="{_loc3_}"/>);
                                                                        if(!_loc7_)
                                                                        {
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     addr266:
                                                                     §§pop().§7p§(this.§@!&§);
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§push(§7! §);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr269);
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr269);
                     }
                     §§push(§7! §);
                     if(!(_loc6_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           §7! § = new §"!C§();
                           §§push(§+!!§.assetsUrl);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       if(_loc7_)
                                       {
                                          §§goto(addr140);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr143);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr140);
               }
            }
         }
         §§goto(addr269);
      }
      
      protected function §@!&§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  initLevelMain(_loc1_);
                  if(!_loc3_)
                  {
                     if(!isNaN(§'0§))
                     {
                        if(_loc3_ && this)
                        {
                        }
                     }
                     §§goto(addr84);
                  }
                  §[k§.§&@§.camera.§%!3§(§'0§);
                  if(_loc2_ || this)
                  {
                     addr81:
                     §'0§ = NaN;
                  }
               }
               §§goto(addr81);
            }
            addr84:
            return;
         }
         §§goto(addr81);
      }
      
      override public function isReady() : Boolean
      {
         return §[k§.§&@§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[k§.§&@§.§+!'§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = this.§?G§();
         }
      }
      
      protected function §?G§() : String
      {
         return StatePlay.§?x§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §5O§.§?x§;
         }
      }
   }
}
