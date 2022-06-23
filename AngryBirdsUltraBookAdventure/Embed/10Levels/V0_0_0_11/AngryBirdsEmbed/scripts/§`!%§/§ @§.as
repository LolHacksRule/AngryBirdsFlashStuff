package §`!%§
{
   import §"!5§.§,!!§;
   import §"X§.§^!;§;
   import §,U§.§+u§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §>!C§.§^h§;
   import §[H§.§7P§;
   
   public class § @§ extends §"h§
   {
      
      public static const §0!7§:String = "LevelLoadStateClassic";
      
      private static var §;W§:Number;
      
      private static var §%!E§:§^!;§;
      
      private static var §"e§:§+u§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!7§ = "LevelLoadStateClassic";
         }
      }
      
      public function § @§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §-!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6M§.§<H§(§6M§.§1$§());
            if(!_loc2_)
            {
               addr24:
               §&,§ = §?!8§;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public static function §&[§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §%a§ = param1;
            if(!_loc3_)
            {
               addr23:
               §&,§ = §?!8§;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public static function §'d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§,!!§.§;4§.camera)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §;W§ = §,!!§.§;4§.camera.§=G§;
                  if(!(_loc1_ && § @§))
                  {
                     addr53:
                     §&,§ = §?!8§;
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
            §§push(§%!E§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr46:
                     §%!E§.§;,§();
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
         var _loc2_:§^h§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§9R§ = §6M§.§ r§(§6M§.§[z§);
         if(!_loc6_)
         {
            if(_loc1_)
            {
               if(_loc7_)
               {
                  initLevelMain(_loc1_);
                  if(_loc7_)
                  {
                     if(!isNaN(§;W§))
                     {
                        if(_loc7_ || _loc3_)
                        {
                           §,!!§.§;4§.camera.§,!&§(§;W§);
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
                  §;W§ = NaN;
               }
               §§goto(addr72);
            }
            else
            {
               _loc2_ = §6M§.§1o§(§6M§.§[z§);
               if(_loc2_)
               {
                  if(_loc7_)
                  {
                     if(!§"e§)
                     {
                        if(_loc7_)
                        {
                           §"e§ = new §+u§();
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
                                    §§push(§=l§.buildNumber);
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
                                                   §§push(§%!E§);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§pop().init(§7P§.§#§(),_loc4_,_loc5_,§"e§);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr202:
                                                         §§push(§%!E§);
                                                         if(_loc7_)
                                                         {
                                                            addr205:
                                                            §§pop().§9y§();
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
                                                                     §§push(§%!E§);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop().§6j§(<pack url="{_loc3_}"/>);
                                                                        if(!_loc7_)
                                                                        {
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     addr266:
                                                                     §§pop().§7s§(this.§!!$§);
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§push(§%!E§);
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
                     §§push(§%!E§);
                     if(!(_loc6_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           §%!E§ = new §^!;§();
                           §§push(§=l§.assetsUrl);
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
      
      protected function §!!$§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9R§ = §6M§.§ r§(§6M§.§[z§);
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  initLevelMain(_loc1_);
                  if(!_loc3_)
                  {
                     if(!isNaN(§;W§))
                     {
                        if(_loc3_ && this)
                        {
                        }
                     }
                     §§goto(addr84);
                  }
                  §,!!§.§;4§.camera.§,!&§(§;W§);
                  if(_loc2_ || this)
                  {
                     addr81:
                     §;W§ = NaN;
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
         return §,!!§.§;4§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §,!!§.§;4§.§5=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = this.§]r§();
         }
      }
      
      protected function §]r§() : String
      {
         return StatePlay.§0!7§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §!,§.§0!7§;
         }
      }
   }
}
