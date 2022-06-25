package
{
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-9K§;
   import §_-0A-§.§_-08e§;
   import §_-0BH§.§_-ZE§;
   import §_-0EZ§.§_-48§;
   import §_-0EZ§.§_-7n§;
   import §_-7§.§_-EJ§;
   import §_-AZ§.§_-07C§;
   import §_-Ga§.LevelManager;
   import §_-T-§.§_-0Am§;
   import §_-T-§.§_-0Dp§;
   import §_-T-§.§_-0FA§;
   import §_-T-§.§_-C3§;
   import §_-T-§.§_-aa§;
   import §_-T-§.§_-cV§;
   import §_-T-§.§_-cg§;
   import §_-T-§.§_-e3§;
   import §_-T-§.§_-ss§;
   import §_-T-§.§_-tD§;
   import §_-T-§.§_-ul§;
   import §_-Y8§.§_-05J§;
   import §_-ad§.StateCutScene;
   import §_-ad§.StatePlay;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-Rp§;
   import §_-ad§.§_-UO§;
   import §_-dJ§.§_-xW§;
   import §_-eS§.§_-OY§;
   import §_-eS§.§_-Vn§;
   import §_-eS§.§_-Za§;
   import §_-hX§.§_-WC§;
   import §_-hX§.§_-bT§;
   import §_-jn§.§_-hS§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-RM§;
   import §_-y7§.§_-zA§;
   import com.angrybirds.friendsbar.§_-ri§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §_-rG§ extends AngryBirdsFP11
   {
      
      public static const §_-0E-§:String = "0.0.0.15 r97255)";
      
      private static const §_-0Eh§:String = "AngryBirdsFacebookSettings";
      
      protected static var §_-3d§:Class;
      
      protected static var §_-kW§:Class;
      
      protected static var §_-9t§:Class;
      
      protected static var §_-0-V§:Class;
      
      public static var §_-kj§:§_-7n§;
      
      public static var §_-rY§:§_-rG§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-0E-§ = "0.0.0.15 r97255)";
            loop0:
            while(true)
            {
               §_-0Eh§ = "AngryBirdsFacebookSettings";
               addr81:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §_-9t§ = §_-G1§;
               while(!(_loc1_ && _loc2_))
               {
                  §_-0-V§ = §_-3y§;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr35:
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr81);
                        }
                        else
                        {
                           while(true)
                           {
                              §_-kW§ = §_-0y§;
                              continue loop3;
                           }
                           addr93:
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  §_-3d§ = §_-1H§;
                  §§goto(addr93);
                  §§goto(addr57);
               }
               addr57:
               addr98:
            }
         }
         §§goto(addr98);
      }
      
      protected var §_-A7§:§_-ri§;
      
      private var §_-rK§:String = null;
      
      private var §_-Fb§:String = "";
      
      private var §_-cC§:§_-Vn§;
      
      private var §_-sR§:Sprite;
      
      private var §_-kO§:Boolean = false;
      
      public function §_-rG§(param1:§_-hS§)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Stage3D = null;
         if(!_loc8_)
         {
            §_-Za§.enabled = true;
         }
         var _loc2_:* = 0;
         try
         {
            if(_loc5_ = param1.stage.stage3Ds[0])
            {
               if(!_loc8_)
               {
                  §§push(1);
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc2_ = §§pop();
                     if(!(_loc8_ && _loc2_))
                     {
                        addr66:
                        if(_loc2_ == 0)
                        {
                           if(!_loc8_)
                           {
                              §_-OY§.§_-ff§("no-stage3d");
                              if(!_loc8_)
                              {
                                 addr157:
                                 §§push(§§findproperty(§_-3T§));
                                 if(!_loc8_)
                                 {
                                    §§push(param1.stage.loaderInfo.parameters.serverVersion);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§pop().§_-3T§ = §§pop() || "[No version from server]";
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§findproperty(§_-08Q§));
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(param1.stage.loaderInfo.parameters.serverRoot);
                                             if(_loc7_)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr125:
                                                   §§pop();
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(§_-LI§)
                                                      {
                                                         addr145:
                                                         §§push("http://head-dot-angrybirds-ultrabook.appspot.com");
                                                         if(_loc8_ && param1)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("http://head-dot-angrybirds-ultrabook.appspot.com");
                                                      }
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§pop().§_-08Q§ = §§pop();
                                                addr156:
                                                loop1:
                                                while(true)
                                                {
                                                   super(param1);
                                                   while(true)
                                                   {
                                                      addr94:
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §_-rY§ = this;
                                                         while(!_loc8_)
                                                         {
                                                            §_-OY§.§_-Ve§(§_-Za§.§_-R6§);
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                addr156:
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr145);
                                       }
                                       addr178:
                                    }
                                 }
                                 §§goto(addr175);
                                 addr75:
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr157);
                        addr53:
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr53);
         }
         catch(e:Error)
         {
            §§goto(addr66);
         }
         §§goto(addr156);
      }
      
      public static function §_-K0§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push((sUserProgress as §_-09d§).§_-0x§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr54);
                  }
               }
               return null;
            }
            §§goto(addr54);
         }
         addr54:
         §§push(§_-0Eh§ + "-");
         if(!(_loc1_ && _loc1_))
         {
            return §§pop() + (sUserProgress as §_-09d§).§_-0x§;
         }
      }
      
      public static function §_-1J§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §_-kj§ = new §_-7n§(§_-08Q§,(AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§,(AngryBirdsFP11.sUserProgress as §_-09d§).userName);
            if(!_loc4_)
            {
               §§push(§_-kj§);
               if(_loc3_)
               {
                  §§pop().§_-067§(param1);
                  addr60:
                  §§push(§_-kj§);
               }
               §§push(§§pop().§_-wX§);
               if(!(_loc4_ && §_-rG§))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  if(_loc2_ >= 0)
                  {
                     if(!_loc4_)
                     {
                        addr78:
                        §_-OY§.§_-Yx§(_loc2_);
                     }
                  }
                  return;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr60);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §_-05a§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
         }
      }
      
      private function §_-Jl§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§_-kO§)
            {
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §_-ZE§.§_-ve§(§_-3d§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §_-ZE§.§_-ve§(§_-kW§);
         if(!(_loc4_ && _loc2_))
         {
            this.§_-04h§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §_-ZE§.§_-ve§(§_-0-V§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(!_loc5_)
         {
            this.§_-04h§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §_-ZE§.§_-ve§(§_-9t§);
         if(_loc4_ || this)
         {
            this.§_-04h§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      protected function §_-sx§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§_-LI§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  if(!stage.loaderInfo.parameters.userId)
                  {
                     while(true)
                     {
                        §_-OY§.§_-Sp§("userId");
                        addr124:
                        while(true)
                        {
                        }
                        addr65:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        §_-OY§.§_-Sp§("tokenExpiresIn");
                        loop3:
                        while(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 §_-9K§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              return;
                              addr24:
                           }
                           else
                           {
                              addr96:
                           }
                           while(true)
                           {
                              §_-OY§.§_-Sp§("accessToken");
                              break loop3;
                           }
                        }
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              while(true)
                              {
                                 if(!stage.loaderInfo.parameters.tokenExpiresIn)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr65);
                                    }
                                    §§goto(addr75);
                                 }
                                 §§goto(addr24);
                              }
                              §§goto(addr124);
                              addr42:
                           }
                           else
                           {
                              §§goto(addr124);
                           }
                           addr80:
                           while(true)
                           {
                              if(stage.loaderInfo.parameters.accessToken)
                              {
                                 §§goto(addr42);
                              }
                              §§goto(addr96);
                              §§goto(addr124);
                           }
                        }
                        addr75:
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr124);
            }
            §§goto(addr24);
         }
         §§goto(addr96);
      }
      
      override protected function initialize() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:SharedObject = null;
         if(_loc5_)
         {
            super.initialize();
            if(_loc5_)
            {
               this.§_-rK§ = stage.loaderInfo.parameters.levelId;
               if(!_loc4_)
               {
                  §_-Z§.addEventListener(Event.INIT,this.§_-0-W§);
                  loop0:
                  while(true)
                  {
                     addr47:
                     while(true)
                     {
                        §_-Z§.addEventListener(Event.COMPLETE,this.§_-0Ey§);
                        loop2:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              this.§_-sx§();
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr47);
            }
            var _loc1_:Boolean = true;
            try
            {
               _loc2_ = SharedObject.getLocal(§_-0Eh§);
               if(_loc5_)
               {
                  if(_loc2_.data.useSounds != undefined)
                  {
                     if(_loc5_)
                     {
                        addr109:
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           addr97:
                           §§pop();
                           if(!_loc5_)
                           {
                           }
                           addr134:
                           _loc1_ = _loc2_.data.useSounds;
                           if(_loc5_)
                           {
                              addr168:
                              §_-mv§(_loc1_);
                              if(!_loc4_)
                              {
                                 §_-05J§.addCallback("giftsSentToUsers",this.§_-05a§);
                              }
                           }
                           return;
                           addr191:
                           addr117:
                        }
                        do
                        {
                           §_-05J§.addCallback("onUrl",this.§_-Jl§);
                        }
                        while(!(_loc5_ || _loc1_));
                        
                        §§goto(addr191);
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        if(true)
                        {
                           _loc2_.data.useSounds = true;
                           if(_loc5_ || _loc2_)
                           {
                              §§goto(addr134);
                           }
                        }
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr109);
            }
            catch(e:Error)
            {
               §§goto(addr168);
            }
            §§goto(addr97);
         }
         §§goto(addr56);
      }
      
      protected function §_-Ft§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-A7§ = new §_-ri§(§_-kj§,§_-08Q§,(sUserProgress as §_-09d§).§_-0x§);
            if(_loc2_ || _loc2_)
            {
               this.§_-sR§.addChild(this.§_-A7§);
               if(_loc2_)
               {
                  §§push(this.§_-A7§);
                  if(_loc2_)
                  {
                     §§pop().height = stage.stageHeight;
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(this.§_-A7§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().x = stage.stageWidth - 180;
                           if(!_loc3_)
                           {
                              §§push(this.§_-A7§);
                              loop0:
                              while(true)
                              {
                                 §§push(§_-07C§.§_-S1§);
                                 addr250:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§_-4S§);
                                    addr253:
                                    while(true)
                                    {
                                       §§push(this.§_-A7§);
                                       addr240:
                                       while(true)
                                       {
                                          §§push(§_-07C§.§_-Yr§);
                                          addr242:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§_-ch§);
                                             addr245:
                                             loop21:
                                             while(true)
                                             {
                                                §§push(this.§_-A7§);
                                                addr229:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§_-07C§.§_-H7§);
                                                   addr231:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§function§);
                                                      addr234:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§_-A7§);
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§_-A7§);
                              while(true)
                              {
                                 §§push(§_-07C§.PLAY_LEVEL);
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§_-04D§);
                                          continue;
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr192);
                                 }
                                 break;
                              }
                              §§goto(addr170);
                           }
                           return;
                        }
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr240);
               }
               §§goto(addr236);
            }
         }
         §§goto(addr245);
      }
      
      protected function §_-0-W§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-bT§.§_-03c§(false);
         }
      }
      
      protected function §_-0Ey§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §_-bT§.§_-03c§(true);
         }
      }
      
      public function §_-Cw§(param1:String, param2:§_-48§ = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(this.§_-A7§);
            if(!_loc5_)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     addr41:
                     §§push(LevelManager.§_-N9§(param1).name);
                     if(_loc4_)
                     {
                        addr48:
                        §§push(§§pop());
                     }
                     §§goto(addr48);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§pop().§_-0-j§(§§pop(),param1,param2,param3);
                  §§goto(addr54);
               }
               §§goto(addr48);
            }
            §§goto(addr41);
         }
         addr54:
      }
      
      public function §_-KA§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-A7§.§_-RB§(param1);
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            § in§.§_-Dc§ = new §_-xW§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            sUserProgress = new §_-09d§(§_-08Q§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-pP§(new §_-tD§(false));
            loop0:
            while(true)
            {
               §_-pP§(new §_-cg§(false));
               loop1:
               while(true)
               {
                  §_-pP§(new §_-aa§(false));
                  loop2:
                  while(true)
                  {
                     §_-pP§(new §_-0Am§(false));
                     loop3:
                     while(true)
                     {
                        §_-pP§(new §_-e3§(false));
                        addr104:
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        §_-pP§(new §_-C3§(false));
                        loop7:
                        while(!(_loc2_ && this))
                        {
                           §_-pP§(new §_-ss§(false));
                           continue loop2;
                           if(_loc1_ || this)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr104);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §_-pP§(new §_-0Dp§(false));
                                          break loop7;
                                       }
                                       addr137:
                                    }
                                 }
                                 continue loop3;
                                 addr97:
                              }
                              return;
                           }
                        }
                        while(true)
                        {
                           §_-pP§(new §_-ul§(false));
                           §§goto(addr97);
                           §§goto(addr83);
                        }
                        addr83:
                     }
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      override protected function initStateLoad() : §_-RM§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§_-LI§)
            {
               if(_loc2_)
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!(_loc1_ && this))
                     {
                        §_-OY§.§_-Sp§("assetsUrl");
                        if(!_loc2_)
                        {
                        }
                        return new §_-0FA§(true,§_-RM§.§_-pk§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
                        addr70:
                     }
                     §§goto(addr70);
                  }
               }
               if(stage.loaderInfo.parameters.buildNumber)
               {
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            §_-pL§ = true;
            if(_loc4_)
            {
               addr31:
               §§push(this.§_-rK§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr38:
                        §§push(LevelManager.§_-Hc§(this.§_-rK§));
                        if(_loc4_ || this)
                        {
                           addr49:
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              addr52:
                              _loc2_ = §§pop();
                              addr102:
                              if(!_loc5_)
                              {
                                 §§push(_loc2_);
                              }
                              if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                              {
                                 if(!_loc5_)
                                 {
                                    this.§_-00P§(_loc2_);
                                 }
                              }
                              else
                              {
                                 loop0:
                                 while(true)
                                 {
                                    addr118:
                                    while(true)
                                    {
                                       §_-Sk§(§_-Rp§.§_-pk§);
                                       if(!(_loc5_ && param1))
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                              }
                              return;
                              addr145:
                           }
                           if(§§pop() != this.§_-rK§)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §_-OY§.§_-03O§(this.§_-rK§);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr87:
                                    this.§_-rK§ = null;
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr102);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr118);
               }
               §§goto(addr49);
            }
            §§goto(addr38);
         }
         §§goto(addr31);
      }
      
      public function §_-00P§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(LevelManager.§_-Hc§(param1));
            if(!_loc3_)
            {
               var _loc2_:*;
               §§push(_loc2_ = §§pop());
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr59);
               }
               §§goto(addr56);
            }
            addr59:
            §§push(§§pop());
            if(_loc4_)
            {
               addr56:
               param1 = §§pop();
               §§push(_loc2_);
            }
            §§pop();
            if(!_loc3_)
            {
               LevelManager.§_-s8§(param1);
               do
               {
                  §_-Sk§(StateCutScene.§_-pk§);
               }
               while(!(_loc4_ || this));
               
               addr83:
            }
            return;
         }
         §§goto(addr83);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setFirstGameState();
            if(_loc2_)
            {
               §_-WC§.§_-ic§ = new §_-zA§();
               if(_loc2_ || _loc3_)
               {
                  §_-WC§.§_-ic§.§_-wV§();
                  addr102:
                  while(true)
                  {
                     this.§_-Ft§();
                  }
                  addr102:
                  addr48:
               }
               while((sUserProgress as §_-09d§).hasTutorialBeenSeen(§_-09d§.§_-FR§) == false)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        (sUserProgress as §_-09d§).saveTutorialSeen(§_-09d§.§_-FR§);
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr48);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(!(_loc8_ && this))
         {
            §§push(_loc2_);
            if(_loc9_)
            {
               §§push(20);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc9_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              if(_loc9_)
                              {
                                 §§push(_loc3_);
                                 if(_loc9_ || this)
                                 {
                                    §§push(20);
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc9_ || _loc2_)
                                       {
                                          addr88:
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                _loc2_ = §_-pO§;
                                                if(_loc9_)
                                                {
                                                   _loc3_ = §_-02I§;
                                                   if(_loc9_ || param1)
                                                   {
                                                      addr121:
                                                      §§push(_loc2_);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(2);
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc9_)
                                                            {
                                                               addr136:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr139:
                                                                     §§pop();
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr145:
                                                                           §§push(2);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr149:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr152);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr181:
                                                                                    _loc2_ = Math.round(_loc3_ * (25 / 12));
                                                                                    §§push(180);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr155:
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    addr174:
                                                                                    if(§§pop() / _loc3_ > 25 / 12)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr181);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr152);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      var _loc4_:* = §§pop();
                                                      var _loc5_:int = 62;
                                                      §§push(_loc2_);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(int(§§pop() - (_loc4_ - _loc5_)));
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      if(_loc9_ || this)
                                                      {
                                                         § in§.§_-82§(0,0,_loc6_,_loc3_);
                                                         if(_loc9_)
                                                         {
                                                            loop0:
                                                            while(true)
                                                            {
                                                               setViewSize(_loc6_,_loc3_);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  this.§_-Z2§(_loc2_,_loc3_);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc9_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(this.§_-A7§);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §§push(this.§_-A7§);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr268:
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§pop().x = §§pop() - §§pop();
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             break loop1;
                                                                                          }
                                                                                          addr351:
                                                                                          var _loc7_:*;
                                                                                          §_-02I§ = _loc7_ = _loc3_;
                                                                                          addr358:
                                                                                          _loc7_;
                                                                                          return;
                                                                                          addr357:
                                                                                          addr356:
                                                                                       }
                                                                                       addr292:
                                                                                       _loc7_ = §§pop();
                                                                                       §§pop().height = §§pop();
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc9_ || _loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   addr315:
                                                                                                   §_-pO§ = _loc7_ = _loc6_;
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr343:
                                                                                                            §§pop();
                                                                                                            if(_loc8_ && this)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr351);
                                                                                                         }
                                                                                                         §§goto(addr358);
                                                                                                      }
                                                                                                      §§goto(addr357);
                                                                                                   }
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr290:
                                                                                 §§push(_loc3_);
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr292);
                                                                     §§push(§§pop());
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr155);
                                             }
                                             addr152:
                                             return;
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr88);
               }
               §§goto(addr149);
            }
            §§goto(addr174);
         }
         §§goto(addr155);
      }
      
      public function §_-Z2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §_-EJ§.setViewSize(param1,param2);
         }
      }
      
      protected function §_-04h§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(var _loc9_ in param3)
         {
            _loc5_ = _loc9_;
            _loc9_;
            if(_loc13_)
            {
               _loc9_ = 0;
               if(_loc13_)
               {
                  for each(var _loc11_ in param1[_loc5_].§*§)
                  {
                     _loc6_ = _loc11_;
                     _loc11_;
                     if(_loc13_ || param2)
                     {
                        §§push(param4);
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              addr111:
                              if(!(_loc12_ && param2))
                              {
                                 §§push(delete param2[_loc5_][_loc6_.name()]);
                              }
                              param2[_loc5_].appendChild(_loc6_);
                              continue;
                           }
                           §§goto(addr111);
                        }
                        §§pop();
                        if(_loc12_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr111);
                  }
               }
            }
         }
      }
      
      protected function §_-4S§(param1:§_-07C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-DE§();
            loop0:
            while(true)
            {
               if(param1.data == null)
               {
                  §_-OY§.§_-V4§();
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§_-05J§);
                              §§push("flashInviteFriendsHandler");
                              if(_loc2_)
                              {
                                 §§push(param1.data);
                                 if(_loc2_)
                                 {
                                    §§pop().§_-0At§(§§pop(),!!§§pop() ? param1.data.userId : null);
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          return;
                                       }
                                       addr79:
                                       while(_loc2_)
                                       {
                                          §_-OY§.§_-sn§();
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr55);
                           }
                        }
                        addr73:
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr79);
            }
         }
         §§goto(addr73);
      }
      
      protected function §_-ch§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §_-0De§();
         }
      }
      
      protected function §function§(param1:§_-07C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§pop();
            do
            {
               §_-ot§.uiInteractionHandler(0,"showCredits",null);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §_-dE§(param1:§_-07C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-ot§.uiInteractionHandler(0,"showTutorial",null);
         }
      }
      
      protected function §_-lr§(param1:§_-07C§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §_-DE§();
         }
         var _loc2_:int = (param1.data as §_-5b§).§_-0Ef§ - 1;
         if(!(_loc4_ && this))
         {
            §_-OY§.§_-8t§(_loc2_.toString());
            do
            {
               §§push(§_-05J§);
               §§push("flashBrag");
               §§push(param1.data.userId);
               §§push(LevelManager.§_-HM§);
               §§push(LevelManager.§_-1a§().writtenName + "-");
               if(_loc3_)
               {
                  §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
               }
               §§pop().§_-0At§(§§pop(),§§pop(),§§pop(),§§pop());
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      protected function §_-04D§(param1:§_-07C§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = param1.target.data.lvl;
         §§push(LevelManager.§_-Hc§(_loc2_));
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != _loc2_)
            {
               while(true)
               {
                  §_-OY§.§_-03O§(_loc2_);
                  §§goto(addr110);
               }
            }
            for(; AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_); addr110:,§§goto(addr103))
            {
               if(!_loc4_)
               {
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  LevelManager.§_-s8§(_loc3_);
               }
            }
            return;
         }
         addr103:
         while(true)
         {
         }
         while(true)
         {
            §_-Sk§(StateCutScene.§_-pk§);
            if(_loc5_ || _loc2_)
            {
               if(_loc5_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §_-BV§(param1:§_-07C§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            while(true)
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[1] = param1;
                  continue;
               }
               addr170:
               §§pop().§§slot[2] = SharedObject.getLocal(§_-0Eh§);
               if(!_loc4_)
               {
                  addr177:
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr180:
                     §§pop().§§slot[2].data.useSounds = §_-gR§;
                     if(!(_loc4_ && this))
                     {
                        addr197:
                        mySO.flush();
                        if(_loc4_ && param1)
                        {
                        }
                        return;
                        addr217:
                     }
                     §§pop();
                     §§goto(addr217);
                  }
               }
               §§goto(addr197);
            }
         }
         §§goto(addr180);
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         §§push(this.§_-VY§(_loc2_,_loc3_,_loc4_));
         if(_loc7_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:*;
         if(_loc5_ = §§pop())
         {
            if(_loc7_ || this)
            {
               (AngryBirdsFP11.sUserProgress as §_-09d§).§_-00D§(param1,_loc5_);
            }
         }
      }
      
      private function §_-VY§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc7_:§_-5b§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         §§push(this.§_-5I§.§_-R0§(LevelManager.§_-HM§,param1,param2,param3,_loc5_,param4));
         if(_loc12_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(var _loc11_ in _loc5_)
         {
            _loc7_ = _loc11_;
            _loc11_;
            if(_loc12_)
            {
               _loc8_ = _loc7_.§_-0Ef§ - 1;
               if(_loc12_)
               {
                  §_-OY§.§_-0Dd§(_loc8_.toString());
               }
            }
         }
         return _loc6_;
      }
      
      public function get §_-5I§() : §_-ri§
      {
         return this.§_-A7§;
      }
      
      public function get §_-0C7§() : §_-Vn§
      {
         return this.§_-cC§;
      }
      
      public function §_-09i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-cC§);
            if(_loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr48);
            }
            §§pop().§_-Jz§();
         }
         addr48:
         if(_loc1_ || _loc1_)
         {
            §§push(this.§_-cC§);
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(_loc1_ || _loc1_)
         {
            §§push(§§pop() + §_-0E-§.replace("{svn_version}","local dev build"));
            if(!_loc2_)
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ || _loc1_)
               {
                  addr50:
                  return §§pop() + §_-3T§;
               }
            }
         }
         §§goto(addr50);
      }
      
      override protected function initializeGame() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc3_)
         {
            §_-OY§.§_-Ve§(§_-Za§.§_-2N§,_loc1_.toString(),_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               this.§_-kO§ = true;
               if(_loc3_ || _loc3_)
               {
                  addr75:
                  super.initializeGame();
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.onKeyDown(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§_-Fb§);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        this.§_-Fb§ = String.fromCharCode(param1.keyCode);
                        if(_loc4_ && param1)
                        {
                        }
                        addr90:
                        this.§_-Fb§ = this.§_-Fb§.toLowerCase();
                        §§goto(addr129);
                     }
                     addr129:
                     if(!(_loc4_ && param1))
                     {
                        §§push(this.§_-Fb§);
                     }
                     this.§_-Fb§ = this.§_-Fb§.substr(1);
                     return;
                  }
                  this.§_-Fb§ = this.§_-Fb§ + String.fromCharCode(param1.keyCode);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr90);
                  §§goto(addr90);
               }
               if(§§pop().length > 15)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §_-OY§.§_-U3§();
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-OY§.§_-cQ§();
         }
      }
   }
}
