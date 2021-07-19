package §48§
{
   import §"n§.§`!u§;
   import §,L§.§6!W§;
   import §-!;§.§>!B§;
   import §-!;§.§^!!§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §9!`§.§;g§;
   import §;0§.§ !s§;
   import §;0§.§6h§;
   import §>1§.§"!w§;
   import §>1§.§2B§;
   import §>1§.§7a§;
   import §>1§.§;=§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractPopup extends EventDispatcher implements §["#§, § !s§
   {
       
      
      protected var §@'§:§"!a§;
      
      private var §!O§:MovieClip;
      
      private var §0s§:MovieClip;
      
      protected var §&"$§:XML;
      
      protected var §7!`§:int;
      
      protected var §@G§:int;
      
      protected var §>6§:String;
      
      protected var §]P§:String = "none";
      
      protected var §7%§:String = "best";
      
      protected var §%!v§:Boolean = true;
      
      protected var §#1§:§;=§;
      
      protected var §9!"§:Vector.<String>;
      
      protected var §8!!§:§2B§;
      
      protected var §-!]§:§6h§;
      
      protected var §6!c§:§6!A§;
      
      public function AbstractPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§7!`§ = param1;
               while(!(_loc6_ && param3))
               {
                  this.§@G§ = param2;
                  while(true)
                  {
                     §§push(this);
                     if(!(_loc6_ && param3))
                     {
                        §§pop().§&"$§ = param3 || <xml></xml>;
                        continue;
                     }
                     §§goto(addr66);
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§goto(addr41);
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function get §<4§() : int
      {
         return this.§7!`§;
      }
      
      public function get priority() : int
      {
         return this.§@G§;
      }
      
      public function set priority(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@G§ = param1;
         }
      }
      
      public function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§#1§);
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
                              while(_loc1_ || _loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(!_loc2_)
                                    {
                                       §§pop();
                                       loop10:
                                       while(_loc1_ || _loc2_)
                                       {
                                          §§push(this.§]P§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§2B§.§"<§);
                                             addr95:
                                             addr115:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                addr96:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc1_ || this))
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(_loc1_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop10;
                                                      }
                                                      addr163:
                                                      addr122:
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§]P§);
                                                if(_loc2_ && this)
                                                {
                                                   continue loop11;
                                                }
                                                §§push(§2B§.§-!S§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                         §§push(false);
                                                         if(_loc2_)
                                                         {
                                                            break loop15;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr96);
                                                      }
                                                      return §§pop();
                                                      addr64:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr95);
                                                §§goto(addr96);
                                             }
                                             return §§pop();
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr64);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@'§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(§>!B§.§7"&§,this.§[6§);
               while(true)
               {
                  this.§6!8§();
                  while(true)
                  {
                     §§push(this.§#1§);
                     if(_loc1_ || this)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              addr297:
                              this.§#1§.dispose();
                           }
                           loop3:
                           while(true)
                           {
                              this.§#1§ = null;
                              addr281:
                              while(true)
                              {
                              }
                              loop25:
                              while(true)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop3;
                                 }
                                 §§push(Boolean(this.§0s§.parent));
                                 loop26:
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          loop27:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc1_)
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr165:
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(_loc1_ || this)
                                                            {
                                                               continue loop28;
                                                            }
                                                            addr254:
                                                            addr254:
                                                            while(true)
                                                            {
                                                               §§push(this.§@'§);
                                                               if(_loc1_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     addr205:
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           §§push(§§pop().mClip.parent == this.§0s§);
                                                                           loop37:
                                                                           while(!(_loc2_ && _loc1_))
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(!_loc2_)
                                                                                       {
                                                                                          this.§0s§.removeChild(this.§@'§.mClip);
                                                                                          while(_loc1_)
                                                                                          {
                                                                                          }
                                                                                          while(!(_loc2_ && _loc1_))
                                                                                          {
                                                                                             §§push(this.§@'§);
                                                                                             break loop29;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§@'§);
                                                                                             addr258:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop().mClip));
                                                                                                break loop26;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                       addr230:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(this.§0s§));
                                                                                       addr178:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ && this)
                                                                                          {
                                                                                             continue loop37;
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop25;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break loop37;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                       continue loop37;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(_loc1_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr252);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr264);
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().clear();
                                                                        §§goto(addr276);
                                                                        §§goto(addr205);
                                                                     }
                                                                     addr275:
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               break loop29;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr248);
                                                            §§goto(addr254);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr108);
                                                }
                                                break;
                                             }
                                             §§goto(addr186);
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr263);
                                             }
                                             §§goto(addr250);
                                          }
                                          addr262:
                                       }
                                       break;
                                    }
                                    §§goto(addr189);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr262);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr275);
                           §§goto(addr281);
                        }
                     }
                     §§goto(addr297);
                  }
               }
            }
         }
         §§goto(addr254);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§@'§);
            loop0:
            while(true)
            {
               §§push(param2);
               addr63:
               while(true)
               {
                  §§pop().viewHeight = §§pop();
                  continue loop0;
               }
            }
         }
      }
      
      public final function open(param1:MovieClip, param2:§6h§, param3:§6!A§, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§-!]§ = param2;
            loop0:
            while(true)
            {
               this.§6!c§ = param3;
               loop1:
               while(true)
               {
                  this.initialize(param1);
                  while(true)
                  {
                     this.§+8§();
                     loop3:
                     while(_loc6_ || param2)
                     {
                        loop4:
                        while(true)
                        {
                           this.init();
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 this.§7A§();
                                 while(_loc6_)
                                 {
                                    continue loop1;
                                    this.show(param4);
                                    if(_loc6_ || param2)
                                    {
                                       if(!_loc5_)
                                       {
                                          break loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public final function close(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@'§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§@'§);
                     addr64:
                     while(true)
                     {
                        §§pop().setEnabled(false);
                        do
                        {
                           this.hide(param1);
                        }
                        while(_loc3_ && _loc2_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr62:
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr62);
      }
      
      private function initialize(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!O§ = param1;
            loop0:
            while(true)
            {
               this.§@'§ = new §"!a§(this.§&"$§,null,null,null);
               loop1:
               while(true)
               {
                  §§push(this.§@'§);
                  while(true)
                  {
                     §§pop().addEventListener(§>!B§.§7"&§,this.§[6§);
                     addr151:
                     addr116:
                     while(true)
                     {
                        §§push(this.§@'§);
                        addr133:
                        while(true)
                        {
                           §§push(true);
                           addr134:
                           while(true)
                           {
                              §§pop().setVisibility(§§pop());
                              continue loop1;
                           }
                        }
                     }
                     loop7:
                     for(; _loc3_ || this; while(true)
                     {
                        §§push(this.§@'§);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           §§pop().mClip.name = "Container_" + this.§@'§.mClip.name;
                           §§goto(addr58);
                        }
                        §§goto(addr133);
                     })
                     {
                        §§push(true);
                        if(!_loc2_)
                        {
                           §§pop().setActiveStatus(§§pop());
                           while(!_loc2_)
                           {
                              this.§0s§ = new MovieClip();
                              continue loop0;
                              while(!(_loc2_ && this))
                              {
                                 this.§9!"§ = new Vector.<String>();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             if(!(_loc3_ || param1))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.§!O§.addChild(this.§0s§);
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr151);
                                          addr90:
                                       }
                                       return;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr134);
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      protected function §[6§(param1:§>!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.isTransitioning)
            {
               do
               {
                  this.onUIInteraction(param1.§3o§,param1.§3!C§,param1.§@! §);
               }
               while(_loc2_);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(!_loc6_)
         {
            if("CLOSE" === _loc4_)
            {
               addr58:
               §§push(0);
               if(_loc5_ || param3)
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
                  §'!c§.§3!f§("close_popup_button_click");
                  if(!_loc6_)
                  {
                     dispatchEvent(new §;g§(§;g§.CLOSE,this));
                     if(_loc6_ && param1)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr58);
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-!]§.addLocalizationTarget(this);
         }
      }
      
      protected function §+8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!"§.push(§7a§.§0-§());
            while(true)
            {
               this.§9!"§.push(§7a§.§;!W§());
               while(true)
               {
                  this.§9!"§.push(§7a§.§!7§());
                  addr83:
                  while(_loc2_)
                  {
                  }
               }
               while(!(_loc1_ && _loc2_))
               {
                  this.§9!"§.push(§7a§.§5z§);
                  loop6:
                  while(_loc2_)
                  {
                     this.§9!"§.push(§7a§.§=A§);
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     addr74:
                     while(_loc2_)
                     {
                        this.§9!"§.push(§7a§.§9h§());
                        break loop6;
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         while(true)
         {
            this.§9!"§.push(§7a§.§%!H§());
            §§goto(addr74);
         }
      }
      
      protected function §7A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§@'§);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop() == null);
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        §§goto(addr50);
                     }
                  }
                  §§goto(addr73);
               }
               addr50:
               §§pop();
               if(_loc3_ || this)
               {
                  addr73:
                  if(this.§@'§.mClip == null)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr76);
                     }
                  }
               }
               var _loc1_:MovieClip = this.§0s§;
               var _loc2_:Vector.<MovieClip> = new Vector.<MovieClip>();
               if(!(_loc4_ && _loc3_))
               {
                  §`!u§.§>V§(_loc1_,this.§9!"§,_loc2_,§`!u§.§>!b§);
                  while(true)
                  {
                     if(_loc2_.length != 0)
                     {
                        do
                        {
                           this.createTransition(_loc2_);
                        }
                        while(_loc4_);
                        
                        if(!(_loc4_ && _loc2_))
                        {
                           break;
                        }
                     }
                     if(_loc3_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
               return;
            }
            §§goto(addr73);
         }
         addr76:
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!8§();
            do
            {
               this.§#1§ = new §"!w§(param1,this.§@'§.mClip.stage);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      protected function §1!%§() : §2B§
      {
         return new §2B§(§7a§.§0-§(),§7a§.§=A§,§7a§.§5z§,§2B§.§+!_§,this.§%!v§,this.§7%§);
      }
      
      protected function §6c§() : §2B§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2B§ = new §2B§();
         if(!_loc2_)
         {
            _loc1_.§'!J§ = §7a§.§=A§;
            while(true)
            {
               _loc1_.§1!p§ = §7a§.§5z§;
            }
            addr90:
         }
         loop1:
         while(true)
         {
            _loc1_.startLabel = §7a§.§%!H§();
            addr67:
            while(_loc3_)
            {
               _loc1_.type = §2B§.§"<§;
               continue loop1;
            }
            §§goto(addr90);
         }
      }
      
      private function §2!9§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = this.§]P§;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§2B§.§+!_§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr89:
                        §§push(0);
                        if(!(_loc3_ || this))
                        {
                           addr126:
                        }
                     }
                     else
                     {
                        addr131:
                        §§push(2);
                        if(!_loc3_)
                        {
                        }
                     }
                     §§goto(addr149);
                  }
                  else
                  {
                     §§push(§2B§.§"<§);
                     if(_loc3_ || this)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           addr115:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§goto(addr126);
                                 }
                              }
                              else
                              {
                                 §§goto(addr131);
                              }
                              §§goto(addr149);
                           }
                           else
                           {
                              addr129:
                              §§push(§2B§.§-!S§);
                              §§push(_loc2_);
                           }
                           §§goto(addr131);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr131);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr149:
                        switch(§§pop())
                        {
                           case 0:
                              this.§0!t§();
                              addr35:
                              break;
                              addr45:
                           case 1:
                              this.§00§();
                              break;
                              addr40:
                           case 2:
                              this.§<3§();
                              if(!_loc4_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr45);
                                    }
                                    §§goto(addr35);
                                 }
                                 else
                                 {
                                    §§goto(addr40);
                                 }
                              }
                        }
                        return;
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr129);
         }
         §§goto(addr89);
      }
      
      protected function §00§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§]P§);
         if(!(_loc2_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc3_))
         {
            this.§6!8§();
            do
            {
               this.onTransitionComplete(_loc1_);
               do
               {
                  this.§[!y§(this.§1!%§());
               }
               while(_loc2_ && _loc3_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      protected function §0!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.onTransitionComplete(this.§]P§);
            while(this.§8!!§)
            {
               do
               {
                  this.§[!y§(this.§8!!§);
                  do
                  {
                     this.§8!!§ = null;
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  addr49:
                  break;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected function §<3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6!8§();
            while(true)
            {
               this.onTransitionComplete(this.§]P§);
               addr39:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr46:
            }
         }
         while(true)
         {
            this.§@'§.setVisibility(false);
            while(_loc2_)
            {
               this.§9;§();
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr46);
      }
      
      protected function §[!y§(param1:§2B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!8§();
            while(true)
            {
               §§push(this.§#1§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr165:
                           while(true)
                           {
                              §§push(param1.type == §2B§.§0!&§);
                              if(!_loc2_)
                              {
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§]P§ = param1.type;
                                       addr145:
                                       while(true)
                                       {
                                          §§push(this.§#1§);
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr140:
                              }
                              continue loop9;
                              return;
                              break;
                           }
                        }
                        addr164:
                     }
                     while(true)
                     {
                        §§goto(addr140);
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr164);
               }
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               §§goto(addr66);
               §§push(this.§6!c§);
            }
         }
         §§goto(addr106);
      }
      
      protected function §6!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§#1§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§#1§);
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§2!9§);
                        addr113:
                        while(true)
                        {
                           §§push(this.§#1§);
                           if(!(_loc2_ || _loc2_))
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
                              §§goto(addr66);
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr113);
               }
               addr66:
               while(true)
               {
                  this.§]P§ = §2B§.§0!&§;
                  loop5:
                  while(true)
                  {
                     §§push(this.§6!c§);
                     if(!_loc1_)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr25);
                        }
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(this.§6!c§);
                        }
                     }
                     while(true)
                     {
                        §§pop().removeEventListener(§^!!§.§&o§,this.§!" §);
                        continue loop5;
                     }
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop3;
               }
               addr25:
               return;
            }
         }
         §§goto(addr39);
      }
      
      protected function § !m§(param1:§2B§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§#1§);
            for(; §§pop().§`!m§; §§push(this.§#1§),if(!(_loc4_ && param2))
            {
               §§pop().stop(param2);
               if(_loc4_)
               {
                  addr57:
                  §§goto(addr94);
               }
               return;
            })
            {
               while(true)
               {
                  this.§8!!§ = param1;
                  §§goto(addr57);
               }
            }
            this.§[!y§(param1);
            addr94:
            while(true)
            {
               if(!(_loc4_ && param2))
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               if(!(_loc3_ || _loc3_))
               {
                  break loop0;
               }
               while(true)
               {
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@'§.setVisibility(true);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc3_ && this))
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(!§§pop())
                        {
                           this.§00§();
                           if(!(_loc3_ && param1))
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr24);
                                 }
                                 continue loop0;
                              }
                              addr105:
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(this.§#1§));
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 addr104:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop4;
                                 }
                              }
                           }
                           addr24:
                           return;
                        }
                        this.§[!y§(this.§6c§());
                        §§goto(addr81);
                        addr75:
                     }
                  }
               }
               §§goto(addr104);
            }
         }
         §§goto(addr105);
      }
      
      protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2B§ = null;
         if(_loc5_ || this)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  §§goto(addr33);
               }
               §§goto(addr42);
            }
            addr33:
            if(§§pop())
            {
               if(_loc5_ || param2)
               {
                  addr42:
                  §§pop();
                  §§goto(addr146);
               }
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  _loc3_ = new §2B§();
                  if(!_loc4_)
                  {
                     _loc3_.startLabel = §7a§.§9h§();
                     loop0:
                     while(true)
                     {
                        _loc3_.§'!J§ = §7a§.§=A§;
                        while(true)
                        {
                           _loc3_.§1!p§ = §7a§.§5z§;
                           continue loop0;
                           addr84:
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           this.§ !m§(_loc3_,param2);
                           if(!_loc4_)
                           {
                              addr75:
                              if(false)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    _loc3_.stageQuality = this.§7%§;
                                    addr82:
                                    addr97:
                                    while(_loc5_)
                                    {
                                       §§goto(addr84);
                                    }
                                    while(!(_loc4_ && param2))
                                    {
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr82);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc3_.type = §2B§.§-!S§;
                     §§goto(addr97);
                  }
               }
               else
               {
                  addr144:
                  this.§<3§();
                  §§goto(addr146);
               }
            }
            else
            {
               this.§6!8§();
               if(!_loc4_)
               {
                  §§goto(addr144);
               }
            }
            §§goto(addr146);
            return;
         }
         §§goto(addr42);
      }
      
      protected function §!" §(param1:§^!!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§#1§);
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
                        addr91:
                        while(true)
                        {
                           §§push(this.§]P§ == §2B§.§0!&§);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(this.§#1§);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§pop().run(param1.§%!b§);
                        }
                        addr65:
                     }
                     while(true)
                     {
                        if(_loc2_)
                        {
                           break loop4;
                        }
                        §§goto(addr91);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected final function §9;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.dispose();
         }
         do
         {
            dispatchEvent(new §;g§(§;g§.§?C§,this));
         }
         while(_loc1_);
         
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
