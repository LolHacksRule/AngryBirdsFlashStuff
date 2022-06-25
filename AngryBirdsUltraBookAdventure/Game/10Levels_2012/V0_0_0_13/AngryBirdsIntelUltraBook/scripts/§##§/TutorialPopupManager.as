package §##§
{
   import § D§.§]!B§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §2!H§.LevelSlingshotObject;
   import §4!9§.§6"§;
   import §6b§.Log;
   import §6b§.§^9§;
   import flash.net.SharedObject;
   
   public class TutorialPopupManager
   {
      
      protected static var mTutorialPopupBin:Class;
      
      protected static var mTutorialPowerUpPopupBin:Class;
      
      protected static var mMightyEaglePopupBin:Class;
      
      private static var toBeShown:Array;
      
      private static var currentTutorial:Popup = null;
      
      private static var mSharedObject:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
      
      {
         var mTutorialPopupBin:Boolean = true;
         var mTutorialPowerUpPopupBin:Boolean = false;
         if(!(mTutorialPowerUpPopupBin && TutorialPopupManager))
         {
            loop0:
            while(true)
            {
               mTutorialPopupBin = §4y§;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     mTutorialPowerUpPopupBin = §-_§;
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           mMightyEaglePopupBin = §<!?§;
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 toBeShown = [];
                                 continue loop0;
                                 addr96:
                                 if(!(mTutorialPowerUpPopupBin && TutorialPopupManager))
                                 {
                                    while(true)
                                    {
                                       if(mTutorialPopupBin)
                                       {
                                          continue loop3;
                                       }
                                       addr113:
                                       while(true)
                                       {
                                          currentTutorial = null;
                                          addr108:
                                          while(mTutorialPopupBin)
                                          {
                                             while(mTutorialPopupBin)
                                             {
                                                §§goto(addr96);
                                                if(!(mTutorialPowerUpPopupBin && mTutorialPowerUpPopupBin))
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       addr32:
                                       if(mTutorialPowerUpPopupBin && mTutorialPowerUpPopupBin)
                                       {
                                          continue;
                                       }
                                       §§goto(addr39);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     if(!(mTutorialPopupBin || mTutorialPopupBin))
                     {
                        continue;
                     }
                     while(true)
                     {
                        isOpen = false;
                        while(mTutorialPopupBin)
                        {
                           if(!mTutorialPopupBin)
                           {
                              continue;
                           }
                           §§goto(addr32);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function TutorialPopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               while(_loc2_ || _loc1_)
               {
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      private static function §?!A§(birdName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc6_ && currentUIView)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr500:
            while(true)
            {
               §§push(§§pop());
               addr501:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  addr502:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private static function §^C§(powerUpName:String, currentUIView:§6"§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc6_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr168:
            while(true)
            {
               §§push(§§pop());
               addr169:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  addr170:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §%§(storageName:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && storageName)
         {
         }
         if(_loc6_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr73:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               continue loop0;
            }
         }
      }
      
      private static function §0?§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var bird:LevelSlingshotObject = null;
         if(!_loc6_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(_loc6_)
               {
                  if(_loc6_ || bird)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var birdsToShow:Array = [];
            if(!_loc6_)
            {
            }
            var _loc3_:int = 0;
            loop3:
            for each(bird in §]!B§.§>F§.slingshot.§#P§)
            {
               if(_loc6_)
               {
                  while(birdsToShow.indexOf(bird.name) < 0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                     }
                     loop5:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           birdsToShow.push(bird.name);
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_ || birdsToShow)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  if(true)
                  {
                     continue loop3;
                  }
                  §§goto(addr91);
               }
            }
            if(_loc5_ && TutorialPopupManager)
            {
            }
            return birdsToShow;
         }
      }
      
      public static function §,!B§(currentUIView:§6"§, storageName:String, powerUpName:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || storageName)
         {
         }
         if(_loc8_ && currentUIView)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = currentUIView;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(storageName);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           loop6:
                           while(!(_loc8_ && TutorialPopupManager))
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(_loc7_)
                              {
                                 §§push(powerUpName);
                                 while(!(_loc8_ && currentUIView))
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       do
                                       {
                                          while(!(_loc8_ && storageName))
                                          {
                                             while(_loc7_)
                                             {
                                                do
                                                {
                                                   if(isOpen)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop7;
                                                      addr504:
                                                   }
                                                   continue loop2;
                                                }
                                                while(_loc8_);
                                                
                                                continue loop10;
                                                if(_loc8_ && storageName)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr504);
                                             }
                                             continue loop9;
                                             if(!(_loc7_ || TutorialPopupManager))
                                             {
                                                continue;
                                             }
                                             §§push(§§newactivation());
                                             if(_loc7_)
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(_loc7_)
                                                {
                                                   var _loc5_:* = §§pop();
                                                   if(_loc7_ || powerUpName)
                                                   {
                                                      §§push("POWERUP4");
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_ || powerUpName)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc8_ && storageName))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc8_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr662:
                                                                     §§push(1);
                                                                     if(_loc8_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("POWERUP1");
                                                                  if(!(_loc8_ && TutorialPopupManager))
                                                                  {
                                                                     if(!(_loc8_ && powerUpName))
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc7_ || storageName)
                                                                              {
                                                                                 §§goto(addr662);
                                                                              }
                                                                              addr762:
                                                                              if(!(_loc8_ && currentUIView))
                                                                              {
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr420:
                                                                                          §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§pop().§§slot[4] = §§pop();
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(!(_loc8_ && storageName))
                                                                                                {
                                                                                                   addr402:
                                                                                                   mPowerUps.push(powerUpPopupName);
                                                                                                   addr774:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr777:
                                                                                                      §§push(mPowerUps);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§pop().§§slot[5] = §§pop();
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr785:
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               try
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc7_ || powerUpName)
                                                                                                                  {
                                                                                                                     addr796:
                                                                                                                     §§push(Boolean(§§pop().§§slot[2]));
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && storageName))
                                                                                                                           {
                                                                                                                              if(_loc7_ || currentUIView)
                                                                                                                              {
                                                                                                                                 addr1110:
                                                                                                                                 if(!mSharedObject)
                                                                                                                                 {
                                                                                                                                    mSharedObject = SharedObject.getLocal(storageName);
                                                                                                                                    addr1097:
                                                                                                                                    addr1112:
                                                                                                                                    addr1111:
                                                                                                                                    addr1106:
                                                                                                                                 }
                                                                                                                                 addr1087:
                                                                                                                                 var i:int = powerUpsToShow.length - 1;
                                                                                                                                 addr1086:
                                                                                                                                 addr1085:
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    addr859:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && storageName))
                                                                                                                                       {
                                                                                                                                          addr870:
                                                                                                                                          §§push(§§pop().§§slot[6]);
                                                                                                                                          if(_loc7_ || currentUIView)
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || TutorialPopupManager)
                                                                                                                                             {
                                                                                                                                                addr885:
                                                                                                                                                if(§§pop() < 0)
                                                                                                                                                {
                                                                                                                                                   addr887:
                                                                                                                                                   if(_loc7_ || TutorialPopupManager)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         addr897:
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr837:
                                                                                                                                                            mSharedObject.flush();
                                                                                                                                                            if(_loc7_ || TutorialPopupManager)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ || powerUpName)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc8_ && powerUpName))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ && powerUpName))
                                                                                                                                                                           {
                                                                                                                                                                              addr835:
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr837);
                                                                                                                                                                              }
                                                                                                                                                                              addr1141:
                                                                                                                                                                              _loc5_ = 0;
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 var _loc6_:* = powerUpsToShow;
                                                                                                                                                                                 if(_loc7_ || storageName)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1207:
                                                                                                                                                                                    for each(powerUpName in _loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1190:
                                                                                                                                                                                       if(_loc7_ || TutorialPopupManager)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1162:
                                                                                                                                                                                          §^C§(powerUpName,currentUIView);
                                                                                                                                                                                          if(_loc7_ || powerUpName)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1162);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1207);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1162);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1190);
                                                                                                                                                                                          addr1197:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1206:
                                                                                                                                                                                       §§goto(addr1206);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1210:
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1213:
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1197);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1210);
                                                                                                                                                                              addr1113:
                                                                                                                                                                           }
                                                                                                                                                                           addr941:
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr900:
                                                                                                                                                                              addr902:
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              if(!(_loc8_ && storageName))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().§§slot[6]);
                                                                                                                                                                                 if(!(_loc8_ && TutorialPopupManager))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                    if(!(_loc8_ && currentUIView))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr926:
                                                                                                                                                                                       i = §§pop();
                                                                                                                                                                                       if(_loc7_ || TutorialPopupManager)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr859);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1097);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1141);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr926);
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc8_ && powerUpName))
                                                                                                                                                                              {
                                                                                                                                                                                 addr958:
                                                                                                                                                                                 §§pop().§§slot[5].splice(i,1);
                                                                                                                                                                                 addr962:
                                                                                                                                                                                 if(!(_loc8_ && powerUpName))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr941);
                                                                                                                                                                                       addr971:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1060:
                                                                                                                                                                                    §§push(mSharedObject.data[powerUpPopupName] == false);
                                                                                                                                                                                    if(_loc7_ || powerUpName)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc8_ && powerUpName))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc7_ || storageName)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1021:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_ || storageName)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1213);
                                                                                                                                                                                                }
                                                                                                                                                                                                mSharedObject.data[powerUpPopupName] = true;
                                                                                                                                                                                                addr980:
                                                                                                                                                                                                if(_loc7_ || TutorialPopupManager)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr900);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1066:
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§§slot[5]);
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                         §§pop().§§slot[4] = §§pop()[i];
                                                                                                                                                                                                         addr1077:
                                                                                                                                                                                                         §§push(mSharedObject.data[powerUpPopupName] == undefined);
                                                                                                                                                                                                         if(_loc7_ || storageName)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1054:
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1059:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  §§goto(addr1060);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1021);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1110);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1054);
                                                                                                                                                                                                         addr1077:
                                                                                                                                                                                                         addr1063:
                                                                                                                                                                                                         addr1072:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1087);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1086);
                                                                                                                                                                                                   addr1082:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1077);
                                                                                                                                                                                                addr1033:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr900);
                                                                                                                                                                                             §§push(§§newactivation());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1054);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1059);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1021);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr980);
                                                                                                                                                                                 addr957:
                                                                                                                                                                                 addr956:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1085);
                                                                                                                                                                              addr943:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr962);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr897);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1213);
                                                                                                                                                                     addr858:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1063);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr887);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1213);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1112);
                                                                                                                                                         addr896:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1111);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1110);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1082);
                                                                                                                                             }
                                                                                                                                             §§goto(addr926);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1141);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1066);
                                                                                                                                    }
                                                                                                                                    §§goto(addr902);
                                                                                                                                    addr1094:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1106);
                                                                                                                                 addr816:
                                                                                                                              }
                                                                                                                              §§goto(addr858);
                                                                                                                           }
                                                                                                                           §§goto(addr1066);
                                                                                                                        }
                                                                                                                        §§goto(addr1113);
                                                                                                                     }
                                                                                                                     §§goto(addr1021);
                                                                                                                  }
                                                                                                                  §§goto(addr1066);
                                                                                                               }
                                                                                                               catch(e:Error)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        Log.log("Unable to get local storage");
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1141);
                                                                                                            }
                                                                                                            §§goto(addr1077);
                                                                                                         }
                                                                                                         §§goto(addr1060);
                                                                                                      }
                                                                                                      §§goto(addr1072);
                                                                                                   }
                                                                                                   §§goto(addr796);
                                                                                                   addr404:
                                                                                                   addr396:
                                                                                                   addr401:
                                                                                                   addr400:
                                                                                                }
                                                                                                §§goto(addr1097);
                                                                                             }
                                                                                             §§goto(addr1094);
                                                                                          }
                                                                                          §§goto(addr1076);
                                                                                       }
                                                                                       §§goto(addr777);
                                                                                       addr431:
                                                                                    case 1:
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr377:
                                                                                             §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                             if(!(_loc8_ && powerUpName))
                                                                                             {
                                                                                                addr385:
                                                                                                §§pop().§§slot[4] = §§pop();
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc7_ || storageName)
                                                                                                   {
                                                                                                      addr346:
                                                                                                      §§push(mPowerUps);
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr350:
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!(_loc8_ && powerUpName))
                                                                                                         {
                                                                                                            §§pop().push(§§pop());
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§goto(addr774);
                                                                                                            }
                                                                                                            §§goto(addr1097);
                                                                                                            addr359:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr402);
                                                                                                         }
                                                                                                         §§goto(addr402);
                                                                                                      }
                                                                                                      §§goto(addr958);
                                                                                                   }
                                                                                                   §§goto(addr404);
                                                                                                }
                                                                                                break;
                                                                                                addr386:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr420);
                                                                                             }
                                                                                             §§goto(addr1076);
                                                                                          }
                                                                                          §§goto(addr870);
                                                                                       }
                                                                                       §§goto(addr859);
                                                                                    case 2:
                                                                                       if(!(_loc8_ && storageName))
                                                                                       {
                                                                                          if(_loc7_ || storageName)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr314:
                                                                                                §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§pop().§§slot[4] = §§pop();
                                                                                                   addr303:
                                                                                                   mPowerUps.push(powerUpPopupName);
                                                                                                   if(_loc7_ || storageName)
                                                                                                   {
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                   §§goto(addr816);
                                                                                                   addr302:
                                                                                                   addr301:
                                                                                                   addr305:
                                                                                                   addr308:
                                                                                                   addr318:
                                                                                                }
                                                                                                §§goto(addr1076);
                                                                                             }
                                                                                             §§goto(addr1066);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr431);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr943);
                                                                                    case 3:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                          if(!(_loc8_ && powerUpName))
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§pop().§§slot[4] = §§pop();
                                                                                                      if(_loc7_ || TutorialPopupManager)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr216:
                                                                                                               §§push(mPowerUps);
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc7_ || TutorialPopupManager)
                                                                                                               {
                                                                                                                  if(_loc7_ || currentUIView)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[4]);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§pop().push(§§pop());
                                                                                                                              if(_loc7_ || powerUpName)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr396);
                                                                                                                                    }
                                                                                                                                    §§goto(addr402);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1097);
                                                                                                                              }
                                                                                                                              §§goto(addr835);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr350);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr303);
                                                                                                                        }
                                                                                                                        §§goto(addr1110);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr302);
                                                                                                                  }
                                                                                                                  §§goto(addr303);
                                                                                                               }
                                                                                                               §§goto(addr958);
                                                                                                            }
                                                                                                            §§goto(addr359);
                                                                                                         }
                                                                                                         §§goto(addr1033);
                                                                                                      }
                                                                                                      §§goto(addr785);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          §§goto(addr1076);
                                                                                       }
                                                                                       §§goto(addr1066);
                                                                                    case 4:
                                                                                       if(_loc7_ || currentUIView)
                                                                                       {
                                                                                          addr182:
                                                                                          mPowerUps.push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                                          if(_loc7_ || currentUIView)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr160:
                                                                                                   §§push(mPowerUps);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr163:
                                                                                                      §§pop().push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                                      if(!(_loc8_ && powerUpName))
                                                                                                      {
                                                                                                         if(!(_loc8_ && powerUpName))
                                                                                                         {
                                                                                                            if(_loc7_ || currentUIView)
                                                                                                            {
                                                                                                               if(!(_loc8_ && storageName))
                                                                                                               {
                                                                                                                  addr92:
                                                                                                                  §§push(mPowerUps);
                                                                                                                  if(_loc7_ || storageName)
                                                                                                                  {
                                                                                                                     if(_loc7_ || powerUpName)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && storageName))
                                                                                                                        {
                                                                                                                           addr114:
                                                                                                                           §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                                                                           if(_loc7_ || TutorialPopupManager)
                                                                                                                           {
                                                                                                                              §§pop().push(§§pop());
                                                                                                                              if(!(_loc8_ && TutorialPopupManager))
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || TutorialPopupManager)
                                                                                                                                    {
                                                                                                                                       addr48:
                                                                                                                                       §§push(mPowerUps);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && powerUpName))
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && TutorialPopupManager))
                                                                                                                                                {
                                                                                                                                                   §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().push(§§pop());
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && powerUpName))
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr48);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr402);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr785);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr859);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr182);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr114);
                                                                                                                                                }
                                                                                                                                                §§goto(addr400);
                                                                                                                                             }
                                                                                                                                             §§goto(addr301);
                                                                                                                                          }
                                                                                                                                          §§goto(addr92);
                                                                                                                                       }
                                                                                                                                       §§goto(addr957);
                                                                                                                                    }
                                                                                                                                    §§goto(addr835);
                                                                                                                                 }
                                                                                                                                 §§goto(addr305);
                                                                                                                              }
                                                                                                                              §§goto(addr896);
                                                                                                                           }
                                                                                                                           §§goto(addr163);
                                                                                                                        }
                                                                                                                        §§goto(addr346);
                                                                                                                     }
                                                                                                                     §§goto(addr182);
                                                                                                                  }
                                                                                                                  §§goto(addr160);
                                                                                                               }
                                                                                                               §§goto(addr386);
                                                                                                            }
                                                                                                            §§goto(addr308);
                                                                                                         }
                                                                                                         §§goto(addr971);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr216);
                                                                                                }
                                                                                                §§goto(addr1097);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          §§goto(addr1097);
                                                                                       }
                                                                                       §§goto(addr859);
                                                                                    default:
                                                                                       §§goto(addr402);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr885);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("POWERUP2");
                                                                              if(!(_loc8_ && currentUIView))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc7_ || currentUIView)
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!(_loc7_ || powerUpName))
                                                                                             {
                                                                                                addr760:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr741:
                                                                                             §§push(4);
                                                                                             if(_loc7_ || storageName)
                                                                                             {
                                                                                                addr749:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr762);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("POWERUP3");
                                                                                          if(!(_loc8_ && TutorialPopupManager))
                                                                                          {
                                                                                             addr705:
                                                                                             if(_loc8_)
                                                                                             {
                                                                                             }
                                                                                             addr732:
                                                                                             if(§§pop() === _loc5_)
                                                                                             {
                                                                                                if(_loc7_ || TutorialPopupManager)
                                                                                                {
                                                                                                   §§goto(addr741);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr752:
                                                                                                   §§push(5);
                                                                                                   if(!(_loc8_ && powerUpName))
                                                                                                   {
                                                                                                      §§goto(addr760);
                                                                                                   }
                                                                                                   §§goto(addr762);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr752);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr762);
                                                                                                   §§push(5);
                                                                                                }
                                                                                                §§goto(addr762);
                                                                                             }
                                                                                             §§goto(addr752);
                                                                                             addr731:
                                                                                          }
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc8_ && TutorialPopupManager))
                                                                                          {
                                                                                             addr716:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr719:
                                                                                                   §§push(3);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr762);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr749);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr752);
                                                                                                }
                                                                                                §§goto(addr762);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push("ALL");
                                                                                                if(_loc7_ || storageName)
                                                                                                {
                                                                                                   §§goto(addr731);
                                                                                                }
                                                                                                §§goto(addr732);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr762);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                        }
                                                                        §§goto(addr716);
                                                                     }
                                                                  }
                                                                  §§goto(addr732);
                                                               }
                                                               §§goto(addr762);
                                                            }
                                                            §§goto(addr716);
                                                         }
                                                         §§goto(addr732);
                                                      }
                                                      §§goto(addr705);
                                                   }
                                                   §§goto(addr719);
                                                }
                                                §§goto(addr796);
                                             }
                                             §§goto(addr956);
                                          }
                                          continue loop3;
                                       }
                                       while(!(_loc7_ || storageName));
                                       
                                       if(_loc7_)
                                       {
                                          return;
                                          addr521:
                                       }
                                       continue loop6;
                                    }
                                    §§push(powerUpName);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                    }
                                    if(!(_loc7_ || storageName))
                                    {
                                       continue;
                                    }
                                    §§pop().§§slot[4] = §§pop();
                                    loop15:
                                    while(true)
                                    {
                                       if(!(_loc7_ || powerUpName))
                                       {
                                          if(_loc7_)
                                          {
                                             §§goto(addr497);
                                          }
                                          break;
                                       }
                                       while(_loc7_)
                                       {
                                          mPowerUps = [];
                                          if(!_loc8_)
                                          {
                                             continue loop15;
                                          }
                                       }
                                       §§goto(addr509);
                                       §§goto(addr527);
                                    }
                                    §§goto(addr521);
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §"!]§(currentUIView:§6"§, storageName:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(_loc7_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        for(; _loc6_; if(!(_loc6_ || storageName))
                        {
                           continue;
                        },if(_loc7_)
                        {
                           continue loop0;
                        },§§pop().§§slot[3] = §0?§(),while(_loc7_ && storageName)
                        {
                        },if(_loc6_ || TutorialPopupManager)
                        {
                           if(_loc6_)
                           {
                              if(false)
                              {
                                 §§goto(addr48);
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    §§push(Boolean(§§pop().§§slot[2]));
                                    if(_loc6_ || currentUIView)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || TutorialPopupManager)
                                             {
                                                addr474:
                                                if(!mSharedObject)
                                                {
                                                   mSharedObject = SharedObject.getLocal(storageName);
                                                   addr476:
                                                   addr475:
                                                   if(_loc6_ || storageName)
                                                   {
                                                      addr446:
                                                      var i:int = birdsToShow.length - 1;
                                                      addr223:
                                                      addr444:
                                                      addr454:
                                                      addr451:
                                                      addr445:
                                                      §§push(§§newactivation());
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop().§§slot[5]);
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc6_ || showTutorials$0)
                                                               {
                                                                  if(§§pop() < 0)
                                                                  {
                                                                     addr241:
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr244:
                                                                        if(_loc6_ || storageName)
                                                                        {
                                                                           addr203:
                                                                           mSharedObject.flush();
                                                                           if(_loc6_ || storageName)
                                                                           {
                                                                              if(_loc6_ || showTutorials$0)
                                                                              {
                                                                                 if(!(_loc7_ && TutorialPopupManager))
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_ || showTutorials$0)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr203);
                                                                                             }
                                                                                             addr515:
                                                                                             var _loc4_:int = 0;
                                                                                             if(_loc6_ || storageName)
                                                                                             {
                                                                                                var _loc5_:* = birdsToShow;
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr571:
                                                                                                   for each(birdName in _loc5_)
                                                                                                   {
                                                                                                      addr543:
                                                                                                      §?!A§(birdName,currentUIView);
                                                                                                      addr570:
                                                                                                      if(!(_loc7_ && currentUIView))
                                                                                                      {
                                                                                                         if(!(_loc7_ && storageName))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr543);
                                                                                                               }
                                                                                                               §§goto(addr571);
                                                                                                            }
                                                                                                            §§goto(addr570);
                                                                                                         }
                                                                                                         §§goto(addr543);
                                                                                                      }
                                                                                                      addr561:
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   addr584:
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §3!A§();
                                                                                                      addr615:
                                                                                                      if(_loc6_ || currentUIView)
                                                                                                      {
                                                                                                         if(_loc7_ && showTutorials$0)
                                                                                                         {
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr608:
                                                                                                      }
                                                                                                      addr613:
                                                                                                      §§goto(addr613);
                                                                                                      addr587:
                                                                                                   }
                                                                                                   §§goto(addr608);
                                                                                                }
                                                                                                §§goto(addr543);
                                                                                             }
                                                                                             §§goto(addr584);
                                                                                             addr477:
                                                                                          }
                                                                                          addr269:
                                                                                          if(_loc6_ || TutorialPopupManager)
                                                                                          {
                                                                                             addr252:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[5]);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr263:
                                                                                                   i = §§pop();
                                                                                                   §§goto(addr223);
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[3]);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§pop().§§slot[4] = §§pop()[i];
                                                                                                   if(_loc6_ || currentUIView)
                                                                                                   {
                                                                                                      if(_loc6_ || showTutorials$0)
                                                                                                      {
                                                                                                         if(!(_loc7_ && currentUIView))
                                                                                                         {
                                                                                                            §§push(mSharedObject.data[birdName] == undefined);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_ || TutorialPopupManager)
                                                                                                               {
                                                                                                                  addr378:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc6_ || TutorialPopupManager)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr388:
                                                                                                                     §§pop();
                                                                                                                     if(_loc6_ || TutorialPopupManager)
                                                                                                                     {
                                                                                                                        §§push(mSharedObject.data[birdName] == false);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || showTutorials$0)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr348:
                                                                                                                                 addr347:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && currentUIView))
                                                                                                                                    {
                                                                                                                                       mSharedObject.data[birdName] = true;
                                                                                                                                       if(_loc6_ || currentUIView)
                                                                                                                                       {
                                                                                                                                          §§goto(addr252);
                                                                                                                                       }
                                                                                                                                       §§goto(addr615);
                                                                                                                                       addr357:
                                                                                                                                       addr356:
                                                                                                                                    }
                                                                                                                                    §§goto(addr608);
                                                                                                                                 }
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc6_ || showTutorials$0)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[3].splice(i,1);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr269);
                                                                                                                                       }
                                                                                                                                       §§goto(addr476);
                                                                                                                                    }
                                                                                                                                    §§goto(addr608);
                                                                                                                                 }
                                                                                                                                 §§goto(addr444);
                                                                                                                              }
                                                                                                                              §§goto(addr378);
                                                                                                                           }
                                                                                                                           §§goto(addr388);
                                                                                                                        }
                                                                                                                        §§goto(addr348);
                                                                                                                        addr396:
                                                                                                                     }
                                                                                                                     §§goto(addr615);
                                                                                                                  }
                                                                                                                  §§goto(addr347);
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            §§goto(addr378);
                                                                                                         }
                                                                                                         §§goto(addr454);
                                                                                                      }
                                                                                                      §§goto(addr451);
                                                                                                   }
                                                                                                   §§goto(addr615);
                                                                                                   addr434:
                                                                                                }
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             §§goto(addr445);
                                                                                          }
                                                                                          §§goto(addr475);
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    §§goto(addr244);
                                                                                 }
                                                                                 §§goto(addr608);
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr615);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr434);
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr252);
                                                                     §§push(§§newactivation());
                                                                  }
                                                                  §§goto(addr587);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr515);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr252);
                                                      addr442:
                                                   }
                                                   §§goto(addr615);
                                                }
                                                §§goto(addr442);
                                             }
                                             §§goto(addr396);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr477);
                                    }
                                    §§goto(addr378);
                                 }
                                 §§goto(addr446);
                              }
                              catch(e:Error)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && showTutorials$0))
                                    {
                                       Log.log("Unable to get local storage");
                                    }
                                 }
                                 if(_loc7_ && TutorialPopupManager)
                                 {
                                 }
                                 §§goto(addr515);
                              }
                              §§goto(addr608);
                           }
                           §§goto(addr104);
                        },if(_loc6_ || currentUIView)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr77);
                           }
                           §§goto(addr110);
                        },§§goto(addr92))
                        {
                           §§pop().§§slot[1] = currentUIView;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(storageName);
                                 if(!(_loc6_ || showTutorials$0))
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[2] = §§pop();
                                 while(true)
                                 {
                                    addr110:
                                    while(!(_loc7_ && currentUIView))
                                    {
                                       if(!(_loc7_ && TutorialPopupManager))
                                       {
                                          loop10:
                                          do
                                          {
                                             addr104:
                                             while(true)
                                             {
                                                if(isOpen)
                                                {
                                                   if(_loc7_)
                                                   {
                                                   }
                                                   continue loop10;
                                                }
                                                addr48:
                                                addr48:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc6_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          while(!_loc6_);
                                          
                                          continue loop6;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                    addr77:
                                    if(_loc7_ && showTutorials$0)
                                    {
                                       continue;
                                    }
                                    §§goto(addr48);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      private static function §3!A§(useFadeEffect:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && useFadeEffect)
         {
         }
         if(!(_loc3_ && TutorialPopupManager))
         {
            loop0:
            while(true)
            {
               addr170:
               while(true)
               {
                  §§push(isOpen);
                  if(_loc2_ || useFadeEffect)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        addr155:
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && TutorialPopupManager))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(toBeShown.length > 0);
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr33:
                                       return;
                                    }
                                    while(true)
                                    {
                                       addr131:
                                       loop8:
                                       while(true)
                                       {
                                          isOpen = true;
                                          while(_loc2_)
                                          {
                                             while(!(_loc3_ && useFadeEffect))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr128);
                     }
                  }
                  §§goto(addr155);
               }
            }
         }
         §§goto(addr131);
      }
      
      public static function §<Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || TutorialPopupManager)
         {
            loop0:
            while(isOpen == true)
            {
               do
               {
                  loop2:
                  while(true)
                  {
                     if(toBeShown.length > 0)
                     {
                        addr155:
                        currentTutorial.preClose(false);
                        isOpen = false;
                        addr147:
                        while(true)
                        {
                           addr125:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 §3!A§(false);
                                 break loop0;
                                 addr122:
                              }
                              continue loop2;
                           }
                        }
                        addr165:
                        addr147:
                        addr157:
                        addr150:
                        addr164:
                        addr154:
                     }
                     else
                     {
                        isOpen = false;
                        loop3:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          continue loop0;
                                       }
                                       §§push(currentTutorial);
                                       if(!_loc1_)
                                       {
                                          §§push(true);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§pop().preClose(§§pop());
                                             for(; _loc2_ || TutorialPopupManager; if(!_loc2_)
                                             {
                                                continue;
                                             },if(!_loc1_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr41);
                                                }
                                                §§goto(addr164);
                                             },§§goto(addr88))
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr154);
                                       continue loop0;
                                    }
                                    §§goto(addr165);
                                 }
                                 break;
                              }
                              continue loop3;
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr147);
                  }
               }
               while(!_loc2_);
               
               break;
            }
            return;
         }
         §§goto(addr155);
      }
   }
}
