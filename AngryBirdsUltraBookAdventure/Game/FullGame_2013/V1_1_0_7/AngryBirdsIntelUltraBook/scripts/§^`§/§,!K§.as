package §^`§
{
   import §,@§.§8@§;
   import §-5§.§+p§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,!K§ extends MovieClip
   {
      
      public static var §"x§:Array;
      
      private static var §8!W§:String;
      
      public static const §%t§:Boolean = false;
      
      private static var §]d§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"x§ = [];
         }
         do
         {
            §%t§ = false;
            do
            {
               §]d§ = {};
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && §,!K§);
         
      }
      
      protected var §4!^§:Sprite;
      
      protected var §#Y§:Sprite;
      
      protected var §&"!§:Boolean;
      
      protected var §>z§:Sprite;
      
      protected var §][§:String;
      
      protected var §#!@§:String;
      
      protected var §>!S§:Boolean = false;
      
      public function §,!K§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
         }
         do
         {
            this.initProfile(param1,param2,param3,param4);
         }
         while(!_loc5_);
         
      }
      
      public static function §2!Y§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§,!K§ = null;
         var _loc2_:int = 0;
         if(!_loc6_)
         {
            §8!W§ = param1;
            if(_loc7_)
            {
               §§goto(addr49);
            }
            §§goto(addr52);
         }
         addr49:
         if(param1 != null)
         {
            addr52:
            for each(_loc3_ in §"x§)
            {
               if(_loc7_)
               {
                  _loc3_.update(§+p§.§!!I§,param1);
               }
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(this);
            if(_loc6_ || param3)
            {
               §§push(param4);
               if(!_loc7_)
               {
                  §§push(§§pop());
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              addr49:
                              §§push(§14§.§93§);
                              if(!(_loc7_ && param3))
                              {
                                 addr58:
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    addr61:
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          param4 = §§pop();
                                          §§push(_loc5_);
                                       }
                                    }
                                 }
                                 §§pop().§#!@§ = §§pop();
                                 if(!_loc7_)
                                 {
                                    this.§][§ = param1;
                                    addr219:
                                    while(true)
                                    {
                                       this.§&"!§ = §+p§.§!!I§ == param1;
                                       loop1:
                                       while(true)
                                       {
                                          this.§>z§ = new Sprite();
                                          addr207:
                                          while(true)
                                          {
                                             this.§>z§.graphics.beginFill(0,0);
                                             continue loop1;
                                          }
                                       }
                                    }
                                    addr219:
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr61);
                           }
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr58);
               }
               §§goto(addr61);
            }
            §§goto(addr49);
         }
         §§goto(addr219);
      }
      
      private function §"$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§[Y§)
            {
               do
               {
                  this.§4!^§.visible = false;
                  do
                  {
                     this.§#Y§.visible = true;
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(!(_loc2_ || this));
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      private function §;_§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§[Y§)
            {
               do
               {
                  this.§4!^§.visible = true;
                  do
                  {
                     this.§#Y§.visible = false;
                  }
                  while(!_loc3_);
                  
               }
               while(!_loc3_);
               
               addr48:
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function get § z§() : String
      {
         return this.§][§;
      }
      
      public function get §[Y§() : Boolean
      {
         return this.§>!S§;
      }
      
      public function set §[Y§(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§>!S§ = param1;
            if(!_loc4_)
            {
               addr23:
               if(this.§[Y§)
               {
                  if(!(_loc4_ && param1))
                  {
                     this.mouseEnabled = this.mouseChildren = true;
                     if(_loc3_ || _loc2_)
                     {
                     }
                     §§goto(addr79);
                  }
               }
               else
               {
                  this.mouseEnabled = this.mouseChildren = false;
               }
            }
            addr79:
            return;
         }
         §§goto(addr23);
      }
      
      protected function §#Z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§8!W§ != null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr28:
                  this.§+C§(this.§][§,§8!W§);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected function §=!?§(param1:Event) : void
      {
      }
      
      public function get §&!B§() : Sprite
      {
         return this.§4!^§;
      }
      
      public function get §&!N§() : Boolean
      {
         return this.§&"!§;
      }
      
      protected function §+C§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            if(this.§4!^§)
            {
               while(true)
               {
                  if(this.§4!^§.parent)
                  {
                     while(true)
                     {
                        this.§4!^§.parent.removeChild(this.§4!^§);
                        addr277:
                        while(true)
                        {
                        }
                     }
                     addr271:
                  }
               }
               addr267:
            }
            while(true)
            {
               §§push(§%t§);
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     loop20:
                     while(true)
                     {
                        §§push(param2);
                        loop21:
                        while(true)
                        {
                           §§push(null);
                           loop22:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop23:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop24:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop25:
                                       while(true)
                                       {
                                          §§pop();
                                          loop26:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc6_)
                                             {
                                                continue loop21;
                                             }
                                             loop28:
                                             while(true)
                                             {
                                                param2 = §§pop();
                                                loop29:
                                                while(true)
                                                {
                                                   if(_loc6_ || param3)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || param2))
                                                            {
                                                               continue loop28;
                                                            }
                                                            §§push("");
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop9:
                                                                        while(_loc6_ || param2)
                                                                        {
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop29;
                                                                              }
                                                                              §§push(param2);
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§push(null);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       addr99:
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    continue loop23;
                                                                                    addr153:
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                              addr234:
                                                                              while(true)
                                                                              {
                                                                                 continue loop28;
                                                                              }
                                                                              addr75:
                                                                              if(_loc5_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 loop15:
                                                                                 for(; this.§>z§; while(true)
                                                                                 {
                                                                                    continue loop15;
                                                                                 })
                                                                                 {
                                                                                    addr33:
                                                                                    if(!(_loc5_ && param3))
                                                                                    {
                                                                                       setChildIndex(this.§>z§,this.numChildren - 1);
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop26;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    addr68:
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || param3)
                                                                                       {
                                                                                          §§goto(addr75);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                this.createAvatar(param2,param1,param3);
                                                                                                continue loop15;
                                                                                             }
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   break loop14;
                                                                                                }
                                                                                                §§push(§%t§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ && this)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      §§goto(addr99);
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr177:
                                                                                                }
                                                                                                §§goto(addr99);
                                                                                             }
                                                                                             §§goto(addr153);
                                                                                          }
                                                                                          addr115:
                                                                                       }
                                                                                       §§goto(addr33);
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           continue loop29;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop29;
                                                                           }
                                                                           §§goto(addr234);
                                                                           §§push(§8@§.§<!u§(param1));
                                                                        }
                                                                        addr228:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    this.createFacebookProfile(param1,param3);
                                                                                    §§goto(addr68);
                                                                                 }
                                                                                 §§goto(addr115);
                                                                                 continue loop7;
                                                                              }
                                                                              addr113:
                                                                           }
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  addr227:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr226:
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         continue loop28;
                                                      }
                                                      addr183:
                                                   }
                                                   §§goto(addr277);
                                                }
                                             }
                                          }
                                          continue loop22;
                                       }
                                    }
                                    §§goto(addr227);
                                 }
                              }
                           }
                        }
                     }
                     addr257:
                  }
                  §§goto(addr183);
               }
            }
         }
         §§goto(addr257);
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§[Y§ = true;
            if(!(_loc8_ && param1))
            {
               addr28:
               this.§#Y§ = this.§#!b§(param2,this.§#!@§,param3);
            }
            §§push(this.§#!@§);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc7_ || param2)
            {
               if(param4 > 0)
               {
                  if(_loc7_)
                  {
                     addr210:
                     §§push("");
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§pop() + param4);
                     }
                     _loc6_ = §§pop();
                     while(true)
                     {
                     }
                     addr210:
                  }
                  §§goto(addr210);
               }
               loop0:
               while(true)
               {
                  this.§4!^§ = new §>!N§(param1,_loc6_);
                  loop1:
                  while(true)
                  {
                     §§push(param5);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(_loc7_)
                           {
                              addChild(this.§#Y§);
                              while(true)
                              {
                              }
                           }
                           continue loop1;
                           addr168:
                        }
                        while(true)
                        {
                           this.§#Y§.visible = false;
                           loop6:
                           for(; !_loc8_; while(!(_loc8_ && this))
                           {
                              §§push(param5);
                              if(_loc7_ || param1)
                              {
                                 if(!_loc8_)
                                 {
                                    §§goto(addr66);
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr66);
                           })
                           {
                              this.§>z§.addEventListener(MouseEvent.MOUSE_OVER,this.§"$§);
                              while(_loc7_ || param3)
                              {
                                 this.§>z§.addEventListener(MouseEvent.MOUSE_OUT,this.§;_§);
                                 loop8:
                                 for(; _loc7_; if(_loc8_ && this)
                                 {
                                    continue;
                                 },§§goto(addr50))
                                 {
                                    if(_loc7_ || this)
                                    {
                                       §§push(Boolean(this.§4!^§));
                                       while(!_loc8_)
                                       {
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addChild(this.§4!^§);
                                                      continue loop8;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop8;
                                             }
                                             addr50:
                                             return;
                                             addr73:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop6;
                                          }
                                          if(!(_loc7_ || param2))
                                          {
                                             continue;
                                          }
                                          §§goto(addr73);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr168);
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr184);
                        }
                     }
                  }
               }
            }
            §§goto(addr210);
         }
         §§goto(addr28);
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§[Y§ = false;
            while(true)
            {
               this.§4!^§ = this.§#!b§(param1,this.§#!@§,param2);
               loop1:
               for(; !(_loc4_ && param3); while(!(_loc4_ && param3))
               {
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              §§push(!§§pop());
                           }
                           else
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr33);
                        }
                        §§goto(addr75);
                     }
                     addr34:
                     while(§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           addChild(this.§4!^§);
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               })
               {
                  §§push(Boolean(this.§4!^§));
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                        addr75:
                     }
                     else
                     {
                        while(true)
                        {
                           §§goto(addr34);
                        }
                        addr33:
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §#!b§(param1:String, param2:String, param3:Boolean = false) : §14§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§14§ = null;
         if(!_loc6_)
         {
            if(!§]d§[param1 + param2])
            {
               if(!_loc6_)
               {
                  §]d§[param1 + param2] = [];
                  addr39:
                  if(_loc5_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr65);
               }
            }
            addr57:
            if(§]d§[param1 + param2].length > 0)
            {
               addr65:
               _loc4_ = §]d§[param1 + param2].pop();
            }
            else
            {
               _loc4_ = new §14§(param1,param3,param2);
            }
            return _loc4_;
         }
         §§goto(addr39);
      }
      
      public function update(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§+C§(param1,param2,false);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§4!^§));
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop15:
                     while(true)
                     {
                        §§push(this.§4!^§ is §14§);
                        if(_loc1_ && _loc1_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 if(!§]d§[this.§][§ + this.§#!@§])
                                 {
                                    if(!_loc1_)
                                    {
                                       §]d§[this.§][§ + this.§#!@§] = [];
                                    }
                                    while(true)
                                    {
                                       if(_loc1_ && this)
                                       {
                                          continue loop15;
                                       }
                                       loop6:
                                       for(; _loc2_ || this; if(_loc1_ && this)
                                       {
                                          continue;
                                       },§§goto(addr25))
                                       {
                                          if(this.§4!^§.parent == this)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                removeChild(this.§4!^§);
                                                addr151:
                                                addr165:
                                                while(_loc2_)
                                                {
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   addr131:
                                                   while(true)
                                                   {
                                                      if(this.§4!^§)
                                                      {
                                                         continue loop6;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(this.§#Y§)
                                                         {
                                                            addr97:
                                                            while(true)
                                                            {
                                                               if(this.§#Y§.parent == this)
                                                               {
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     removeChild(this.§#Y§);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  addr123:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§#Y§ = null;
                                                                  addr92:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr97:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!this.§>z§)
                                                            {
                                                               return;
                                                            }
                                                            addr25:
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(_loc2_ || this)
                                                               {
                                                                  this.§>z§.removeEventListener(MouseEvent.MOUSE_OVER,this.§"$§);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr151);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§4!^§ = null;
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                    continue loop15;
                                 }
                                 while(true)
                                 {
                                    §]d§[this.§][§ + this.§#!@§].push(this.§4!^§);
                                    §§goto(addr165);
                                 }
                              }
                           }
                           §§goto(addr131);
                           continue loop15;
                        }
                     }
                  }
                  addr223:
               }
               §§goto(addr178);
            }
            §§goto(addr223);
         }
         §§goto(addr97);
      }
   }
}
