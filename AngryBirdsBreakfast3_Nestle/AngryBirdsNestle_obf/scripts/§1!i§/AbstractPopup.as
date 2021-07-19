package §1!i§
{
   import §!""§.§1=§;
   import §!""§.§]H§;
   import §'"!§.§+§;
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §,M§.§0V§;
   import §2u§.§,6§;
   import §4!i§.§+![§;
   import §8]§.§7O§;
   import §@3§.§0!'§;
   import §@3§.§7g§;
   import §@3§.§9L§;
   import §@3§.§]K§;
   import §[!Z§.§>D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §?!a§, §0V§
   {
       
      
      protected var §29§:§,6§;
      
      private var §!o§:MovieClip;
      
      private var §="%§:MovieClip;
      
      protected var §7!?§:XML;
      
      protected var §#W§:int;
      
      protected var §1&§:int;
      
      protected var §?0§:String;
      
      protected var §,!f§:String = "none";
      
      protected var §]!`§:String = "best";
      
      protected var §@^§:Boolean = true;
      
      protected var §@"+§:§7g§;
      
      protected var §8!-§:Vector.<String>;
      
      protected var §2K§:§]K§;
      
      protected var §8&§:§+f§;
      
      protected var §-p§:§5O§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super();
            while(true)
            {
               this.§#W§ = param1;
               addr79:
               if(_loc5_)
               {
                  continue;
               }
               §§push(this);
               if(!(_loc5_ && param3))
               {
                  §§pop().§7!?§ = param3 || <xml></xml>;
                  while(!_loc5_)
                  {
                     this.§?0§ = param4;
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
                  while(_loc6_ || param3)
                  {
                     §§goto(addr79);
                  }
                  while(true)
                  {
                     this.§1&§ = param2;
                     §§goto(addr72);
                  }
                  addr72:
                  addr96:
               }
               §§goto(addr60);
            }
         }
         §§goto(addr96);
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function get §,!1§() : int
      {
         return this.§#W§;
      }
      
      public function get priority() : int
      {
         return this.§1&§;
      }
      
      public function set priority(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§1&§ = param1;
         }
      }
      
      public function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@"+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr151:
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr153:
                     }
                     else
                     {
                        while(true)
                        {
                           addr131:
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(this.§,!f§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§]K§.§%x§);
                                             addr95:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                addr96:
                                                while(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop();
                                                            continue loop9;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop5;
                                                      addr107:
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr50);
                              }
                              continue loop2;
                           }
                        }
                        addr130:
                     }
                  }
               }
            }
            addr149:
         }
         while(true)
         {
            §§push(this.§@"+§);
            if(!_loc2_)
            {
               §§push(§§pop().§&J§);
               if(_loc1_ || this)
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr130);
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr131);
            }
            else
            {
               §§goto(addr149);
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§29§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(§]H§.§59§,this.§2"3§);
               loop1:
               while(true)
               {
                  this.§ !D§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§@"+§);
                     if(_loc1_ || this)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§@"+§);
                              addr325:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr326:
                                 while(!_loc2_)
                                 {
                                    this.§@"+§ = null;
                                    while(true)
                                    {
                                    }
                                 }
                                 continue loop2;
                              }
                              addr221:
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              §§push(Boolean(this.§="%§.parent));
                              loop27:
                              while(true)
                              {
                                 addr153:
                                 loop28:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(!§§pop())
                                       {
                                          loop31:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop32:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            this.§!o§.removeChild(this.§="%§);
                                                            loop33:
                                                            while(true)
                                                            {
                                                               addr85:
                                                               while(true)
                                                               {
                                                                  this.§!o§ = null;
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     this.§29§ = null;
                                                                     do
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§push(this.§8&§);
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr24:
                                                                              if(_loc1_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop32;
                                                                                 }
                                                                                 continue loop35;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr47:
                                                                              §§pop().removeLocalizationTarget(this);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr214:
                                                                        addr214:
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_ || _loc1_)
                                                                           {
                                                                              addr182:
                                                                              §§push(this.§="%§.parent == this.§!o§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop28;
                                                                              }
                                                                              addr162:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop30;
                                                                                 §§goto(addr182);
                                                                              }
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    addr195:
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          break loop28;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr268:
                                                                                       while(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr277:
                                                                                                while(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   loop40:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§29§);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr298:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().clear();
                                                                                                            break loop32;
                                                                                                         }
                                                                                                      }
                                                                                                      addr260:
                                                                                                      addr288:
                                                                                                      while(_loc1_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop().mClip.parent));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop40;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop().mClip));
                                                                                                         break loop23;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr113:
                                                                                                continue loop1;
                                                                                                if(_loc2_ && _loc1_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop31;
                                                                                                }
                                                                                                addr293:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr294:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr260);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr249:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§="%§.removeChild(this.§29§.mClip);
                                                                                                         addr256:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr250:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                             addr248:
                                                                                          }
                                                                                       }
                                                                                       addr292:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr249);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr292);
                                                                              }
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        while(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§goto(addr221);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     while(_loc2_ && _loc2_);
                                                                     
                                                                     continue loop33;
                                                                  }
                                                                  continue loop33;
                                                               }
                                                               addr63:
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     §§goto(addr24);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr294);
                                                                  }
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                while(!(_loc2_ && this))
                                                {
                                                   §§goto(addr288);
                                                   §§push(this.§29§);
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr85);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop27;
                                       }
                                       §§goto(addr213);
                                    }
                                    break;
                                    §§goto(addr153);
                                 }
                                 §§goto(addr268);
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr298);
                           §§goto(addr311);
                        }
                     }
                     §§goto(addr325);
                  }
               }
            }
         }
         §§goto(addr284);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§29§);
            loop0:
            while(true)
            {
               §§push(param2);
               addr64:
               while(true)
               {
                  §§pop().viewHeight = §§pop();
                  continue loop0;
               }
            }
         }
      }
      
      public final function open(param1:MovieClip, param2:§+f§, param3:§5O§, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§8&§ = param2;
            while(true)
            {
               this.§-p§ = param3;
               while(!(_loc5_ && param2))
               {
                  this.§?!0§();
                  loop5:
                  while(_loc6_)
                  {
                     this.show(param4);
                     if(_loc5_ && param3)
                     {
                        continue;
                     }
                     addr35:
                     if(!(_loc5_ && param1))
                     {
                        addr42:
                        if(!(_loc6_ || this))
                        {
                           loop2:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 this.§5!=§();
                                 while(true)
                                 {
                                    this.init();
                                    break loop5;
                                    §§goto(addr35);
                                 }
                                 continue;
                                 addr80:
                              }
                              else
                              {
                                 addr102:
                              }
                              while(true)
                              {
                                 this.initialize(param1);
                                 continue loop2;
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§29§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr65:
                     this.§29§.setEnabled(false);
                  }
                  do
                  {
                     this.hide(param1);
                  }
                  while(!_loc3_);
                  
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!o§ = param1;
            while(true)
            {
               this.§29§ = new §,6§(this.§7!?§,null,null,null);
               addr176:
               while(true)
               {
                  §§push(this.§29§);
                  addr150:
                  while(true)
                  {
                     §§pop().addEventListener(§]H§.§59§,this.§2"3§);
                  }
               }
            }
            addr180:
         }
         while(true)
         {
            §§push(this.§29§);
            loop4:
            while(true)
            {
               §§push(true);
               loop5:
               while(true)
               {
                  §§pop().setVisibility(§§pop());
                  loop6:
                  while(true)
                  {
                     §§push(this.§29§);
                     while(true)
                     {
                        §§push(true);
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        §§pop().setActiveStatus(§§pop());
                        loop8:
                        while(true)
                        {
                           this.§="%§ = new MovieClip();
                           addr120:
                           while(_loc2_ || _loc2_)
                           {
                              this.§="%§.addChild(this.§29§.mClip);
                              continue loop8;
                           }
                           continue loop6;
                        }
                        §§push(this.§29§);
                        if(!(_loc2_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop4;
                        }
                        if(_loc2_)
                        {
                           §§pop().mClip.name = "Container_" + this.§29§.mClip.name;
                           §§goto(addr55);
                        }
                        §§goto(addr150);
                     }
                     continue loop5;
                  }
               }
            }
         }
      }
      
      protected function §2"3§(param1:§]H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.isTransitioning)
            {
               if(_loc2_)
               {
                  §§goto(addr65);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
            }
            addr23:
            while(true)
            {
               this.onUIInteraction(param1.§66§,param1.§4o§,param1.§&!m§);
               if(!(_loc3_ && this))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr65:
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2.toUpperCase();
         if(_loc6_)
         {
            if("CLOSE" === _loc4_)
            {
               addr54:
               §§push(0);
               if(_loc5_ && param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §>D§.§9!q§("close_popup_button_click");
                  if(_loc6_)
                  {
                     dispatchEvent(new §7O§(§7O§.CLOSE,this));
                     if(_loc5_)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§8&§.addLocalizationTarget(this);
         }
      }
      
      protected function §5!=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8!-§.push(§0!'§.§=N§());
            loop0:
            while(true)
            {
               this.§8!-§.push(§0!'§.§^I§());
               addr101:
               while(true)
               {
                  this.§8!-§.push(§0!'§.§7!n§());
                  loop2:
                  while(_loc1_)
                  {
                     this.§8!-§.push(§0!'§.§-!h§());
                     loop3:
                     while(true)
                     {
                        this.§8!-§.push(§0!'§.§4!>§());
                        addr64:
                        do
                        {
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                        }
                        while(_loc1_);
                        
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         loop5:
         while(true)
         {
            this.§8!-§.push(§0!'§.§1"0§);
            while(!_loc2_)
            {
               this.§8!-§.push(§0!'§.§8J§);
               if(!(_loc1_ || this))
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop5;
               }
               §§goto(addr64);
            }
            §§goto(addr101);
         }
      }
      
      protected function §?!0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§29§);
            if(_loc3_)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        §§pop();
                        §§goto(addr67);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  §§goto(addr67);
               }
               §§goto(addr67);
            }
            §§goto(addr50);
         }
         addr67:
         if(_loc3_ || this)
         {
            addr50:
            §§push(this.§29§.mClip == null);
         }
         var _loc1_:MovieClip = this.§="%§;
         var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
         if(_loc3_ || _loc2_)
         {
            §+![§.§ !N§(_loc1_,this.§8!-§,_loc2_,§+![§.§,"4§);
         }
         while(true)
         {
            if(_loc2_.length == 0)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               while(true)
               {
               }
               addr111:
            }
            while(true)
            {
               this.createTransition(_loc2_);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr111);
            }
            if(!_loc4_)
            {
               return;
            }
         }
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ !D§();
            do
            {
               this.§@"+§ = new §9L§(param1,this.§29§.mClip.stage);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      protected function §+!Z§() : §]K§
      {
         return new §]K§(§0!'§.§=N§(),§0!'§.§8J§,§0!'§.§1"0§,§]K§.§=@§,this.§@^§,this.§]!`§);
      }
      
      protected function §-2§() : §]K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§]K§ = new §]K§();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§7!r§ = §0!'§.§8J§;
         }
         do
         {
            _loc1_.§1Q§ = §0!'§.§1"0§;
            loop1:
            do
            {
               _loc1_.startLabel = §0!'§.§-!h§();
               while(true)
               {
                  _loc1_.type = §]K§.§%x§;
                  while(_loc3_)
                  {
                     _loc1_.stageQuality = this.§]!`§;
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc3_);
         
         return _loc1_;
      }
      
      private function §;'§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = this.§,!f§;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§]K§.§=@§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                        }
                        §§goto(addr144);
                     }
                     else
                     {
                        §§goto(addr118);
                     }
                  }
                  else
                  {
                     §§push(§]K§.§%x§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           addr110:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 addr118:
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                    addr139:
                                 }
                              }
                           }
                           else
                           {
                              addr125:
                              if(§]K§.§1o§ !== _loc2_)
                              {
                                 addr144:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.§]!g§();
                                       addr33:
                                       break;
                                       addr50:
                                    case 1:
                                       this.§2W§();
                                       if(_loc3_ || this)
                                       {
                                          break;
                                       }
                                       break;
                                    case 2:
                                       this.§4!p§();
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr50);
                                          }
                                          §§goto(addr33);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr144);
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr144);
               }
               §§goto(addr110);
            }
            §§goto(addr125);
         }
         §§goto(addr118);
      }
      
      protected function §2W§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§,!f§);
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            this.§ !D§();
            while(true)
            {
               this.onTransitionComplete(_loc1_);
               while(!(_loc3_ && _loc3_))
               {
                  this.§use §(this.§+!Z§());
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function §]!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.onTransitionComplete(this.§,!f§);
            loop0:
            while(this.§2K§)
            {
               while(!(_loc2_ && _loc2_))
               {
                  this.§use §(this.§2K§);
                  do
                  {
                     this.§2K§ = null;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(!_loc2_)
                  {
                     addr51:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      protected function §4!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ !D§();
            while(true)
            {
               this.onTransitionComplete(this.§,!f§);
            }
            addr72:
         }
         while(true)
         {
            this.§29§.setVisibility(false);
            for(; _loc1_; this.§`!Z§(),if(_loc1_ || this)
            {
               return;
            })
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr72);
            }
         }
      }
      
      protected function §use §(param1:§]K§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ !D§();
            loop0:
            while(true)
            {
               §§push(this.§@"+§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop10:
                           while(true)
                           {
                              §§push(param1.type == §]K§.§,"3§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       this.§,!f§ = param1.type;
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§@"+§);
                                          while(true)
                                          {
                                             §§pop().addEventListener(Event.COMPLETE,this.§;'§);
                                             §§push(this.§@"+§);
                                             addr132:
                                             continue loop0;
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§pop().start(param1);
                                                   loop7:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         this.onTransitionStart(this.§,!f§);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ || this))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(this.§-p§);
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr24);
                                                               }
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§-p§);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().addEventListener(§1=§.§]!l§,this.runTransition);
                                                               continue loop8;
                                                            }
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr24:
                                                         return;
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr24);
                                 }
                                 continue loop10;
                              }
                           }
                        }
                        addr174:
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr174);
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function § !D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§@"+§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§@"+§);
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§;'§);
                        addr98:
                        while(true)
                        {
                           §§push(this.§@"+§);
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           §§pop().stop();
                           while(true)
                           {
                              §§goto(addr61);
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr98);
               }
               addr61:
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§,!f§ = §]K§.§,"3§;
            do
            {
               §§push(this.§-p§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr20);
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop2;
                  }
                  §§push(this.§-p§);
               }
               §§pop().removeEventListener(§1=§.§]!l§,this.runTransition);
            }
            while(_loc1_);
            
            continue loop3;
         }
         addr60:
         addr20:
      }
      
      protected function §%!o§(param1:§]K§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§@"+§);
            loop0:
            while(true)
            {
               if(!§§pop().§&J§)
               {
                  if(_loc4_)
                  {
                     this.§use §(param1);
                  }
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     this.§2K§ = param1;
                     addr58:
                     while(true)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
      }
      
      protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§29§.setVisibility(true);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr110:
                           while(true)
                           {
                              §§push(Boolean(this.§@"+§));
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                     do
                     {
                        if(!§§pop())
                        {
                           this.§2W§();
                           if(_loc3_ && param1)
                           {
                              continue loop0;
                           }
                           if(_loc2_ || param1)
                           {
                              addr19:
                              return;
                           }
                        }
                     }
                     while(_loc3_ && this);
                     
                     this.§use §(this.§-2§());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]K§ = null;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || param2)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        §§goto(addr151);
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc4_ && param1))
               {
                  _loc3_ = new §]K§();
                  if(!(_loc4_ && param2))
                  {
                     _loc3_.startLabel = §0!'§.§4!>§();
                     loop0:
                     while(true)
                     {
                        _loc3_.§7!r§ = §0!'§.§8J§;
                        while(true)
                        {
                           _loc3_.§1Q§ = §0!'§.§1"0§;
                           addr94:
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           this.§%!o§(_loc3_,param2);
                           if(!_loc4_)
                           {
                              addr80:
                              if(false)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    _loc3_.stageQuality = this.§]!`§;
                                    addr87:
                                    while(!(_loc4_ && param1))
                                    {
                                       §§goto(addr94);
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       addr122:
                                       while(true)
                                       {
                                          _loc3_.type = §]K§.§1o§;
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr87);
                        }
                     }
                  }
                  §§goto(addr122);
               }
            }
            else
            {
               this.§ !D§();
               if(!_loc4_)
               {
                  §§goto(addr151);
               }
            }
            §§goto(addr151);
         }
         addr151:
         if(!_loc4_)
         {
            §§push(Boolean(this.§@"+§));
         }
         this.§4!p§();
      }
      
      protected function runTransition(param1:§1=§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@"+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || param1)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        addr65:
                        if(_loc2_ || this)
                        {
                           addr72:
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§,!f§ == §]K§.§,"3§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           addr95:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr72);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §`!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.dispose();
            do
            {
               dispatchEvent(new §7O§(§7O§.§&G§,this));
            }
            while(!_loc1_);
            
         }
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
