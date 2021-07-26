package §;u§
{
   import §,l§.§+I§;
   import §<"F§.§6h§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §5<§ extends §7D§
   {
      
      public static const §&7§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&7§ = "4000";
         }
         do
         {
            STATE_NAME = "WonderlandLevelSelection";
         }
         while(!(_loc2_ || §5<§));
         
      }
      
      private var §]1§:§6h§;
      
      public function §5<§(param1:Boolean = false, param2:String = "WonderlandLevelSelection")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override protected function initView() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.initView();
         }
         var _loc1_:Class = §?q§.§ q§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         if(!(_loc4_ && _loc3_))
         {
            §2"@§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(this.§9"%§.§7"T§.§+!!§())
            {
               if(!_loc3_)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  if(§2"@§.getItemByName("MovieClip_ThemeCenter").mClip.numChildren > 0)
                  {
                     §2"@§.getItemByName("MovieClip_ThemeCenter").mClip.removeChildAt(0);
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§,"",true);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.§]1§);
                        loop3:
                        while(true)
                        {
                           §§push(275);
                           loop4:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(this.§]1§);
                              loop5:
                              for(; _loc3_; if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              },§§push(this.§9"%§.§7"T§.§5!4§),if(!_loc2_)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§pop().eggs = §§pop();
                                    while(_loc3_ || _loc2_)
                                    {
                                       §2"@§.getItemByName("MovieClip_ThemeCenter").mClip.addChild(this.§]1§);
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr34);
                                          }
                                          else
                                          {
                                             §§push(this.§]1§);
                                          }
                                          §§goto(addr161);
                                       }
                                       break loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              },§§goto(addr84))
                              {
                                 §§push(-150);
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    if(!(_loc2_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§]1§);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       addr161:
                                       §§pop().scaleX = this.§]1§.scaleY = 1.1;
                                       break loop0;
                                       addr34:
                                    }
                                    break loop0;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr147);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]1§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §2"@§.getItemByName("MovieClip_ThemeCenter").mClip.removeChild(this.§]1§);
                  }
                  continue;
               }
               loop4:
               while(true)
               {
                  super.deActivate();
                  if(_loc2_ || _loc2_)
                  {
                     addr44:
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     addr73:
                     while(!(_loc1_ && _loc1_))
                     {
                        this.§]1§ = null;
                        continue loop4;
                        §§goto(addr44);
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
