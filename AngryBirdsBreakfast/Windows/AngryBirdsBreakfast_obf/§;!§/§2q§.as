package §;!§
{
   import §"n§.§!!G§;
   import §&v§.§#!R§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   
   public class §2q§ extends §[j§
   {
       
      
      protected var §'x§:§,!e§ = null;
      
      private var §;!u§:Boolean;
      
      public function §2q§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param2,param4,param5);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
         }
         while(true)
         {
            this.§'x§ = new §,!e§(0,0,0,0);
            while(!_loc1_)
            {
               §?P§.movieClip.cacheAsBitmap = true;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §?P§.container.mClip.removeChild(this.§'x§);
                              addr109:
                              while(true)
                              {
                              }
                           }
                           addr103:
                        }
                        while(true)
                        {
                           super.activate(param1);
                           loop5:
                           while(true)
                           {
                              this.updateLocalization();
                              loop6:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.setLoadingText();
                                    for(; _loc3_; this.§;!u§ = false,if(_loc3_ || _loc2_)
                                    {
                                       continue loop5;
                                    })
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr103);
                                       }
                                       §§goto(addr109);
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                              continue loop0;
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr42);
                           }
                        }
                        addr89:
                        §§push(§§pop().parent == §?P§.container.mClip);
                        if(_loc3_ || _loc2_)
                        {
                           continue;
                        }
                        addr127:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr127:
                     }
                  }
               }
               §§goto(addr127);
            }
         }
         §§goto(addr73);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<f§(§4!9§.§-!q§);
         }
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.updateLocalization();
         }
         do
         {
            §!!G§.§2Z§.updateTextFields(§?P§.container,"StateLevelLoading");
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^t§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
         }
      }
      
      protected function §^t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr208:
                        while(true)
                        {
                           §§push(this.§;!u§);
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     while(true)
                     {
                        this.§;!u§ = true;
                        loop6:
                        while(true)
                        {
                           §§push(this.§'x§);
                           loop7:
                           while(true)
                           {
                              §§push(0);
                              loop8:
                              while(true)
                              {
                                 §§pop().§7z§(§§pop());
                                 while(true)
                                 {
                                    §§push(this.§'x§);
                                    while(true)
                                    {
                                       if(§§pop().parent != §?P§.container.mClip)
                                       {
                                          §?P§.container.mClip.addChild(this.§'x§);
                                          loop11:
                                          while(true)
                                          {
                                             addr66:
                                             while(true)
                                             {
                                                §§push(this.§'x§);
                                                addr69:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§=v§(§§pop(),0.25);
                                                   continue loop11;
                                                }
                                                continue loop8;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       while(true)
                                       {
                                          §?P§.container.mClip.removeChild(this.§'x§);
                                          §§goto(addr154);
                                       }
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr110);
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
            do
            {
               §<f§(§1f§());
            }
            while(_loc3_ && _loc2_);
            
         }
      }
   }
}
