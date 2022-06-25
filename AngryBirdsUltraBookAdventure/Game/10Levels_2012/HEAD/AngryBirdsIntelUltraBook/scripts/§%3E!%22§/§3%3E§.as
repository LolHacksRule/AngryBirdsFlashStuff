package §>!"§
{
   import §@!H§.§-!H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3>§ extends Popup
   {
       
      
      private var §`!#§:Sprite;
      
      public function §3>§(data:XML, currentUIView:§-!H§, tutorialSprite:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || tutorialSprite)
         {
            while(true)
            {
               while(_loc4_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        super(data,currentUIView);
                        addr118:
                        while(true)
                        {
                           do
                           {
                              this.setVisibility(false);
                              continue loop2;
                           }
                           while(_loc5_ && data);
                           
                        }
                        addr67:
                        if(_loc5_ && currentUIView)
                        {
                           continue;
                        }
                        addr74:
                        if(_loc5_)
                        {
                           loop8:
                           while(true)
                           {
                              if(!(_loc5_ && tutorialSprite))
                              {
                                 §§goto(addr67);
                              }
                              else
                              {
                                 while(!_loc5_)
                                 {
                                    this.§`!#§ = tutorialSprite;
                                    continue loop8;
                                 }
                                 §§goto(addr118);
                                 addr77:
                              }
                           }
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop2;
                        }
                        §§goto(addr38);
                     }
                  }
                  if(!(_loc4_ || tutorialSprite))
                  {
                     continue;
                  }
                  §§goto(addr77);
               }
            }
         }
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!_loc6_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  loop3:
                  while(!_loc7_)
                  {
                     do
                     {
                        while(!_loc7_)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                     while(false);
                     
                     var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
                     if(!_loc6_)
                     {
                     }
                     §§push(container.width - this.§`!#§.width >> 1);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var x:* = §§pop();
                     if(!_loc6_)
                     {
                     }
                     §§push(container.height - this.§`!#§.height >> 1);
                     if(_loc6_ || x)
                     {
                        §§push(int(§§pop()));
                     }
                     var y:* = §§pop();
                     if(_loc7_ && useFadeEffect)
                     {
                     }
                     var rect:Rectangle = this.§`!#§.getBounds(this.§`!#§);
                     if(_loc6_ || x)
                     {
                        addr313:
                        §§push(x);
                        if(_loc6_ || useFadeEffect)
                        {
                           addr312:
                           §§push(int(§§pop() - rect.left));
                        }
                        x = §§pop();
                        addr316:
                        if(!(_loc7_ && container))
                        {
                           §§push(y);
                           if(!(_loc7_ && x))
                           {
                              §§push(§§pop() - rect.top);
                              if(_loc6_)
                              {
                                 addr286:
                                 §§push(int(§§pop()));
                                 if(_loc6_)
                                 {
                                    y = §§pop();
                                    container.addChild(this.§`!#§);
                                    this.§`!#§.x = x;
                                    this.§`!#§.y = y - 10;
                                    addr247:
                                    addr257:
                                    addr238:
                                    addr289:
                                    addr260:
                                    addr250:
                                    if(_loc6_ || container)
                                    {
                                       if(!_loc7_)
                                       {
                                          super.open(useFadeEffect);
                                          addr197:
                                          if(_loc6_ || this)
                                          {
                                             if(_loc6_ || x)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   addr170:
                                                   if(_loc6_ || container)
                                                   {
                                                      if(!(_loc7_ && useFadeEffect))
                                                      {
                                                         if(_loc6_ || useFadeEffect)
                                                         {
                                                            mClip.getChildByName("Container_Tutorial").visible = true;
                                                            addr156:
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc6_ || useFadeEffect)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!(_loc7_ && useFadeEffect))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr170);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr260);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr316);
                                    }
                                    addr241:
                                    §§goto(addr241);
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr286);
                        }
                        addr314:
                        §§goto(addr314);
                     }
                     §§goto(addr247);
                  }
               }
            }
         }
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || useFadeEffect)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr33:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     loop3:
                     while(true)
                     {
                        super.preClose(useFadeEffect);
                        addr49:
                        addr69:
                        while(!(_loc3_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr33);
                        }
                        while(true)
                        {
                           continue loop3;
                           §§goto(addr49);
                        }
                     }
                  }
                  var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
                  if(_loc3_)
                  {
                  }
                  loop5:
                  while(true)
                  {
                     container.removeChild(this.§`!#§);
                     while(true)
                     {
                        while(_loc4_ || useFadeEffect)
                        {
                           mClip.getChildByName("Container_Tutorial").visible = false;
                           while(_loc4_)
                           {
                              continue loop5;
                              if(_loc4_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         do
         {
            super.close();
            while(!(_loc2_ || this))
            {
            }
         }
         while(!(_loc2_ || _loc1_));
         
      }
   }
}
