package §;m§
{
   import §+!%§.§1!E§;
   import §+!?§.§"h§;
   import §+!@§.§!T§;
   import §5m§.§2!&§;
   import §=!B§.§59§;
   import §=!B§.§=e§;
   import §=!B§.§^!9§;
   
   public class §3'§ extends §4#§
   {
      
      public static const §-!A§:String = "LevelLoadStateClassic";
      
      private static var §2I§:Number;
      
      private static var §>!6§:§!T§;
      
      private static var §=s§:§1!E§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!A§ = "LevelLoadStateClassic";
         }
      }
      
      public function §3'§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §+^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §59§.§6!9§(§59§.§+-§());
            if(!_loc2_)
            {
               addr24:
               §4P§ = §8Q§;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public static function §&§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §5_§ = param1;
            if(!_loc3_)
            {
               addr23:
               §4P§ = §8Q§;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public static function §;3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§"h§.§1C§.camera)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §2I§ = §"h§.§1C§.camera.§"Q§;
                  if(!(_loc1_ && §3'§))
                  {
                     addr53:
                     §4P§ = §8Q§;
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
            §§push(§>!6§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr46:
                     §>!6§.§,w§();
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
         var _loc2_:§=e§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§^!9§ = §59§.§'Y§(§59§.§%j§);
         if(!_loc6_)
         {
            if(_loc1_)
            {
               if(_loc7_)
               {
                  initLevelMain(_loc1_);
                  if(_loc7_)
                  {
                     if(!isNaN(§2I§))
                     {
                        if(_loc7_ || _loc3_)
                        {
                           §"h§.§1C§.camera.§25§(§2I§);
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
                  §2I§ = NaN;
               }
               §§goto(addr72);
            }
            else
            {
               _loc2_ = §59§.§+,§(§59§.§%j§);
               if(_loc2_)
               {
                  if(_loc7_)
                  {
                     if(!§=s§)
                     {
                        if(_loc7_)
                        {
                           §=s§ = new §1!E§();
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
                                    §§push(§,n§.buildNumber);
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
                                                   §§push(§>!6§);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§pop().init(§2!&§.§5O§(),_loc4_,_loc5_,§=s§);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr202:
                                                         §§push(§>!6§);
                                                         if(_loc7_)
                                                         {
                                                            addr205:
                                                            §§pop().§8!%§();
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
                                                                     §§push(§>!6§);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop().§0+§(<pack url="{_loc3_}"/>);
                                                                        if(!_loc7_)
                                                                        {
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     addr266:
                                                                     §§pop().§>c§(this.§@c§);
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§push(§>!6§);
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
                     §§push(§>!6§);
                     if(!(_loc6_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           §>!6§ = new §!T§();
                           §§push(§,n§.assetsUrl);
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
      
      protected function §@c§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^!9§ = §59§.§'Y§(§59§.§%j§);
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  initLevelMain(_loc1_);
                  if(!_loc3_)
                  {
                     if(!isNaN(§2I§))
                     {
                        if(_loc3_ && this)
                        {
                        }
                     }
                     §§goto(addr84);
                  }
                  §"h§.§1C§.camera.§25§(§2I§);
                  if(_loc2_ || this)
                  {
                     addr81:
                     §2I§ = NaN;
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
         return §"h§.§1C§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §"h§.§1C§.§each §;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = this.§&!$§();
         }
      }
      
      protected function §&!$§() : String
      {
         return StatePlay.§-!A§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §>!B§.§-!A§;
         }
      }
   }
}
