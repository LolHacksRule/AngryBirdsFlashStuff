package §7!H§
{
   import § !Y§.§",§;
   import §#!b§.§'y§;
   import §%!r§.§1`§;
   import §%!r§.§3!'§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §77§.§ ",§;
   import §<!X§.§09§;
   import §<!X§.§7C§;
   import §<!X§.§;"8§;
   import §<!X§.§]d§;
   import §<W§.§!!u§;
   import §<W§.§]"+§;
   import §^r§.§@!T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §3z§, §1`§
   {
       
      
      protected var §[S§:§ ",§;
      
      private var §,!w§:MovieClip;
      
      private var §5E§:MovieClip;
      
      protected var §6J§:XML;
      
      protected var §?"<§:int;
      
      protected var §6z§:int;
      
      protected var §[!o§:String;
      
      protected var §0§:String = "none";
      
      protected var §?"G§:String = "best";
      
      protected var §#!j§:Boolean = true;
      
      protected var §-!w§:§09§;
      
      protected var §9i§:Vector.<String>;
      
      protected var §"f§:§7C§;
      
      protected var §7Z§:§3!'§;
      
      protected var §3!+§:§'y§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§?"<§ = param1;
               loop1:
               while(_loc6_)
               {
                  this.§6z§ = param2;
                  loop2:
                  do
                  {
                     §§push(this);
                     if(_loc6_)
                     {
                        §§pop().§6J§ = param3 || <xml></xml>;
                        while(!_loc5_)
                        {
                           this.§[!o§ = param4;
                           if(_loc6_ || param2)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     §§goto(addr62);
                  }
                  while(_loc5_);
                  
               }
            }
         }
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function get §<!]§() : int
      {
         return this.§?"<§;
      }
      
      public function get priority() : int
      {
         return this.§6z§;
      }
      
      public function set priority(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6z§ = param1;
         }
      }
      
      public function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§-!w§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              loop8:
                              while(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(_loc1_)
                                    {
                                       §§pop();
                                       loop10:
                                       while(_loc1_ || this)
                                       {
                                          §§push(this.§0§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§7C§.§?x§);
                                             addr102:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                addr103:
                                                loop13:
                                                while(!_loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc1_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr55:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(true);
                                                            }
                                                            else
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr19:
                                                               §§push(false);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc1_ || this)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr86:
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr117:
                                                                  addr158:
                                                                  while(_loc1_ || _loc2_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     continue loop6;
                                                                     §§goto(addr86);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop10;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop11;
                                                                  }
                                                                  addr109:
                                                               }
                                                            }
                                                            addr67:
                                                         }
                                                         §§goto(addr19);
                                                      }
                                                      continue loop7;
                                                      addr55:
                                                   }
                                                   §§goto(addr109);
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr55);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr158);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(§]"+§.§`!C§,this.§;'§);
               addr306:
               while(true)
               {
                  this.§#'§();
                  addr298:
                  while(true)
                  {
                     §§push(this.§-!w§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§-!w§);
                              addr283:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr284:
                                 while(true)
                                 {
                                    this.§-!w§ = null;
                                    addr274:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr281:
                        }
                        while(true)
                        {
                           §§push(this.§[S§);
                           continue loop0;
                           §§goto(addr274);
                        }
                     }
                     §§goto(addr283);
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push(param2);
               addr59:
               while(true)
               {
                  §§pop().viewHeight = §§pop();
                  continue loop0;
               }
            }
            addr58:
         }
         while(true)
         {
            §§push(this.§[S§);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§pop().viewWidth = §§pop();
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr58);
            }
            §§goto(addr59);
         }
      }
      
      public final function open(param1:MovieClip, param2:§3!'§, param3:§'y§, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§7Z§ = param2;
            loop0:
            while(true)
            {
               this.§3!+§ = param3;
               while(true)
               {
                  this.initialize(param1);
                  continue loop0;
                  addr68:
                  loop3:
                  while(!(_loc5_ && this))
                  {
                     this.init();
                     loop4:
                     while(true)
                     {
                        this.§2f§();
                        loop5:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              this.show(param4);
                              if(_loc6_ || param3)
                              {
                                 if(_loc6_)
                                 {
                                    addr37:
                                    if(_loc6_ || param1)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           return;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§[S§.setEnabled(false);
            do
            {
               this.hide(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      private function initialize(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!w§ = param1;
            loop0:
            while(true)
            {
               this.§[S§ = new § ",§(this.§6J§,null,null,null);
               loop1:
               while(true)
               {
                  §§push(this.§[S§);
                  loop2:
                  while(true)
                  {
                     §§pop().addEventListener(§]"+§.§`!C§,this.§;'§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§[S§);
                        while(true)
                        {
                           §§push(true);
                           addr122:
                           addr106:
                           while(true)
                           {
                              §§pop().setVisibility(§§pop());
                              addr123:
                              while(!(_loc2_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           loop7:
                           for(; !(_loc2_ && _loc3_); §§push(this.§[S§),if(_loc2_)
                           {
                              continue;
                           },if(_loc2_)
                           {
                              continue loop2;
                           },§§pop().mClip.name = "Container_" + this.§[S§.mClip.name,while(_loc3_)
                           {
                              this.§9i§ = new Vector.<String>();
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr33);
                           },§§goto(addr96))
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 §§pop().setActiveStatus(§§pop());
                                 loop8:
                                 while(true)
                                 {
                                    this.§5E§ = new MovieClip();
                                    loop9:
                                    while(true)
                                    {
                                       this.§5E§.addChild(this.§[S§.mClip);
                                       addr96:
                                       while(true)
                                       {
                                          this.§,!w§.addChild(this.§5E§);
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                             addr33:
                                             if(_loc3_ || _loc3_)
                                             {
                                                return;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr117:
                              }
                              else
                              {
                                 §§goto(addr122);
                              }
                              §§goto(addr123);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      protected function §;'§(param1:§]"+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.isTransitioning)
            {
               loop0:
               while(true)
               {
                  this.onUIInteraction(param1.§ !e§,param1.§9X§,param1.§"!X§);
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  addr71:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(!(_loc6_ && param1))
         {
            if("CLOSE" === _loc4_)
            {
               addr63:
               §§push(0);
               if(!_loc5_)
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
                  §<!O§.playSound("close_popup_button_click");
                  if(_loc5_)
                  {
                     dispatchEvent(new §@!T§(§@!T§.CLOSE,this));
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr63);
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7Z§.addLocalizationTarget(this);
         }
      }
      
      protected function §["4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§9i§.push(§]d§.§>"=§());
            while(true)
            {
               this.§9i§.push(§]d§.§%"<§());
               loop1:
               for(; !(_loc2_ && this); if(_loc2_ && _loc1_)
               {
                  continue;
               },§§goto(addr78))
               {
                  while(true)
                  {
                     this.§9i§.push(§]d§.§>!u§());
                     loop3:
                     do
                     {
                        this.§9i§.push(§]d§.§7L§());
                        while(true)
                        {
                           this.§9i§.push(§]d§.§ P§());
                           while(_loc1_)
                           {
                              continue loop1;
                              this.§9i§.push(§]d§.§"!3§);
                              do
                              {
                                 this.§9i§.push(§]d§.§1q§);
                              }
                              while(!_loc1_);
                              
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(_loc2_ && this);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      protected function §2f§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§[S§);
            if(!_loc4_)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           addr48:
                           if(this.§[S§.mClip == null)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 return;
                              }
                           }
                        }
                        var _loc1_:MovieClip = this.§5E§;
                        var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
                        if(_loc3_)
                        {
                           §",§.§80§(_loc1_,this.§9i§,_loc2_,§",§.§0!'§);
                           while(true)
                           {
                              if(_loc2_.length != 0)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    this.createTransition(_loc2_);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr106:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                              }
                              if(!(_loc4_ && _loc1_))
                              {
                                 return;
                              }
                           }
                           return;
                        }
                        §§goto(addr106);
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#'§();
         }
         do
         {
            this.§-!w§ = new §;"8§(param1,this.§[S§.mClip.stage);
         }
         while(_loc3_);
         
      }
      
      protected function §9^§() : §7C§
      {
         return new §7C§(§]d§.§>"=§(),§]d§.§1q§,§]d§.§"!3§,§7C§.§@!=§,this.§#!j§,this.§?"G§);
      }
      
      protected function §>!X§() : §7C§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7C§ = new §7C§();
         if(_loc3_)
         {
            _loc1_.§%!D§ = §]d§.§1q§;
            while(true)
            {
               _loc1_.§>!F§ = §]d§.§"!3§;
               while(_loc3_)
               {
                  _loc1_.startLabel = §]d§.§7L§();
                  while(!(_loc2_ && _loc2_))
                  {
                     _loc1_.type = §7C§.§?x§;
                     do
                     {
                        _loc1_.stageQuality = this.§?"G§;
                     }
                     while(!(_loc3_ || _loc3_));
                     
                     if(!_loc2_)
                     {
                        return _loc1_;
                        addr53:
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §0"2§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = this.§0§;
         if(_loc3_ || _loc2_)
         {
            §§push(§7C§.§@!=§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr84:
                        §§push(0);
                        if(_loc3_ || this)
                        {
                        }
                        §§goto(addr149);
                     }
                     else
                     {
                        §§goto(addr113);
                     }
                  }
                  else
                  {
                     §§push(§7C§.§?x§);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr102:
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           addr110:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 addr113:
                                 §§push(1);
                                 if(_loc4_ && param1)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              addr125:
                              if(§7C§.§>">§ !== _loc2_)
                              {
                                 addr149:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.§5w§();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr26:
                                          break;
                                       }
                                       break;
                                    case 1:
                                       this.§3"9§();
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       break;
                                    case 2:
                                       this.§9"B§();
                                       if(!_loc4_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr26);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr149);
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr149);
               }
               §§goto(addr110);
            }
            §§goto(addr102);
         }
         §§goto(addr84);
      }
      
      protected function §3"9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§0§);
         if(_loc2_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            this.§#'§();
         }
         while(true)
         {
            this.onTransitionComplete(_loc1_);
            while(!(_loc3_ && this))
            {
               this.§;!5§(this.§9^§());
               if(!(_loc3_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      protected function §5w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.onTransitionComplete(this.§0§);
            loop0:
            while(this.§"f§)
            {
               while(true)
               {
                  this.§;!5§(this.§"f§);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      protected function §9"B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§#'§();
            while(true)
            {
               this.onTransitionComplete(this.§0§);
               addr52:
               if(!(_loc1_ && this))
               {
                  this.§9"7§();
                  addr59:
                  if(!_loc2_)
                  {
                     while(_loc2_)
                     {
                        §§goto(addr52);
                        §§goto(addr59);
                     }
                     while(true)
                     {
                        this.§[S§.setVisibility(false);
                        §§goto(addr50);
                     }
                     addr50:
                     addr75:
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §;!5§(param1:§7C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§#'§();
            loop0:
            while(true)
            {
               §§push(this.§-!w§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           addr166:
                           loop11:
                           while(true)
                           {
                              §§push(param1.type == §7C§.§-!Z§);
                              if(_loc2_)
                              {
                                 continue loop10;
                              }
                              addr134:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    addr24:
                                 }
                                 loop4:
                                 while(_loc2_)
                                 {
                                    this.§0§ = param1.type;
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§-!w§);
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§0"2§);
                                          §§push(this.§-!w§);
                                          addr116:
                                          continue loop5;
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§pop().start(param1,true);
                                          while(true)
                                          {
                                             this.onTransitionStart(this.§0§);
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(this.§3!+§);
                                                   if(_loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         addr62:
                                                         if(!(_loc2_ || _loc3_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§goto(addr24);
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr57:
                                             §§pop().addEventListener(§!!u§.§8!Q§,this.runTransition);
                                             §§goto(addr62);
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr57);
                                             §§push(this.§3!+§);
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                                 return;
                              }
                           }
                        }
                        addr165:
                     }
                     while(true)
                     {
                        §§goto(addr134);
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr165);
               }
            }
         }
         §§goto(addr166);
      }
      
      protected function §#'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§-!w§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     this.§0§ = §7C§.§-!Z§;
                     while(true)
                     {
                        §§push(this.§3!+§);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr47:
                              addr47:
                              while(true)
                              {
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop5;
                                 }
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    break loop5;
                                 }
                                 addr112:
                                 while(true)
                                 {
                                    §§push(this.§-!w§);
                                    if(_loc2_ && _loc1_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§0"2§);
                                    §§goto(addr117);
                                 }
                                 addr117:
                              }
                           }
                           break loop5;
                        }
                        break;
                     }
                     while(true)
                     {
                        §§pop().removeEventListener(§!!u§.§8!Q§,this.runTransition);
                        §§goto(addr47);
                     }
                  }
                  return;
               }
               while(true)
               {
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr40);
      }
      
      protected function §>S§(param1:§7C§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§-!w§);
            for(; §§pop().§=!"§; §§push(this.§-!w§),if(_loc3_ || param1)
            {
               §§pop().stop(param2);
               if(_loc4_)
               {
                  addr52:
                  §§goto(addr89);
               }
               return;
            })
            {
               while(true)
               {
                  this.§"f§ = param1;
                  §§goto(addr52);
               }
            }
         }
         this.§;!5§(param1);
         addr89:
         while(true)
         {
            if(!(_loc4_ && param1))
            {
               if(!(_loc3_ || this))
               {
                  break loop0;
               }
               continue loop0;
            }
            if(!_loc3_)
            {
               break;
            }
            continue loop1;
         }
      }
      
      protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[S§.setVisibility(true);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_ || param1)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§3"9§();
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break loop1;
                                 }
                              }
                              addr20:
                              return;
                              addr75:
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        this.§;!5§(this.§>!X§());
                        §§goto(addr75);
                        addr67:
                     }
                  }
                  addr88:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
                  addr60:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§goto(addr67);
               }
               §§goto(addr20);
            }
         }
         §§goto(addr20);
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7C§ = null;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        addr47:
                        §§pop();
                        if(_loc5_)
                        {
                           §§goto(addr53);
                        }
                        §§goto(addr56);
                     }
                  }
                  addr53:
                  if(this.§-!w§)
                  {
                     if(_loc5_)
                     {
                        addr56:
                        _loc3_ = new §7C§();
                        if(!_loc4_)
                        {
                           _loc3_.startLabel = §]d§.§ P§();
                           while(true)
                           {
                              _loc3_.§%!D§ = §]d§.§1q§;
                              addr123:
                              while(true)
                              {
                                 _loc3_.§>!F§ = §]d§.§"!3§;
                              }
                           }
                           addr138:
                        }
                        while(true)
                        {
                           _loc3_.type = §7C§.§>">§;
                           loop3:
                           while(true)
                           {
                              addr86:
                              addr139:
                              while(true)
                              {
                                 _loc3_.stageQuality = this.§?"G§;
                                 continue loop3;
                              }
                           }
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           this.§>S§(_loc3_,param2);
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr86);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr91);
                        }
                     }
                  }
                  else
                  {
                     this.§#'§();
                     if(!_loc4_)
                     {
                        addr144:
                        this.§9"B§();
                     }
                  }
                  return;
               }
            }
            §§goto(addr47);
         }
         §§goto(addr144);
      }
      
      protected function runTransition(param1:§!!u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§-!w§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr96:
                        loop5:
                        while(true)
                        {
                           §§push(this.§0§ == §7C§.§-!Z§);
                           if(!(_loc3_ && this))
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(§§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(this.§-!w§);
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop().run(param1.§^;§);
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr96);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §9"7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.dispose();
         }
         do
         {
            dispatchEvent(new §@!T§(§@!T§.§7!l§,this));
         }
         while(!_loc2_);
         
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
