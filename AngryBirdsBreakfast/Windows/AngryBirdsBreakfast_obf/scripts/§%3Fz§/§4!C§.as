package §?z§
{
   import §"n§.§`!u§;
   import §,L§.§6!W§;
   import §7!§.§2W§;
   import §;0§.§ !s§;
   import §;0§.§6h§;
   import §>1§.§"!w§;
   import §>1§.§2B§;
   import §>1§.§7a§;
   import §>1§.§;=§;
   import each.§!!'§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §4!C§ implements § !s§
   {
      
      public static const §-D§:int = 60;
      
      public static const §9!T§:String = "dummyState";
      
      public static const §%"'§:int = 0;
      
      public static const §-!H§:int = 1;
      
      public static const §=R§:int = 2;
      
      public static const §8s§:int = 3;
      
      public static var §#Z§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-D§ = 60;
            loop0:
            while(true)
            {
               §9!T§ = "dummyState";
               loop1:
               while(true)
               {
                  §%"'§ = 0;
                  while(!_loc2_)
                  {
                     §-!H§ = 1;
                     while(true)
                     {
                        §=R§ = 2;
                        addr63:
                        while(_loc1_)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     if(_loc1_ || §4!C§)
                     {
                        return;
                        addr51:
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §8s§ = 3;
            while(!_loc2_)
            {
               §#Z§ = null;
               if(_loc2_ && §4!C§)
               {
                  continue;
               }
               §§goto(addr34);
            }
            §§goto(addr63);
         }
         §§goto(addr51);
      }
      
      private var §+!V§:Boolean = false;
      
      private var §2t§:Boolean = false;
      
      public var mName:String;
      
      public var §4!R§:Boolean = false;
      
      protected var §]P§:String = "none";
      
      protected var §8!!§:§2B§;
      
      protected var §#1§:§;=§;
      
      protected var §3!w§:String;
      
      protected var §,^§:Boolean = false;
      
      protected var §%!v§:Boolean = true;
      
      protected var §7%§:String = "best";
      
      public var §>!j§:Boolean = false;
      
      public var §!X§:Boolean = true;
      
      private var §9!"§:Vector.<String>;
      
      protected var §'b§:Vector.<String>;
      
      public var §4S§:Boolean = false;
      
      public var §?P§:§2W§;
      
      public var §!!b§:Array;
      
      private var §5!4§:String = "";
      
      private var §7C§:String = "";
      
      public var §#e§:Sprite = null;
      
      public var §=z§:§;B§ = null;
      
      protected var §-!]§:§6h§;
      
      public function §4!C§(param1:Boolean, param2:String, param3:§6h§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param2;
               while(true)
               {
                  this.§!!b§ = new Array();
                  loop2:
                  for(; !_loc5_; if(_loc4_ || this)
                  {
                     addr19:
                  },continue,return)
                  {
                     while(true)
                     {
                        this.§#e§ = new Sprite();
                        loop4:
                        while(true)
                        {
                           this.§-!]§ = param3;
                           while(param1)
                           {
                              if(!_loc5_)
                              {
                                 continue loop4;
                              }
                              addr54:
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                           }
                           §§goto(addr19);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function §7X§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §4!C§)
         {
            if(§#Z§)
            {
               if(_loc2_)
               {
                  return §#Z§[param1];
               }
            }
         }
         return null;
      }
      
      public function get §@!W§() : String
      {
         return this.§7C§;
      }
      
      public function get nextState() : String
      {
         return this.§5!4§;
      }
      
      public function get §;R§() : Boolean
      {
         return this.§+!V§;
      }
      
      public function get §4!E§() : Boolean
      {
         return this.§2t§;
      }
      
      private function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§9!"§ = new Vector.<String>();
            loop0:
            while(true)
            {
               this.§'b§ = new Vector.<String>();
               while(true)
               {
                  this.§#!U§();
                  while(_loc1_ || _loc2_)
                  {
                     this.init();
                     while(true)
                     {
                        this.§7A§();
                        continue loop0;
                     }
                     addr47:
                     if(_loc1_ || _loc1_)
                     {
                        while(true)
                        {
                           this.§+!V§ = true;
                           if(_loc1_)
                           {
                              break;
                           }
                           addr38:
                           while(_loc1_ || this)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr47);
                              }
                              else
                              {
                                 §§goto(addr79);
                              }
                           }
                           continue loop0;
                        }
                        return;
                        addr64:
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function §#!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§9!"§.push(§7a§.§0-§());
         }
         loop0:
         while(true)
         {
            this.§9!"§.push(§7a§.§;!W§());
            loop1:
            do
            {
               this.§9!"§.push(§7a§.§!7§());
               loop2:
               while(!_loc1_)
               {
                  this.§9!"§.push(§7a§.§%!H§());
                  loop3:
                  do
                  {
                     this.§9!"§.push(§7a§.§9h§());
                     while(!_loc1_)
                     {
                        this.§9!"§.push(§7a§.§5z§);
                        while(!(_loc1_ && _loc2_))
                        {
                           this.§9!"§.push(§7a§.§=A§);
                           if(_loc2_ || this)
                           {
                              continue loop3;
                           }
                        }
                     }
                     continue loop2;
                  }
                  while(!_loc2_);
                  
                  continue loop1;
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      protected function init() : void
      {
      }
      
      protected function §5!K§() : void
      {
      }
      
      private function §7A§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§?P§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    addr105:
                                    while(true)
                                    {
                                       §§push(this.§?P§);
                                       if(!_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().container);
                                          if(_loc4_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          addr118:
                                          §§push(§§pop().container);
                                       }
                                       addr119:
                                       var _loc1_:MovieClip = §§pop().mClip;
                                       var _loc2_:Vector.<String> = this.§9!"§.concat(this.§'b§);
                                       var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
                                       if(_loc4_)
                                       {
                                          §`!u§.§>V§(_loc1_,_loc2_,_loc3_,§`!u§.§>!b§);
                                       }
                                       do
                                       {
                                          this.createTransition(_loc3_);
                                       }
                                       while(!(_loc4_ || _loc3_));
                                       
                                       return;
                                    }
                                    continue loop0;
                                 }
                              }
                              loop6:
                              while(§§pop())
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    return;
                                 }
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             break loop6;
                                          }
                                       }
                                       addr72:
                                    }
                                    else
                                    {
                                       §§goto(addr115);
                                    }
                                    §§goto(addr74);
                                 }
                                 else
                                 {
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr118);
                              §§push(this.§?P§);
                           }
                           continue loop1;
                        }
                        addr99:
                     }
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr72);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#1§ = new §"!w§(param1,this.§#e§.stage);
         }
      }
      
      private function §=T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%5§(false);
         }
         loop0:
         while(true)
         {
            if(this.§]P§ != §2B§.§-!S§)
            {
               loop3:
               while(true)
               {
                  this.§#1§.stop(false);
                  if(!(_loc3_ && this))
                  {
                     addr45:
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr79:
                  while(true)
                  {
                     continue loop3;
                  }
               }
            }
            continue;
            return;
         }
      }
      
      private function §%5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this.§#e§.addEventListener(MouseEvent.CLICK,this.§=T§);
               }
               do
               {
                  loop1:
                  while(true)
                  {
                     this.§#e§.buttonMode = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr58:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc3_);
               
               return;
               addr47:
            }
            else
            {
               this.§#e§.removeEventListener(MouseEvent.CLICK,this.§=T§);
            }
            §§goto(addr58);
         }
         §§goto(addr47);
      }
      
      public function activate(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2W§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§7C§ = param1;
            loop0:
            while(true)
            {
               if(!this.§+!V§)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     this.initialize();
                  }
                  while(true)
                  {
                     loop4:
                     while(!(_loc6_ && _loc2_))
                     {
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        this.§#e§.addChild(this.§?P§);
                        while(true)
                        {
                           §§push(this.§?P§);
                           if(!_loc5_)
                           {
                              while(§§pop())
                              {
                                 continue loop4;
                              }
                              for each(_loc2_ in this.§!!b§)
                              {
                                 if(_loc5_ || this)
                                 {
                                    this.§#e§.addChild(_loc2_);
                                    if(_loc5_)
                                    {
                                       _loc2_.§8"-§();
                                    }
                                 }
                              }
                              if(!_loc6_)
                              {
                                 this.§5!4§ = "";
                              }
                           }
                           else
                           {
                              addr47:
                              addr91:
                           }
                           continue;
                           do
                           {
                              this.§2t§ = true;
                           }
                           while(_loc6_ && this);
                           
                           return;
                        }
                     }
                  }
               }
               §§goto(addr44);
            }
         }
         §§goto(addr62);
      }
      
      public function § !#§(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2B§ = null;
         if(!_loc4_)
         {
            §§push(this.§,^§);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr42:
                        §§pop();
                        if(!_loc4_)
                        {
                           addr45:
                           §§push(param1);
                           if(_loc3_ || this)
                           {
                              addr54:
                              if(!§§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    _loc2_ = new §2B§();
                                    addr62:
                                    if(!_loc4_)
                                    {
                                       _loc2_.§'!J§ = §7a§.§=A§;
                                       loop0:
                                       while(true)
                                       {
                                          _loc2_.§1!p§ = §7a§.§5z§;
                                          while(true)
                                          {
                                             _loc2_.startLabel = §7a§.§%!H§(this.§7C§);
                                             while(!_loc4_)
                                             {
                                                _loc2_.type = §2B§.§"<§;
                                                loop3:
                                                for(; _loc3_ || this; loop5:
                                                while(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§[!y§(_loc2_);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr87);
                                                      }
                                                      addr149:
                                                      return;
                                                      addr101:
                                                   }
                                                   continue loop0;
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      _loc2_.stageQuality = this.§7%§;
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr101);
                                 }
                              }
                              else
                              {
                                 this.§00§();
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr45);
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§2W§ = null;
         if(_loc4_)
         {
            this.§6!8§();
            loop0:
            while(true)
            {
               addr37:
               addr69:
               while(true)
               {
                  §§push(this.§?P§);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc5_ && _loc3_)
                     {
                        continue loop0;
                     }
                     §§push(this.§?P§);
                  }
                  §§pop().§8"-§();
                  continue loop0;
               }
               var _loc3_:* = this.§!!b§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     _loc1_.§8"-§();
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                  }
                  this.§#e§.removeChild(_loc1_);
               }
               if(!(_loc5_ && _loc1_))
               {
                  §§push(this.§2t§);
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr187);
                        }
                     }
                     else
                     {
                        loop5:
                        while(true)
                        {
                           this.§2t§ = false;
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(this.§4S§);
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             this.cleanup();
                                          }
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                       }
                                       return;
                                    }
                                    continue loop4;
                                 }
                                 addr187:
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop5;
                              if(this.§4S§)
                              {
                                 if(_loc4_)
                                 {
                                    addr190:
                                    this.cleanup();
                                    addr192:
                                 }
                                 §§goto(addr192);
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr192);
                  }
               }
               §§goto(addr190);
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr37);
            }
            §§goto(addr69);
         }
      }
      
      private function §[!y§(param1:§2B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§6!8§();
         }
         loop0:
         while(true)
         {
            §§push(this.§#1§);
            loop1:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr207:
                     }
                     else
                     {
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(§§pop())
                           {
                              if(_loc2_)
                              {
                                 this.§]P§ = param1.type;
                              }
                              loop11:
                              while(!_loc3_)
                              {
                                 this.§;+§(param1);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(this.§#1§);
                                    continue loop1;
                                    loop20:
                                    while(true)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          continue loop12;
                                       }
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       addr151:
                                       §§push(this.§]P§);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr58:
                                          §§push(§2B§.§-!S§);
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc2_)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr77);
                                                continue loop10;
                                             }
                                             while(!_loc2_)
                                             {
                                                while(!(_loc3_ && this))
                                                {
                                                   §§pop();
                                                   continue loop20;
                                                }
                                                while(_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   continue loop9;
                                                }
                                                §§goto(addr207);
                                             }
                                             addr90:
                                             if(!_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop())
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   this.§%5§(true);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr100:
                                                         if(!(_loc2_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            this.onTransitionStart(this.§]P§);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               continue loop22;
                                                            }
                                                            continue loop23;
                                                         }
                                                         break loop10;
                                                         addr28:
                                                      }
                                                      addr159:
                                                      while(true)
                                                      {
                                                         §§push(this.§]P§);
                                                         addr121:
                                                         addr184:
                                                         while(_loc2_)
                                                         {
                                                            §§push(§2B§.§"<§);
                                                            while(_loc2_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        if(!(_loc2_ || param1))
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        §§goto(addr90);
                                                                        §§push(this.§!X§);
                                                                     }
                                                                     §§goto(addr28);
                                                                     addr77:
                                                                  }
                                                               }
                                                               §§goto(addr134);
                                                               §§goto(addr58);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr187);
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr186);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr175:
                                                   while(true)
                                                   {
                                                      §§push(this.§#1§);
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().start(param1);
                                                      §§goto(addr159);
                                                      §§goto(addr100);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr47);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop11;
                                 }
                              }
                              continue loop0;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §;+§(param1:§2B§) : void
      {
      }
      
      private function §6!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#1§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#1§);
                     addr102:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§2!9§);
                        addr107:
                        while(true)
                        {
                           §§push(this.§#1§);
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           §§pop().stop();
                           while(true)
                           {
                              §§goto(addr43);
                           }
                        }
                     }
                  }
               }
               addr43:
               loop1:
               while(true)
               {
                  this.§]P§ = §2B§.§0!&§;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop4;
                     addr67:
                     this.§%5§(false);
                     if(!(_loc1_ && this))
                     {
                        if(_loc2_ || _loc1_)
                        {
                           break loop1;
                        }
                        continue loop5;
                     }
                  }
                  continue loop4;
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr107);
      }
      
      private function §2!9§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = this.§]P§;
         if(!_loc4_)
         {
            §§push(§2B§.§+!_§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                           addr121:
                        }
                     }
                     else
                     {
                        addr113:
                        §§push(1);
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr121);
                        }
                     }
                  }
                  else
                  {
                     §§push(§2B§.§"<§);
                     if(_loc3_ || _loc3_)
                     {
                        addr102:
                        §§push(_loc2_);
                        if(_loc3_ || _loc3_)
                        {
                           addr110:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr113);
                              }
                              else
                              {
                                 addr126:
                                 §§push(2);
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                                 §§goto(addr149);
                              }
                           }
                           else
                           {
                              addr124:
                              §§push(§2B§.§-!S§);
                              §§push(_loc2_);
                           }
                           §§goto(addr126);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr126);
                        }
                        else
                        {
                           addr149:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§0!t§();
                                 addr38:
                                 break;
                                 addr55:
                              case 1:
                                 this.§00§();
                                 addr43:
                                 if(_loc3_ || param1)
                                 {
                                    break;
                                 }
                                 §§goto(addr55);
                                 break;
                              case 2:
                                 this.§<3§();
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr43);
                                    }
                                    §§goto(addr38);
                                 }
                           }
                           return;
                           §§push(3);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr149);
               }
               §§goto(addr110);
            }
            §§goto(addr102);
         }
         §§goto(addr126);
      }
      
      private function §0!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.onTransitionComplete(this.§]P§);
            loop0:
            while(this.§8!!§)
            {
               loop1:
               do
               {
                  this.§[!y§(this.§8!!§);
                  while(!_loc2_)
                  {
                     this.§8!!§ = null;
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc1_);
               
               break;
            }
            return;
         }
         §§goto(addr46);
      }
      
      private function §<3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.onTransitionComplete(this.§]P§);
            while(true)
            {
               this.§6!8§();
            }
            addr84:
         }
         loop1:
         while(true)
         {
            this.§5!4§ = this.§3!w§;
            while(_loc2_ || _loc2_)
            {
               this.§3!w§ = "";
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break loop1;
               }
               §§goto(addr84);
            }
         }
      }
      
      private function §00§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.onTransitionComplete(this.§]P§);
            while(true)
            {
               this.§6!8§();
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§[!y§(this.§1!%§());
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §1!%§() : §2B§
      {
         return new §2B§(§7a§.§0-§(),§7a§.§=A§,§7a§.§5z§,§2B§.§+!_§,this.§%!v§,this.§7%§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function § !m§(param1:§2B§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§#1§);
            loop0:
            while(true)
            {
               if(!§§pop().§`!m§)
               {
                  if(!_loc4_)
                  {
                     this.§[!y§(param1);
                     break;
                  }
                  break;
               }
               addr67:
               while(true)
               {
                  this.§8!!§ = param1;
                  continue loop0;
               }
               if(_loc3_)
               {
                  return;
               }
               break;
            }
            return;
         }
         §§goto(addr74);
      }
      
      protected function §<f§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§2B§ = null;
         if(!(_loc5_ && param2))
         {
            if(param2)
            {
               if(_loc6_ || param3)
               {
                  (_loc4_ = new §2B§()).startLabel = §7a§.§9h§(param1);
                  if(!(_loc5_ && this))
                  {
                     _loc4_.§'!J§ = §7a§.§=A§;
                     loop0:
                     while(true)
                     {
                        _loc4_.§1!p§ = §7a§.§5z§;
                        while(true)
                        {
                           _loc4_.type = §2B§.§-!S§;
                           continue loop0;
                           addr83:
                           if(!(_loc5_ && this))
                           {
                              if(true)
                              {
                                 return;
                              }
                              loop5:
                              while(true)
                              {
                                 this.§ !m§(_loc4_,param3);
                                 do
                                 {
                                    this.§3!w§ = param1;
                                 }
                                 while(_loc5_ && param2);
                                 
                                 if(_loc6_)
                                 {
                                    addr66:
                                    if(!(_loc6_ || param2))
                                    {
                                       break;
                                    }
                                    §§goto(addr83);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                    addr103:
                                 }
                              }
                              continue loop0;
                              addr161:
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     _loc4_.stageQuality = this.§7%§;
                     §§goto(addr103);
                  }
               }
               else
               {
                  addr158:
                  this.§5!4§ = param1;
               }
            }
            else
            {
               this.§6!8§();
               if(!(_loc5_ && param1))
               {
                  addr138:
                  this.§3!w§ = "";
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr158);
                  }
               }
            }
            §§goto(addr161);
         }
         §§goto(addr138);
      }
      
      public function §^?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4S§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§+!V§)
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
               }
               addr127:
            }
            loop1:
            while(true)
            {
               §§push(this.§?P§);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§push(this.§?P§);
                        addr119:
                        while(true)
                        {
                           §§pop().clear();
                           do
                           {
                              this.§?P§ = null;
                           }
                           while(_loc2_);
                           
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop8;
                        }
                        if(_loc1_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     addr107:
                  }
                  addr70:
                  while(true)
                  {
                     §§push(this.§!!b§);
                     if(!_loc2_)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc1_)
                           {
                              if(this.§2t§)
                              {
                                 while(_loc1_)
                                 {
                                    this.deActivate();
                                    while(true)
                                    {
                                    }
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    return;
                                    addr41:
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 this.§+!V§ = false;
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr69);
                        }
                        else
                        {
                           §§push(this.§!!b§);
                        }
                     }
                     (§§pop().pop() as §2W§).clear();
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr70);
         }
         §§goto(addr107);
      }
      
      public final function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+!V§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §!!'§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
                     break;
                  }
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(this.§2t§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.update(param1);
                           loop3:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 this.runAnimations(param1);
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(this.§5!4§ != "")
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break loop1;
                                                }
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(§8s§);
                                                   break loop2;
                                                }
                                                continue loop1;
                                             }
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§push(§=R§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             §§goto(addr90);
                                          }
                                          break loop2;
                                       }
                                       break loop0;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr109);
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           §§goto(addr106);
                        }
                        return §§pop();
                     }
                     break;
                  }
                  continue loop0;
               }
               §!!'§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            }
            addr109:
            return §§pop();
            §§push(§%"'§);
         }
         addr106:
         addr90:
         return §§pop();
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§#1§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr90:
                        while(true)
                        {
                           §§push(this.§]P§ == §2B§.§0!&§);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr89:
                  }
                  while(§§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr90);
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§#1§);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§pop().run(param1);
                        }
                     }
                     break;
                  }
                  return;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr60);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§4!R§;
      }
      
      public final function §,n§(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this.isTransitioning)
            {
               if(_loc5_)
               {
                  return;
               }
               addr59:
               while(true)
               {
               }
               addr59:
            }
            while(true)
            {
               this.onUIInteraction(param1,param2,param3);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      protected function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr142:
                     }
                     else
                     {
                        loop11:
                        while(true)
                        {
                           §§push(§§pop());
                           loop12:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(!_loc2_)
                                    {
                                       §§push(this.§]P§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§2B§.§"<§);
                                          addr55:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc2_)
                                                {
                                                   while(_loc1_ || _loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop1;
                                                   addr113:
                                                }
                                                §§push(§§pop());
                                                if(_loc2_ && _loc1_)
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue loop2;
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr46);
                                                }
                                             }
                                             addr93:
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() == §§pop());
                                                addr38:
                                                continue loop8;
                                                if(!(_loc1_ || this))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr46);
                                             }
                                             continue loop7;
                                          }
                                          continue loop12;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr123:
                              }
                              addr46:
                              return §§pop();
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function §;!Y§(param1:§2W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§!!b§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§#e§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#e§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§#e§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§=z§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr62);
                  }
               }
               return 0;
            }
            §§goto(addr62);
         }
         addr62:
         return this.§=z§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§=z§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§push(this.§=z§);
                  }
                  else
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr60);
            }
            return §§pop().getAppHeight();
         }
         addr60:
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§?P§);
            loop0:
            while(§§pop())
            {
               if(_loc4_)
               {
                  §§push(this.§?P§);
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     addr66:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        continue loop1;
                     }
                  }
                  addr65:
               }
               while(true)
               {
                  §§push(this.§?P§);
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(param2);
                     if(!_loc3_)
                     {
                        §§pop().viewHeight = §§pop();
                        if(!_loc3_)
                        {
                           addr47:
                           break loop0;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr66);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §<!%§() : int
      {
         return §-D§;
      }
      
      public function updateLocalization() : void
      {
      }
      
      public function updateMuteButtonState() : void
      {
      }
   }
}
