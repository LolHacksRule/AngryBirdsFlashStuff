package §^`§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §%j§ extends §,!K§
   {
      
      private static const §5!Z§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §5!Z§ = 50;
         }
      }
      
      private var §6O§:MovieClip;
      
      public function §%j§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§6O§ = new MovieClip();
            while(true)
            {
               addChild(this.§6O§);
               while(_loc5_ || this)
               {
                  super(param1,param2,param3,param4);
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super.createAvatar(param1,param2,param3,param4,true);
            while(true)
            {
               addChild(§4!^§);
            }
            addr101:
         }
         loop1:
         while(true)
         {
            this.§1=§(§#Y§);
            while(_loc6_)
            {
               this.§@2§(§4!^§,§5!Z§);
               while(!(_loc7_ && param2))
               {
                  continue loop1;
                  this.§<?§(§#Y§ as §14§);
                  if(!(_loc7_ && this))
                  {
                     return;
                  }
               }
            }
            §§goto(addr101);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.createFacebookProfile(param1,param2,true);
            while(true)
            {
               this.§1=§(§4!^§);
               while(!_loc5_)
               {
                  this.§<?§(§4!^§ as §14§);
                  if(_loc4_ || this)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §1=§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            if(this.§6O§.numChildren <= 0)
            {
               do
               {
                  this.§6O§.scrollRect = new Rectangle(0,0,§5!Z§,§5!Z§);
                  do
                  {
                     this.§6O§.addChild(param1);
                  }
                  while(!_loc2_);
                  
               }
               while(_loc3_ && this);
               
               if(_loc2_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§6O§.removeChildAt(0);
            }
         }
      }
      
      private function §<?§(param1:§14§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1.width > 0);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr102:
                     loop2:
                     while(true)
                     {
                        §§push(param1.height > 0);
                        if(_loc2_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    this.§@2§(param1,§5!Z§);
                                 }
                              }
                              else
                              {
                                 param1.addEventListener(Event.COMPLETE,this.§0N§);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr24);
                                 }
                              }
                              if(_loc2_ || this)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           addr24:
                        }
                        continue;
                        return;
                     }
                  }
                  addr101:
               }
               §§goto(addr62);
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      private function §0N§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§14§ = param1.currentTarget as §14§;
         if(_loc3_ || this)
         {
            if(_loc2_)
            {
               while(true)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§0N§);
                  addr77:
                  while(true)
                  {
                  }
               }
               addr71:
            }
            while(true)
            {
               this.§@2§(_loc2_,§5!Z§);
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr77);
      }
      
      private function §@2§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(_loc7_ || param1)
         {
            §§push(param1 is §>!N§);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               while(true)
               {
                  §§push(param2);
                  while(true)
                  {
                     §§push(§§pop() * 1.4);
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           param2 = §§pop();
                           while(true)
                           {
                              param1.x = -5;
                              while(true)
                              {
                                 param1.y = -5;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!_loc6_)
                                    {
                                       §§push(_loc5_);
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr269:
                                          }
                                          addr270:
                                          while(_loc7_ || param2)
                                          {
                                             _loc3_ = §§pop();
                                             continue loop7;
                                          }
                                          continue loop3;
                                       }
                                       addr266:
                                    }
                                    §§goto(addr269);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr255);
      }
   }
}
