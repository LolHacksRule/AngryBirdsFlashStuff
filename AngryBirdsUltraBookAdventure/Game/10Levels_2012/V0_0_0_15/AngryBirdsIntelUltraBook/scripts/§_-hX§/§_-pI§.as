package §_-hX§
{
   import §_-05L§.§_-K5§;
   import §_-0EZ§.§_-Dk§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §_-pI§ extends MovieClip
   {
      
      public static var §_-uP§:Array;
      
      private static var §_-03S§:String;
      
      public static const get:Boolean = false;
      
      private static var §_-qG§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-uP§ = [];
            do
            {
               get = false;
               do
               {
                  §_-qG§ = {};
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      protected var §_-2A§:Sprite;
      
      protected var §_-gM§:Sprite;
      
      protected var §_-52§:Boolean;
      
      protected var §_-FS§:Sprite;
      
      protected var §_-ck§:String;
      
      protected var §_-3m§:String;
      
      protected var §_-lT§:Boolean = false;
      
      public function §_-pI§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            do
            {
               this.initProfile(param1,param2,param3,param4);
            }
            while(!(_loc6_ || this));
            
         }
      }
      
      public static function §_-6-§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-pI§ = null;
         var _loc2_:int = 0;
         if(!_loc7_)
         {
            §_-03S§ = param1;
            if(_loc6_)
            {
               if(param1 != null)
               {
                  addr51:
                  for each(_loc3_ in §_-uP§)
                  {
                     if(_loc6_)
                     {
                        _loc3_.update(§_-K5§.§_-EE§,param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            §§push(this);
            if(_loc7_)
            {
               §§push(param4);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop());
                     if(_loc7_ || param2)
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr54:
                              §§pop();
                              addr55:
                              §§push(§_-bT§.§_-N2§);
                              if(_loc7_ || param3)
                              {
                              }
                              addr82:
                              var _loc5_:*;
                              §§push(_loc5_ = §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || param3)
                                 {
                                    param4 = §§pop();
                                    §§push(_loc5_);
                                 }
                              }
                              §§pop().§_-3m§ = §§pop();
                              if(!_loc6_)
                              {
                                 this.§_-ck§ = param1;
                                 loop0:
                                 while(true)
                                 {
                                    this.§_-52§ = §_-K5§.§_-EE§ == param1;
                                    loop1:
                                    while(true)
                                    {
                                       this.§_-FS§ = new Sprite();
                                       while(!_loc6_)
                                       {
                                          this.§_-FS§.graphics.beginFill(0,0);
                                          continue loop1;
                                          while(!(_loc6_ && this))
                                          {
                                             this.§_-FS§.graphics.endFill();
                                             loop6:
                                             while(_loc7_ || param1)
                                             {
                                                addChild(this.§_-FS§);
                                                loop7:
                                                while(true)
                                                {
                                                   this.§_-BS§(param1,param2,param3);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(this.§_-52§)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue;
                                                               }
                                                               §_-uP§.push(this);
                                                            }
                                                            while(true)
                                                            {
                                                               addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
                                                               loop10:
                                                               while(_loc7_ || this)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr131:
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           addEventListener(Event.REMOVED_FROM_STAGE,this.§_-l5§);
                                                                           if(!(_loc6_ && param3))
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§_-FS§.graphics.drawRect(0,0,50,50);
                                 §§goto(addr188);
                              }
                           }
                           §§push(§§pop());
                           if(_loc6_)
                           {
                           }
                        }
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr55);
         }
         §§goto(addr138);
      }
      
      private function §_-OT§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§_-m4§)
            {
               if(!_loc2_)
               {
                  addr52:
                  this.§_-2A§.visible = false;
               }
               do
               {
                  this.§_-gM§.visible = true;
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §_-Ni§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§_-m4§)
            {
               if(_loc3_)
               {
                  addr47:
                  this.§_-2A§.visible = true;
               }
               do
               {
                  this.§_-gM§.visible = false;
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function get §_-0x§() : String
      {
         return this.§_-ck§;
      }
      
      public function get §_-m4§() : Boolean
      {
         return this.§_-lT§;
      }
      
      public function set §_-m4§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-lT§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.§_-m4§)
               {
                  if(_loc4_)
                  {
                     this.mouseEnabled = this.mouseChildren = true;
                     if(_loc4_ || _loc2_)
                     {
                        addr70:
                     }
                  }
               }
               else
               {
                  this.mouseEnabled = this.mouseChildren = false;
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §_-b-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§_-03S§ != null)
            {
               if(_loc3_)
               {
                  this.§_-BS§(this.§_-ck§,§_-03S§);
               }
            }
         }
      }
      
      protected function §_-l5§(param1:Event) : void
      {
      }
      
      public function get §_-028§() : Sprite
      {
         return this.§_-2A§;
      }
      
      public function get §_-5m§() : Boolean
      {
         return this.§_-52§;
      }
      
      protected function §_-BS§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§_-2A§)
            {
               loop0:
               while(true)
               {
                  if(this.§_-2A§.parent)
                  {
                     while(true)
                     {
                        this.§_-2A§.parent.removeChild(this.§_-2A§);
                        addr281:
                        while(true)
                        {
                        }
                     }
                     addr275:
                  }
                  loop19:
                  while(true)
                  {
                     if(_loc5_ || param2)
                     {
                        §§push(param2);
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              §§push(null);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                    addr147:
                                 }
                                 loop20:
                                 while(_loc5_ || param2)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ || param2)
                                       {
                                          if(§§pop())
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                §§pop();
                                                addr168:
                                                do
                                                {
                                                   §§push(get);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop21;
                                                   }
                                                   addr96:
                                                }
                                                while(_loc5_);
                                                
                                                continue loop20;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.createFacebookProfile(param1,param3);
                                                loop24:
                                                while(true)
                                                {
                                                   if(_loc6_ && param3)
                                                   {
                                                      while(_loc5_ || param1)
                                                      {
                                                         this.createAvatar(param2,param1,param3);
                                                         §§goto(addr112);
                                                      }
                                                      break;
                                                      addr100:
                                                   }
                                                   while(true)
                                                   {
                                                      loop27:
                                                      while(this.§_-FS§)
                                                      {
                                                         if(_loc5_ || param3)
                                                         {
                                                            continue loop24;
                                                         }
                                                         addr50:
                                                         addr50:
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            addr112:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  continue loop27;
                                                               }
                                                               §§goto(addr168);
                                                               §§goto(addr50);
                                                            }
                                                            continue loop19;
                                                            addr112:
                                                         }
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr236);
                                                         §§goto(addr266);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr112);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr100);
                                          }
                                       }
                                       while(_loc5_)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop20;
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr265);
                                       addr188:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr188);
                                    }
                                 }
                                 while(!(_loc6_ && param3))
                                 {
                                    §§pop();
                                    continue loop19;
                                    §§goto(addr149);
                                 }
                                 addr149:
                                 §§goto(addr213);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr235);
                        }
                        break;
                        addr206:
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     if(_loc5_ || this)
                     {
                        §§push("");
                        if(_loc5_ || this)
                        {
                           §§goto(addr187);
                           §§push(§§pop() == §§pop());
                        }
                        §§goto(addr212);
                     }
                     break;
                     §§goto(addr206);
                  }
                  §§goto(addr262);
               }
            }
            while(true)
            {
               §§push(get);
               if(!(_loc6_ && param1))
               {
                  if(§§pop())
                  {
                     §§goto(addr259);
                  }
                  §§goto(addr169);
               }
               §§goto(addr266);
            }
         }
         §§goto(addr81);
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            this.§_-m4§ = true;
            if(_loc8_)
            {
               addr29:
               this.§_-gM§ = this.§_-0AT§(param2,this.§_-3m§,param3);
            }
            §§push(this.§_-3m§);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || this)
            {
               if(param4 > 0)
               {
                  loop0:
                  while(true)
                  {
                     §§push("");
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() + param4);
                     }
                     _loc6_ = §§pop();
                     addr226:
                     addr203:
                     while(true)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc7_ && this)
                        {
                           continue loop0;
                        }
                        §§push(param5);
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 addChild(this.§_-gM§);
                                 addr185:
                                 while(true)
                                 {
                                 }
                              }
                              addr181:
                           }
                           while(true)
                           {
                              this.§_-gM§.visible = false;
                              loop7:
                              while(true)
                              {
                                 this.§_-FS§.addEventListener(MouseEvent.MOUSE_OVER,this.§_-OT§);
                                 while(true)
                                 {
                                    this.§_-FS§.addEventListener(MouseEvent.MOUSE_OUT,this.§_-Ni§);
                                    addr155:
                                    while(_loc8_ || param3)
                                    {
                                       §§push(Boolean(this.§_-2A§));
                                       continue loop4;
                                    }
                                    addr96:
                                    continue loop7;
                                    addr96:
                                    if(!(_loc8_ || param2))
                                    {
                                       continue;
                                    }
                                    if(_loc8_ || param2)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr56:
                                          return;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§_-2A§ = new §_-WC§(param1,_loc6_);
                  §§goto(addr203);
                  §§goto(addr226);
               }
            }
            §§goto(addr185);
         }
         §§goto(addr29);
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§_-m4§ = false;
            while(true)
            {
               this.§_-2A§ = this.§_-0AT§(param1,this.§_-3m§,param2);
               loop1:
               while(true)
               {
                  §§push(Boolean(this.§_-2A§));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr100:
                           while(true)
                           {
                              §§push(param3);
                              if(_loc5_ || param3)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              if(!(_loc5_ || this))
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                     while(§§pop())
                     {
                        if(_loc5_)
                        {
                           addChild(this.§_-2A§);
                        }
                        if(!(_loc4_ && param2))
                        {
                           continue loop1;
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr20);
                  }
               }
               if(_loc4_ && param1)
               {
                  continue;
               }
               §§goto(addr92);
            }
         }
         addr92:
         addr20:
      }
      
      private function §_-0AT§(param1:String, param2:String, param3:Boolean = false) : §_-bT§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-bT§ = null;
         if(!_loc6_)
         {
            if(!§_-qG§[param1 + param2])
            {
               if(_loc5_)
               {
                  §_-qG§[param1 + param2] = [];
                  addr39:
                  if(_loc5_)
                  {
                     §§goto(addr57);
                  }
               }
               §§goto(addr65);
            }
            addr57:
            if(§_-qG§[param1 + param2].length > 0)
            {
               addr65:
               _loc4_ = §_-qG§[param1 + param2].pop();
            }
            else
            {
               _loc4_ = new §_-bT§(param1,param3,param2);
            }
            return _loc4_;
         }
         §§goto(addr39);
      }
      
      public function update(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§_-BS§(param1,param2,false);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(this.§_-2A§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr218:
                     while(true)
                     {
                        §§push(this.§_-2A§ is §_-bT§);
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§_-qG§[this.§_-ck§ + this.§_-3m§])
                        {
                           addr203:
                           while(true)
                           {
                              §_-qG§[this.§_-ck§ + this.§_-3m§] = [];
                              addr211:
                              while(true)
                              {
                              }
                           }
                           addr203:
                        }
                        addr157:
                        while(true)
                        {
                           §_-qG§[this.§_-ck§ + this.§_-3m§].push(this.§_-2A§);
                           addr168:
                           while(true)
                           {
                           }
                        }
                     }
                     addr195:
                  }
                  loop8:
                  while(true)
                  {
                     if(this.§_-2A§)
                     {
                        loop9:
                        while(true)
                        {
                           if(this.§_-2A§.parent == this)
                           {
                              loop10:
                              while(true)
                              {
                                 removeChild(this.§_-2A§);
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          this.§_-2A§ = null;
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc2_ && _loc2_)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc2_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc1_)
                                             {
                                                break loop12;
                                             }
                                             while(true)
                                             {
                                                if(this.§_-gM§)
                                                {
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      break loop13;
                                                   }
                                                   if(this.§_-gM§.parent != this)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§_-gM§ = null;
                                                         while(true)
                                                         {
                                                            §§goto(addr43);
                                                         }
                                                         addr124:
                                                      }
                                                   }
                                                   §§goto(addr111);
                                                }
                                                addr43:
                                                while(this.§_-FS§)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            this.§_-FS§.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-OT§);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr218);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                   }
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      addr111:
                                                      while(true)
                                                      {
                                                         removeChild(this.§_-gM§);
                                                         break loop20;
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                                return;
                                             }
                                          }
                                          continue loop11;
                                       }
                                       continue loop8;
                                       addr125:
                                    }
                                    §§goto(addr195);
                                    §§goto(addr203);
                                 }
                                 §§goto(addr157);
                              }
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr211);
      }
   }
}
