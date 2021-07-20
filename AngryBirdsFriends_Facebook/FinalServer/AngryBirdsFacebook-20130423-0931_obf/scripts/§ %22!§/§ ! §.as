package § "!§
{
   import §2!o§.§?j§;
   import §<w§.§9"?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § ! § extends MovieClip
   {
      
      public static var §-!d§:Array;
      
      private static var §?">§:String;
      
      public static const §9z§:Boolean = true;
      
      private static var §56§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § ! §)
         {
            §-!d§ = [];
         }
         do
         {
            §9z§ = true;
            do
            {
               §56§ = {};
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected var §`F§:Sprite;
      
      protected var §3"A§:Sprite;
      
      protected var §3!a§:Boolean;
      
      protected var §!!f§:Sprite;
      
      protected var §'F§:String;
      
      protected var §'""§:String;
      
      protected var §]C§:Boolean = false;
      
      public function § ! §(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super();
            do
            {
               this.initProfile(param1,param2,param3,param4);
            }
            while(_loc6_ && this);
            
         }
      }
      
      public static function §6"K§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§ ! § = null;
         var _loc2_:int = 0;
         if(_loc7_)
         {
            §?">§ = param1;
            if(!(_loc6_ && _loc2_))
            {
               §§goto(addr54);
            }
            §§goto(addr57);
         }
         addr54:
         if(param1 != null)
         {
            addr57:
            for each(_loc3_ in §-!d§)
            {
               if(!_loc6_)
               {
                  _loc3_.update(§?j§.§1"[§,param1);
               }
            }
         }
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(this);
            if(!(_loc7_ && param3))
            {
               §§push(param4);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop());
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc6_)
                           {
                              §§pop();
                              addr49:
                              §§push(§!"O§.§'"O§);
                              if(!(_loc7_ && param1))
                              {
                                 addr76:
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    addr61:
                                    §§push(§§pop());
                                 }
                                 §§pop().§'""§ = §§pop();
                                 if(!(_loc7_ && param3))
                                 {
                                    this.§'F§ = param1;
                                    loop0:
                                    while(true)
                                    {
                                       this.§3!a§ = §?j§.§1"[§ == param1;
                                       loop1:
                                       while(true)
                                       {
                                          this.§!!f§ = new Sprite();
                                          loop2:
                                          while(true)
                                          {
                                             this.§!!f§.graphics.beginFill(0,0);
                                             while(_loc6_)
                                             {
                                                this.§!!f§.graphics.drawRect(0,0,50,50);
                                                loop4:
                                                while(true)
                                                {
                                                   this.§!!f§.graphics.endFill();
                                                   loop5:
                                                   for(; _loc6_; if(!(_loc6_ || param3))
                                                   {
                                                      continue;
                                                   })
                                                   {
                                                      addChild(this.§!!f§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         this.§@2§(param1,param2,param3);
                                                         addr170:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(!this.§3!a§)
                                                            {
                                                               §§goto(addr85);
                                                            }
                                                            if(_loc6_ || this)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr163:
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                               addr132:
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                if(_loc6_ || param3)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr85:
                                                }
                                                continue;
                                                return;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
                                    if(!(_loc7_ && param1))
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr115);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr132);
                                    §§goto(addr134);
                                 }
                              }
                              §§goto(addr61);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr61);
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr73:
                           param4 = §§pop();
                           §§push(_loc5_);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr76);
               }
               §§goto(addr61);
            }
            §§goto(addr49);
         }
         §§goto(addr178);
      }
      
      private function §^"+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§>!k§)
            {
               if(_loc3_ || this)
               {
                  this.§`F§.visible = false;
                  do
                  {
                     this.§3"A§.visible = true;
                  }
                  while(!_loc3_);
                  
                  addr71:
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      private function §;!f§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§>!k§)
            {
               if(!(_loc2_ && param1))
               {
                  this.§`F§.visible = true;
               }
               do
               {
                  this.§3"A§.visible = false;
               }
               while(!_loc3_);
               
               addr41:
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function get §5!0§() : String
      {
         return this.§'F§;
      }
      
      public function get §>!k§() : Boolean
      {
         return this.§]C§;
      }
      
      public function set §>!k§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§]C§ = param1;
            if(!(_loc3_ && param1))
            {
               addr44:
               if(this.§>!k§)
               {
                  if(!(_loc3_ && this))
                  {
                     this.mouseEnabled = this.mouseChildren = true;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr85);
                  }
               }
               else
               {
                  this.mouseEnabled = this.mouseChildren = false;
               }
            }
            addr85:
            return;
         }
         §§goto(addr44);
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§?">§ != null)
            {
               if(!_loc3_)
               {
                  this.§@2§(this.§'F§,§?">§);
               }
            }
         }
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
      }
      
      public function get §49§() : Sprite
      {
         return this.§`F§;
      }
      
      public function get §>b§() : Boolean
      {
         return this.§3!a§;
      }
      
      protected function §@2§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§`F§)
            {
               loop0:
               while(true)
               {
                  if(this.§`F§.parent)
                  {
                     while(true)
                     {
                        this.§`F§.parent.removeChild(this.§`F§);
                        addr334:
                        while(true)
                        {
                        }
                     }
                     addr328:
                  }
                  loop11:
                  while(true)
                  {
                     if(!(_loc5_ || param2))
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(param2);
                        if(!(_loc6_ && param3))
                        {
                           §§push("");
                           loop37:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop12:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§9"?§.§%!h§(param1));
                                          addr291:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr292:
                                             while(true)
                                             {
                                                param2 = §§pop();
                                                addr293:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr288:
                                    }
                                    loop18:
                                    while(true)
                                    {
                                       §§push(param2);
                                       loop19:
                                       while(true)
                                       {
                                          §§push("");
                                          if(!_loc5_)
                                          {
                                             continue loop37;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop20:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop21:
                                             while(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop25:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue loop20;
                                                         }
                                                         loop30:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr89:
                                                               §§push(this.§'<§(param1));
                                                               if(_loc5_ || param2)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              this.§5!j§(param1,param3);
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || param3)
                                                                                 {
                                                                                    loop32:
                                                                                    while(this.§!!f§)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr50:
                                                                                          break;
                                                                                       }
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       addr58:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             addr65:
                                                                                             if(!(_loc6_ && param2))
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!(_loc6_ && param3))
                                                                                                   {
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§9z§);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      addr146:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr150:
                                                                                                         if(_loc5_ || param3)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            addr312:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr267:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  §§goto(addr334);
                                                                                                               }
                                                                                                               §§goto(addr150);
                                                                                                            }
                                                                                                            addr266:
                                                                                                         }
                                                                                                         §§goto(addr89);
                                                                                                      }
                                                                                                      while(_loc5_ || this)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            addr308:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(null);
                                                                                                               addr309:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  addr310:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      addr220:
                                                                                                      addr146:
                                                                                                      addr306:
                                                                                                   }
                                                                                                   §§goto(addr146);
                                                                                                   §§goto(addr65);
                                                                                                }
                                                                                                addr255:
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ && param3)
                                                                                                {
                                                                                                   break loop11;
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             addr183:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 addr171:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       this.createAvatar(param2,param1,param3);
                                                                                       §§goto(addr183);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              addr128:
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr128);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.createFacebookProfile(param1,param3);
                                                                  }
                                                                  §§goto(addr58);
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                      continue loop21;
                                                   }
                                                }
                                                §§goto(addr266);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop12;
                                                }
                                                §§goto(addr312);
                                             }
                                          }
                                       }
                                       continue loop37;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr291);
                     }
                  }
                  §§goto(addr328);
               }
            }
            while(true)
            {
               §§goto(addr306);
            }
         }
         §§goto(addr320);
      }
      
      private function §'<§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(!_loc3_)
         {
            §§push(§9"&§.§-"W§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr96:
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     addr94:
                     §§push(§9"&§.§#2§);
                     §§push(_loc2_);
                  }
                  §§goto(addr96);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr96);
               }
               else
               {
                  §§push(2);
               }
               addr109:
               switch(§§pop())
               {
                  case 0:
                     §§push(true);
                     if(_loc4_ || _loc2_)
                     {
                        return §§pop();
                     }
                     break;
                  case 1:
                     §§push(true);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr112);
                     break;
                  default:
                     addr112:
                     return §§pop();
               }
               return false;
            }
            §§goto(addr94);
         }
         §§goto(addr96);
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            this.§>!k§ = true;
            if(!(_loc8_ && this))
            {
               addr33:
               this.§3"A§ = this.§'B§(param2,this.§'""§,param3);
            }
            §§push(this.§'""§);
            if(!(_loc8_ && param3))
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc7_)
            {
               if(param4 > 0)
               {
                  while(true)
                  {
                     §§push("");
                     if(_loc7_)
                     {
                        §§push(§§pop() + param4);
                     }
                     _loc6_ = §§pop();
                     addr205:
                     while(true)
                     {
                     }
                  }
                  addr198:
               }
               loop2:
               while(true)
               {
                  this.§`F§ = new §2w§(param1,_loc6_);
                  loop3:
                  while(true)
                  {
                     §§push(param5);
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 addChild(this.§3"A§);
                                 while(true)
                                 {
                                    addr159:
                                    loop8:
                                    while(_loc7_ || param1)
                                    {
                                       this.§!!f§.addEventListener(MouseEvent.MOUSE_OVER,this.§^"+§);
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             break loop5;
                                          }
                                          this.§!!f§.addEventListener(MouseEvent.MOUSE_OUT,this.§;!f§);
                                          loop10:
                                          while(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(this.§`F§));
                                                continue loop4;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(!(_loc7_ || param3))
                                                {
                                                   continue loop10;
                                                }
                                                if(_loc8_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(param5);
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(!§§pop());
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop14;
                                                      }
                                                      addr121:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break loop14;
                                                   }
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addChild(this.§`F§);
                                                   }
                                                   if(_loc7_ || param3)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop14;
                                                }
                                             }
                                             return;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr198);
                              }
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           this.§3"A§.visible = false;
                           §§goto(addr159);
                        }
                     }
                  }
               }
            }
            §§goto(addr142);
         }
         §§goto(addr33);
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§>!k§ = false;
            while(true)
            {
               this.§`F§ = this.§'B§(param1,this.§'""§,param2);
               loop1:
               for(; _loc4_ || param1; if(_loc4_)
               {
                  addr19:
                  return;
               })
               {
                  §§push(Boolean(this.§`F§));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr77:
                           while(true)
                           {
                              §§push(param3);
                              if(_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(§§pop())
                     {
                        if(_loc5_ && param2)
                        {
                           continue loop1;
                        }
                        if(_loc4_)
                        {
                           addChild(this.§`F§);
                           continue loop1;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr19);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §5!j§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§`F§ = new §9"&§(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§`F§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param3);
                                    if(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    addr81:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop3;
                                    }
                                 }
                              }
                              else
                              {
                                 addr74:
                              }
                           }
                           return;
                        }
                     }
                     addr47:
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §'B§(param1:String, param2:String, param3:Boolean = false) : §!"O§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§!"O§ = null;
         if(!(_loc5_ && param2))
         {
            if(!§56§[param1 + param2])
            {
               if(!_loc5_)
               {
                  §56§[param1 + param2] = [];
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr71);
               }
            }
            if(§56§[param1 + param2].length > 0)
            {
               §§goto(addr71);
            }
            else
            {
               _loc4_ = new §!"O§(param1,param3,param2);
            }
            §§goto(addr71);
         }
         addr71:
         return §56§[param1 + param2].pop();
      }
      
      public function update(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@2§(param1,param2,false);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(Boolean(this.§`F§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(!§56§[this.§'F§ + this.§'""§])
                           {
                              while(true)
                              {
                                 §56§[this.§'F§ + this.§'""§] = [];
                                 addr269:
                                 while(true)
                                 {
                                 }
                              }
                              addr261:
                           }
                           loop8:
                           while(true)
                           {
                              §56§[this.§'F§ + this.§'""§].push(this.§`F§);
                              loop9:
                              for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc2_)
                              {
                                 continue;
                              },§§goto(addr41))
                              {
                                 while(true)
                                 {
                                    if(this.§`F§)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§`F§ is §]"@§);
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop5;
                                                }
                                                §]"@§(this.§`F§).dispose();
                                                while(true)
                                                {
                                                }
                                                addr111:
                                                loop19:
                                                while(_loc1_ || this)
                                                {
                                                   if(this.§3"A§.parent == this)
                                                   {
                                                      loop20:
                                                      for(; !(_loc2_ && _loc2_); while(true)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            continue loop19;
                                                         }
                                                         continue loop20;
                                                         §§goto(addr66);
                                                      },continue loop19)
                                                      {
                                                         removeChild(this.§3"A§);
                                                         while(true)
                                                         {
                                                            addr73:
                                                            if(!(_loc1_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            this.§!!f§.removeEventListener(MouseEvent.MOUSE_OUT,this.§;!f§);
                                                            addr80:
                                                            if(_loc2_)
                                                            {
                                                               addr66:
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  §§goto(addr73);
                                                                  §§goto(addr80);
                                                               }
                                                               continue loop20;
                                                               addr66:
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr24);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§3"A§ = null;
                                                      §§goto(addr85);
                                                      §§goto(addr144);
                                                   }
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                          while(true)
                                          {
                                             if(this.§`F§.parent == this)
                                             {
                                                loop14:
                                                while(!_loc2_)
                                                {
                                                   removeChild(this.§`F§);
                                                   while(true)
                                                   {
                                                      addr149:
                                                      loop17:
                                                      for(; !(_loc2_ && _loc1_); if(_loc2_ && this)
                                                      {
                                                         continue;
                                                      },this.§!!f§.removeEventListener(MouseEvent.MOUSE_OVER,this.§^"+§),§§goto(addr66))
                                                      {
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!this.§3"A§)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(this.§!!f§)
                                                                     {
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr66);
                                                                     }
                                                                     addr24:
                                                                     return;
                                                                  }
                                                                  continue loop17;
                                                                  addr41:
                                                               }
                                                               §§goto(addr111);
                                                            }
                                                            addr107:
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                }
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                this.§`F§ = null;
                                                §§goto(addr149);
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                       while(!(_loc2_ && this))
                                       {
                                          continue loop0;
                                          §§goto(addr183);
                                       }
                                       addr183:
                                       while(true)
                                       {
                                          §§pop();
                                          break loop9;
                                       }
                                       addr227:
                                       addr275:
                                    }
                                    §§goto(addr107);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr227);
                              }
                           }
                        }
                     }
                     §§goto(addr179);
                  }
                  addr251:
               }
               §§goto(addr275);
            }
         }
         §§goto(addr202);
      }
   }
}
