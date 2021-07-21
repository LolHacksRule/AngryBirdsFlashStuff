package § "@§
{
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%_§.§5"8§;
   import §%c§.§=!X§;
   import §0![§.§0",§;
   import §=!#§.§2"-§;
   import §=!M§.§9!P§;
   import §="6§.§^"8§;
   
   public class §%!3§ extends §0",§
   {
      
      public static const §'=§:String = "LevelLoadStateEditor";
      
      private static var §4!u§:§]!B§ = null;
      
      private static var §]k§:String = null;
      
      private static var §!@§:String = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'=§ = "LevelLoadStateEditor";
            while(true)
            {
               §4!u§ = null;
               while(_loc1_)
               {
                  §]k§ = null;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §!@§ = null;
                        if(_loc1_ || §%!3§)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §%!3§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§]!B§, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §%!3§))
         {
            §7""§ = §#!F§;
         }
         loop0:
         while(true)
         {
            §4!u§ = param1;
            loop1:
            do
            {
               §]k§ = param2;
               while(!_loc3_)
               {
                  §2"-§.§@&§(param2 == StateLevelEditor.§'=§);
                  if(!(_loc3_ && param2))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc4_);
            
            return;
         }
      }
      
      public static function §-E§(param1:§]!B§, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §7""§ = §#!F§;
            while(true)
            {
               §^"8§.§=Z§(param2);
               loop1:
               for(; _loc3_ || §%!3§; if(!(_loc3_ || param2))
               {
                  continue;
               },§2"-§.§@&§(true),if(_loc3_ || _loc3_)
               {
                  §§goto(addr39);
               },§§goto(addr62))
               {
                  if(param1 != null)
                  {
                     §4!u§ = param1;
                     do
                     {
                        loop3:
                        while(true)
                        {
                           §]k§ = StateLevelEditor.§'=§;
                           addr62:
                           addr89:
                           loop4:
                           while(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              addr85:
                              while(true)
                              {
                                 §4!u§ = §^"8§.§8!z§();
                                 break loop4;
                              }
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     while(!(_loc3_ || param2));
                     
                     return;
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr89);
      }
      
      public static function §>o§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §7""§ = §#!F§;
            while(true)
            {
               §4!u§ = new §]!B§();
               loop1:
               while(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     §]k§ = param1;
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §"!X§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §7""§ = §#!F§;
            loop0:
            while(true)
            {
               §!@§ = param2;
               loop1:
               do
               {
                  §]k§ = param1;
                  while(!_loc3_)
                  {
                     §4!u§ = null;
                     if(!(_loc3_ && §%!3§))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc4_ || §%!3§));
               
            }
         }
      }
      
      public static function §4[§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §7""§ = §#!F§;
            do
            {
               §]k§ = param1;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§!@§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr98:
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc2_ || this)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.initLevelMain(§4!u§);
                              if(_loc1_)
                              {
                                 break;
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr20);
                              }
                              addr87:
                              if(_loc2_ || this)
                              {
                                 §!@§ = null;
                                 break;
                              }
                              continue loop0;
                           }
                           if(_loc2_)
                           {
                              §5"8§.loadLevel(§!@§,this.§]'§,this.§6"!§);
                           }
                           §§goto(addr87);
                           addr69:
                           if(!(_loc1_ && this))
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        addr20:
                        return;
                     }
                  }
                  addr118:
                  while(true)
                  {
                     §§pop();
                     §§push(§§pop().length > 0);
                     addr49:
                     continue loop0;
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr69);
                  }
               }
            }
            addr96:
         }
         while(true)
         {
            §§push(§!@§);
            if(_loc2_)
            {
               §§goto(addr49);
            }
            else
            {
               §§goto(addr96);
            }
            §§goto(addr118);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §=!X§.§!'§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§]k§ != null)
            {
               if(_loc2_ || this)
               {
                  mNextState = §]k§;
                  addr91:
                  loop2:
                  while(true)
                  {
                     §]k§ = null;
                     addr60:
                     addr24:
                     while(_loc1_ && _loc1_)
                     {
                        continue loop2;
                     }
                     §4m§.doJsCall("onLevelLoaded");
                     if(!(_loc2_ || _loc2_))
                     {
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           §§goto(addr60);
                        }
                        addr53:
                     }
                     return;
                  }
                  addr91:
               }
               §§goto(addr91);
            }
            else
            {
               mNextState = StateLevelEditor.§'=§;
            }
            §§goto(addr53);
         }
         §§goto(addr91);
      }
      
      public function §]'§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §4!u§ = §]!B§.§+0§(param1 as String);
            if(!_loc3_)
            {
               addr28:
               this.initLevelMain(§4!u§);
            }
            var _loc2_:Object = JSON.parse(param1 as String);
            if(_loc4_ || _loc3_)
            {
               _loc2_.thumbnail = null;
               while(true)
               {
                  _loc2_.data = null;
                  while(!(_loc3_ && _loc2_))
                  {
                     §4m§.doJsCall("onLevelChange",_loc2_);
                     if(_loc3_)
                     {
                        continue;
                     }
                     return;
                     addr67:
                  }
               }
            }
            §§goto(addr67);
         }
         §§goto(addr28);
      }
      
      override protected function initLevelMain(param1:§9"§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.initLevelMain(param1);
            while(param1 is §]!B§)
            {
               if(_loc3_ || param1)
               {
                  §^"8§.§5z§(param1 as §]!B§);
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr25);
            }
            throw new Error("levelData should be LevelModelEditor");
         }
         addr25:
      }
      
      public function §6"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §9!P§.log("LEVEL LOAD FAILED!!");
         }
      }
   }
}
