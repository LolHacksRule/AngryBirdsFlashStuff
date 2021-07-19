package §;b§
{
   import §,!g§.§>7§;
   import §,P§.§'_§;
   import §05§.§7!W§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §6]§.§,"0§;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import §^U§.§ get§;
   
   public class §@"0§ extends § get§
   {
      
      public static const §%!Q§:String = "LevelLoadStateEditor";
      
      private static var §>^§:§-"?§ = null;
      
      private static var §@S§:String = null;
      
      private static var §;p§:String = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!Q§ = "LevelLoadStateEditor";
            while(true)
            {
               §>^§ = null;
               while(!(_loc1_ && _loc1_))
               {
                  §@S§ = null;
                  do
                  {
                     §;p§ = null;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §@"0§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§-"?§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §@"0§)
         {
            §`!w§ = §>!k§;
            loop0:
            while(true)
            {
               §>^§ = param1;
               while(true)
               {
                  §@S§ = param2;
                  continue loop0;
                  addr52:
                  if(_loc3_ || _loc3_)
                  {
                     return;
                     addr59:
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function each(param1:§-"?§, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §@"0§))
         {
            §`!w§ = §>!k§;
            loop0:
            while(true)
            {
               §-"#§.§<!4§(param2);
               loop1:
               while(true)
               {
                  if(param1 != null)
                  {
                     §>^§ = param1;
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §@S§ = StateLevelEditor.§%!Q§;
                           addr70:
                           loop4:
                           while(!_loc3_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              addr98:
                              while(true)
                              {
                                 §>^§ = §-"#§.§%=§();
                                 break loop4;
                              }
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        addr40:
                        if(_loc4_ || §@"0§)
                        {
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr98);
               }
            }
         }
         while(true)
         {
            §>7§.§];§(true);
            if(_loc4_ || _loc3_)
            {
               §§goto(addr40);
            }
            §§goto(addr70);
         }
         §§goto(addr64);
      }
      
      public static function §[y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §@"0§)
         {
            §`!w§ = §>!k§;
            do
            {
               §>^§ = new §-"?§();
               do
               {
                  §@S§ = param1;
               }
               while(!_loc3_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public static function §^!'§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §`!w§ = §>!k§;
            loop0:
            do
            {
               §;p§ = param2;
               while(true)
               {
                  §@S§ = param1;
                  while(!_loc4_)
                  {
                     §>^§ = null;
                     if(_loc3_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc4_);
            
         }
      }
      
      public static function §%P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §`!w§ = §>!k§;
         }
         do
         {
            §@S§ = param1;
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§;p§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_)
               {
                  addr115:
                  §§push(!§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && this))
                              {
                                 §7!W§.loadLevel(§;p§,this.§@">§,this.§9K§);
                              }
                              loop3:
                              while(true)
                              {
                                 §;p§ = null;
                                 addr46:
                                 while(!(_loc1_ || this))
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc2_ && this))
                                 {
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              this.initLevelMain(§>^§);
                              if(_loc1_ || this)
                              {
                                 §§goto(addr24);
                              }
                           }
                           §§goto(addr46);
                        }
                        addr24:
                        return;
                        addr82:
                     }
                  }
                  addr115:
               }
               addr117:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr110:
         }
         while(true)
         {
            §§push(§;p§);
            if(!_loc2_)
            {
               §§push(§§pop().length > 0);
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  §§goto(addr115);
               }
               §§goto(addr82);
            }
            else
            {
               §§goto(addr110);
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'_§.§=M§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§@S§ == null)
            {
               mNextState = StateLevelEditor.§%!Q§;
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     while(true)
                     {
                        §?s§.doJsCall("onLevelLoaded");
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           return;
                        }
                        loop2:
                        while(_loc1_ && _loc1_)
                        {
                           while(true)
                           {
                              §@S§ = null;
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr96);
               }
            }
            while(true)
            {
               mNextState = §@S§;
            }
         }
         §§goto(addr96);
      }
      
      public function §@">§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §>^§ = §-"?§.§ !N§(param1 as String);
            if(_loc3_ || param1)
            {
               addr32:
               this.initLevelMain(§>^§);
            }
            var _loc2_:Object = JSON.parse(param1 as String);
            if(!_loc4_)
            {
               _loc2_.thumbnail = null;
            }
            do
            {
               _loc2_.data = null;
               do
               {
                  §?s§.doJsCall("onLevelChange",_loc2_);
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(!(_loc3_ || this));
            
            return;
         }
         §§goto(addr32);
      }
      
      override protected function initLevelMain(param1:§'!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.initLevelMain(param1);
            loop0:
            while(param1 is §-"?§)
            {
               while(true)
               {
                  §-"#§.§-!Y§(param1 as §-"?§);
                  if(!(_loc2_ && param1))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            throw new Error("levelData should be LevelModelEditor");
         }
         §§goto(addr51);
      }
      
      public function §9K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §,"0§.log("LEVEL LOAD FAILED!!");
         }
      }
   }
}
