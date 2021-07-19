package § §#8
{
   import §1!i§.§<"&§;
   import §5t§.Log;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §>@§.§#y§;
   import §>@§.§5"H§;
   import §]!$§.§6y§;
   import §]!$§.§>!!§;
   import §]!$§.§`!]§;
   import §]!$§.§`#?§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §4#`§ implements §#y§
   {
      
      public static const §[#Y§:int = 60;
      
      public static const §"l§:String = "dummyState";
      
      public static const §<!=§:int = 0;
      
      public static const §"#8§:int = 1;
      
      public static const §&p§:int = 2;
      
      public static const §-#_§:int = 3;
      
      public static var §8X§:Object = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §[#Y§ = 60;
         }
         while(true)
         {
            §"l§ = "dummyState";
            loop1:
            while(true)
            {
               §<!=§ = 0;
               loop2:
               while(true)
               {
                  §"#8§ = 1;
                  loop3:
                  for(; !_loc1_; if(_loc1_ && _loc2_)
                  {
                     continue;
                  },§§goto(addr68))
                  {
                     §&p§ = 2;
                     loop4:
                     while(true)
                     {
                        §-#_§ = 3;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                           addr68:
                           §8X§ = null;
                           if(_loc2_ || §4#`§)
                           {
                              continue loop2;
                           }
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private var §!#!§:Boolean = false;
      
      private var §;"w§:Boolean = false;
      
      public var mName:String;
      
      public var §[L§:Boolean = false;
      
      protected var §`"B§:String = "none";
      
      protected var §?!O§:§6y§;
      
      protected var §7!=§:§>!!§;
      
      protected var §&S§:String;
      
      protected var §7#^§:Boolean = false;
      
      protected var §+#=§:Boolean = true;
      
      protected var §^!`§:String = "best";
      
      public var skipTransition:Boolean = false;
      
      public var §1!I§:Boolean = true;
      
      private var §<!%§:Vector.<String>;
      
      protected var §7!z§:Vector.<String>;
      
      public var §^N§:Boolean = false;
      
      public var §@;§:§]#[§;
      
      public var §-d§:Array;
      
      private var §+0§:String = "";
      
      private var §%#1§:String = "";
      
      public var §%G§:Sprite = null;
      
      public var §!;§:§&7§ = null;
      
      protected var §^"N§:§5"H§;
      
      public function §4#`§(param1:Boolean, param2:String, param3:§5"H§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.mName = param2;
               addr97:
               while(true)
               {
                  this.§-d§ = new Array();
               }
            }
            addr100:
         }
         loop2:
         while(true)
         {
            this.§%G§ = new Sprite();
            while(true)
            {
               if(_loc4_)
               {
                  this.§^"N§ = param3;
                  continue loop2;
               }
               §§goto(addr100);
               addr40:
               if(!_loc5_)
               {
                  this.initialize();
                  addr54:
                  if(_loc4_)
                  {
                     addr19:
                     return;
                  }
                  break;
               }
            }
            §§goto(addr97);
         }
      }
      
      public static function §?#>§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(§8X§)
            {
               if(_loc2_ || §4#`§)
               {
                  return §8X§[param1];
               }
            }
         }
         return null;
      }
      
      public function get §3"v§() : String
      {
         return this.§%#1§;
      }
      
      public function get nextState() : String
      {
         return this.§+0§;
      }
      
      public function get §4"8§() : Boolean
      {
         return this.§!#!§;
      }
      
      public function get §6!h§() : Boolean
      {
         return this.§;"w§;
      }
      
      private function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!%§ = new Vector.<String>();
            loop0:
            while(true)
            {
               this.§7!z§ = new Vector.<String>();
               while(true)
               {
                  this.§^!j§();
                  addr71:
                  while(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            this.§?"-§();
            while(_loc1_)
            {
               this.§@"'§();
               while(!(_loc2_ && _loc2_))
               {
                  if(_loc1_)
                  {
                     this.§!#!§ = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop3;
               }
            }
            §§goto(addr71);
         }
      }
      
      protected function §^!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§<!%§.push(§`#?§.§[! §());
            while(true)
            {
               this.§<!%§.push(§`#?§.§9!-§());
               while(true)
               {
                  this.§<!%§.push(§`#?§.§`J§());
                  addr83:
                  while(_loc2_)
                  {
                  }
               }
            }
            addr108:
         }
         while(true)
         {
            this.§<!%§.push(§`#?§.§@!!§());
            loop4:
            while(_loc2_)
            {
               this.§<!%§.push(§`#?§.§8#@§());
               while(true)
               {
                  this.§<!%§.push(§`#?§.§;!&§);
                  for(; _loc2_; this.§<!%§.push(§`#?§.§1#$§),if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                     continue loop4;
                  })
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr108);
                  }
               }
            }
            §§goto(addr83);
         }
      }
      
      protected function init() : void
      {
      }
      
      protected function §@"'§() : void
      {
      }
      
      private function §?"-§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§@;§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(this.§@;§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().container);
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       §§goto(addr102);
                                    }
                                    addr100:
                                 }
                                 break;
                              }
                              addr134:
                              var _loc1_:MovieClip = §§pop().container.mClip;
                              var _loc2_:Vector.<String> = this.§<!%§.concat(this.§7!z§);
                              var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
                              if(_loc4_ || _loc2_)
                              {
                                 §<"&§.§6!t§(_loc1_,_loc2_,_loc3_,§<"&§.§?"5§);
                              }
                              do
                              {
                                 this.createTransition(_loc3_);
                              }
                              while(!(_loc4_ || _loc3_));
                              
                              return;
                           }
                        }
                     }
                     addr102:
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(this.§@;§);
                                    if(_loc5_ && _loc3_)
                                    {
                                       break loop5;
                                    }
                                    continue loop0;
                                 }
                                 addr46:
                                 §§push(§§pop().mClip == null);
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop8;
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             break loop7;
                                          }
                                          break loop9;
                                       }
                                       §§goto(addr122);
                                    }
                                    else if(false)
                                    {
                                       break;
                                    }
                                 }
                                 break loop5;
                                 continue loop5;
                                 addr58:
                              }
                              continue loop4;
                           }
                           §§goto(addr58);
                           §§goto(addr122);
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§7!=§ = new §`!]§(param1,this.§%G§.stage);
         }
      }
      
      private function §2! §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&#§(false);
            loop0:
            while(this.§`"B§ == §6y§.§;X§)
            {
               if(!_loc2_)
               {
                  while(true)
                  {
                     break loop0;
                  }
               }
               else
               {
                  addr45:
                  addr74:
               }
               continue;
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
            while(true)
            {
               this.§7!=§.stop(false);
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         this.skipTransition = true;
         §§goto(addr45);
      }
      
      private function §&#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§%G§.removeEventListener(MouseEvent.CLICK,this.§2! §);
               loop0:
               while(true)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(_loc2_ || param1)
                     {
                        continue;
                     }
                     addr83:
                     while(true)
                     {
                        this.§%G§.addEventListener(MouseEvent.CLICK,this.§2! §);
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function activate(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]#[§ = null;
         if(!_loc5_)
         {
            this.§%#1§ = param1;
            while(true)
            {
               if(!this.§!#!§)
               {
                  if(!_loc5_)
                  {
                     this.initialize();
                  }
                  while(!_loc5_)
                  {
                  }
                  continue;
                  addr60:
               }
               loop2:
               while(true)
               {
                  §§push(this.§@;§);
                  loop3:
                  while(§§pop())
                  {
                     if(_loc6_)
                     {
                        this.§%G§.addChild(this.§@;§);
                     }
                     do
                     {
                        if(_loc6_)
                        {
                           §§push(this.§@;§);
                           if(_loc6_ || this)
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        §§goto(addr60);
                     }
                     while(§§pop().§52§(), _loc5_);
                     
                     while(true)
                     {
                        if(true)
                        {
                           break loop3;
                        }
                        continue loop2;
                     }
                  }
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§-d§)
                  {
                     if(!_loc5_)
                     {
                        this.§%G§.addChild(_loc2_);
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc2_.§8,§();
                        }
                     }
                  }
                  if(!(_loc5_ && param1))
                  {
                     this.§+0§ = "";
                  }
                  do
                  {
                     this.§;"w§ = true;
                  }
                  while(!_loc6_);
                  
                  return;
               }
            }
         }
         §§goto(addr36);
      }
      
      public function activateComplete(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§6y§ = null;
         if(_loc3_)
         {
            §§push(this.§7#^§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  addr28:
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr37:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§goto(addr44);
                           }
                           addr44:
                           if(!§§pop())
                           {
                              if(!_loc3_)
                              {
                              }
                           }
                           else
                           {
                              this.onTransitionInComplete();
                           }
                           §§goto(addr139);
                        }
                        _loc2_ = new §6y§();
                        if(_loc3_ || this)
                        {
                           _loc2_.§%#N§ = §`#?§.§1#$§;
                           loop0:
                           while(true)
                           {
                              _loc2_.§`"i§ = §`#?§.§;!&§;
                              loop1:
                              while(true)
                              {
                                 _loc2_.startLabel = §`#?§.§@!!§(this.§%#1§);
                                 loop2:
                                 while(true)
                                 {
                                    _loc2_.type = §6y§.§>]§;
                                    while(_loc3_)
                                    {
                                       addr80:
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       addr89:
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             _loc2_.stageQuality = this.§^!`§;
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                this.§%!K§(_loc2_);
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr80);
                                             }
                                             §§goto(addr89);
                                          }
                                          addr91:
                                       }
                                       §§goto(addr139);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr91);
                        }
                     }
                  }
                  §§goto(addr44);
               }
               §§goto(addr37);
            }
            §§goto(addr28);
         }
         addr139:
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]#[§ = null;
         if(_loc5_ || _loc1_)
         {
            this.§^!d§();
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(this.§@;§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           continue loop0;
                        }
                        do
                        {
                           this.§%G§.removeChild(this.§@;§);
                        }
                        while(!(_loc5_ || _loc1_));
                        
                        if(true)
                        {
                           break;
                        }
                        continue;
                        addr66:
                     }
                     break;
                  }
                  addr65:
                  while(true)
                  {
                     §§pop().§8,§();
                  }
                  §§goto(addr66);
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§-d§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc1_.§8,§();
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§%G§.removeChild(_loc1_);
                     }
                  }
               }
               if(_loc5_)
               {
                  §§push(this.§;"w§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           this.§;"w§ = false;
                           while(_loc5_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(this.§^N§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          this.cleanup();
                                       }
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_ && _loc2_)
                                       {
                                          if(_loc4_ && _loc3_)
                                          {
                                             addr195:
                                             if(this.§^N§)
                                             {
                                                addr196:
                                                this.cleanup();
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             addr168:
                                             addr193:
                                          }
                                          continue loop4;
                                          return;
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr168);
               }
               §§goto(addr177);
            }
         }
         while(true)
         {
            §§goto(addr65);
         }
      }
      
      private function §%!K§(param1:§6y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!d§();
            while(true)
            {
               §§push(this.§7!=§);
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
                              addr226:
                              while(true)
                              {
                                 §§push(param1.type);
                                 addr198:
                                 while(true)
                                 {
                                    §§push(§6y§.§8"@§);
                                    addr200:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr201:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                       }
                                    }
                                 }
                              }
                           }
                           addr225:
                        }
                        while(true)
                        {
                           loop10:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 this.§`"B§ = param1.type;
                                 while(true)
                                 {
                                    this.beforeTransitionStart(param1);
                                    loop13:
                                    while(true)
                                    {
                                       §§push(this.§7!=§);
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§]!p§);
                                          §§push(this.§7!=§);
                                          addr189:
                                          continue loop13;
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr104:
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(§§pop())
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§&#§(true);
                                       while(true)
                                       {
                                          addr24:
                                          loop25:
                                          while(true)
                                          {
                                             this.onTransitionStart(this.§`"B§);
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      break loop10;
                                                   }
                                                   §§goto(addr226);
                                                }
                                                else
                                                {
                                                   §§goto(addr178);
                                                }
                                             }
                                             else
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§1!I§);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§goto(addr104);
                                                         }
                                                         addr144:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop22;
                                                            }
                                                            §§pop();
                                                         }
                                                         addr69:
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc2_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            addr84:
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  continue loop25;
                                                                  §§goto(addr84);
                                                               }
                                                               addr91:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr225);
                                                            }
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      continue loop2;
                                                   }
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(this.§`"B§);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(§6y§.§;X§);
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr69);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr91);
                                                               }
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         addr137:
                                                      }
                                                      addr133:
                                                      while(_loc3_)
                                                      {
                                                         §§goto(addr137);
                                                         §§push(§6y§.§>]§);
                                                         continue loop24;
                                                      }
                                                   }
                                                   §§goto(addr200);
                                                }
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       addr129:
                                    }
                                    while(!(_loc2_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§goto(addr133);
                                       }
                                    }
                                    §§goto(addr204);
                                    addr162:
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr24);
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      protected function beforeTransitionStart(param1:§6y§) : void
      {
      }
      
      private function §^!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7!=§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     this.§`"B§ = §6y§.§8"@§;
                     addr36:
                     addr72:
                     while(_loc2_ || _loc1_)
                     {
                        this.§&#§(false);
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 continue loop5;
                              }
                              addr86:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§7!=§);
                                 addr102:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§]!p§);
                                    break loop4;
                                 }
                              }
                              addr100:
                           }
                        }
                        break;
                        §§goto(addr36);
                     }
                     while(true)
                     {
                        §§push(this.§7!=§);
                        if(_loc1_ && _loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr100);
            }
         }
         §§goto(addr86);
      }
      
      private function §]!p§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = this.§`"B§;
         if(!_loc4_)
         {
            §§push(§6y§.§5z§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr79:
                        §§push(0);
                        if(!_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr103:
                        §§push(1);
                        if(_loc4_)
                        {
                           addr124:
                        }
                     }
                  }
                  else
                  {
                     §§push(§6y§.§>]§);
                     if(_loc3_ || param1)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr103);
                              }
                           }
                           else
                           {
                              addr110:
                              if(§6y§.§;X§ !== _loc2_)
                              {
                                 addr129:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.§,!7§();
                                       addr35:
                                       break;
                                       addr45:
                                    case 1:
                                       this.onTransitionInComplete();
                                       break;
                                       addr40:
                                    case 2:
                                       this.onTransitionOutComplete();
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(_loc3_)
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
                                 §§push(3);
                              }
                           }
                           §§goto(addr129);
                           if(!_loc4_)
                           {
                              §§goto(addr124);
                           }
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr110);
         }
         §§goto(addr79);
      }
      
      private function §,!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.onTransitionComplete(this.§`"B§);
            for(; this.§?!O§; do
            {
               this.§?!O§ = null;
            }
            while(!(_loc2_ || _loc1_));
            ,if(_loc2_ || _loc1_)
            {
               break;
            })
            {
               if(!_loc2_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§%!K§(this.§?!O§);
            §§goto(addr78);
         }
      }
      
      private function onTransitionOutComplete() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.onTransitionComplete(this.§`"B§);
            while(true)
            {
               this.§^!d§();
            }
            addr73:
         }
         loop1:
         while(true)
         {
            this.§+0§ = this.§&S§;
            while(_loc1_ || _loc2_)
            {
               this.§&S§ = "";
               if(_loc2_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr73);
            }
         }
      }
      
      private function onTransitionInComplete() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.onTransitionComplete(this.§`"B§);
            while(true)
            {
               this.§^!d§();
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§%!K§(this.getRunTransitionData());
            if(!(_loc2_ && this))
            {
               if(_loc1_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function getRunTransitionData() : §6y§
      {
         return new §6y§(§`#?§.§[! §(),§`#?§.§1#$§,§`#?§.§;!&§,§6y§.§5z§,this.§+#=§,this.§^!`§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §2"z§(param1:§6y§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§7!=§);
            for(; §§pop().isRunning; §§push(this.§7!=§),if(_loc3_ && _loc3_)
            {
               continue;
            },§§pop().stop(param2),if(!_loc4_)
            {
               addr55:
               §§goto(addr85);
            },if(_loc3_)
            {
               break;
            })
            {
               while(true)
               {
                  this.§?!O§ = param1;
                  §§goto(addr55);
               }
            }
            this.§%!K§(param1);
            addr85:
            while(true)
            {
               if(_loc4_ || this)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
            return;
         }
      }
      
      protected function § g§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§6y§ = null;
         if(!(_loc5_ && this))
         {
            if(param2)
            {
               if(!(_loc5_ && param3))
               {
                  addr36:
                  (_loc4_ = new §6y§()).startLabel = §`#?§.§8#@§(param1);
                  if(_loc6_)
                  {
                     _loc4_.§%#N§ = §`#?§.§1#$§;
                     while(true)
                     {
                        _loc4_.§`"i§ = §`#?§.§;!&§;
                        while(!(_loc5_ && this))
                        {
                           _loc4_.type = §6y§.§;X§;
                           loop2:
                           while(_loc6_)
                           {
                              while(true)
                              {
                                 _loc4_.stageQuality = this.§^!`§;
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       this.§2"z§(_loc4_,param3);
                                       do
                                       {
                                          this.§&S§ = param1;
                                       }
                                       while(_loc5_ && param3);
                                       
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             return;
                                          }
                                          addr141:
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr94);
               }
            }
            else
            {
               this.§^!d§();
               if(_loc6_)
               {
                  this.§&S§ = "";
                  if(!(_loc5_ && param1))
                  {
                     this.§+0§ = param1;
                  }
               }
            }
            §§goto(addr141);
         }
         §§goto(addr36);
      }
      
      public function §8"5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^N§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§!#!§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§@;§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr110:
                           this.§@;§.clear();
                        }
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§@;§ = null;
                           if(_loc2_ || this)
                           {
                              if(_loc2_ || this)
                              {
                                 addr99:
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr132);
                     }
                     break;
                  }
                  §§goto(addr110);
               }
               while(true)
               {
                  §§push(this.§-d§);
                  if(!_loc1_)
                  {
                     if(§§pop().length <= 0)
                     {
                        loop3:
                        while(!_loc1_)
                        {
                           if(this.§;"w§)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 this.deActivate();
                              }
                              loop4:
                              while(true)
                              {
                                 addr24:
                                 while(true)
                                 {
                                    this.§!#!§ = false;
                                    if(_loc2_ || this)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(!_loc1_)
                                 {
                                    return;
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr24);
                        }
                        continue;
                     }
                     §§push(this.§-d§);
                  }
                  (§§pop().pop() as §]#[§).clear();
               }
            }
            addr132:
            return;
         }
         §§goto(addr99);
      }
      
      public final function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§!#!§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr170:
                  Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
                  addr153:
                  return §<!=§;
                  addr176:
               }
               loop1:
               while(true)
               {
                  §§push(this.§;"w§);
                  if(_loc3_ && param1)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.update(param1);
                        loop3:
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              this.runAnimations(param1);
                              while(true)
                              {
                                 if(this.§+0§ != "")
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ || param1))
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       addr137:
                                       if(_loc2_ || this)
                                       {
                                          break loop1;
                                       }
                                       if(_loc3_)
                                       {
                                          break loop3;
                                       }
                                       continue loop1;
                                    }
                                    §§push(§-#_§);
                                 }
                                 else
                                 {
                                    addr24:
                                    §§push(§&p§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    §§goto(addr122);
                                 }
                                 if(_loc2_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr153);
                              }
                              addr122:
                              return §§pop();
                              §§push(§"#8§);
                              addr150:
                           }
                           else
                           {
                              §§goto(addr170);
                           }
                        }
                        §§goto(addr176);
                     }
                  }
                  §§goto(addr137);
               }
               addr144:
               Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
               §§goto(addr150);
            }
         }
         §§goto(addr144);
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§7!=§);
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
                        addr90:
                        while(true)
                        {
                           §§push(this.§`"B§ == §6y§.§8"@§);
                           if(_loc2_)
                           {
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              §§push(!§§pop());
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§7!=§);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§pop().run(param1);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr90);
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§[L§;
      }
      
      public final function §=!q§(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(this.isTransitioning)
            {
               if(!_loc5_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            §§goto(addr56);
         }
         addr56:
         while(true)
         {
            this.onUIInteraction(param1,param2,param3);
            if(!_loc5_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      protected function get isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§7!=§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr150:
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(_loc1_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§`"B§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§6y§.§>]§);
                                          addr81:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop10:
                                             while(!_loc2_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc1_ || this))
                                                {
                                                   continue loop5;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§pop();
                                                         if(_loc1_ || this)
                                                         {
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      addr43:
                                                      continue loop6;
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            §§goto(addr62);
                                                         }
                                                         else
                                                         {
                                                            addr122:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      while(!_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop11;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr62:
                              return §§pop();
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr152);
                  }
               }
            }
            addr149:
         }
         while(true)
         {
            §§push(this.§7!=§);
            if(_loc1_ || _loc1_)
            {
               §§goto(addr122);
               §§push(§§pop().isRunning);
            }
            else
            {
               §§goto(addr149);
            }
            §§goto(addr150);
            §§goto(addr152);
         }
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
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
      
      public function §&!#§(param1:§]#[§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-d§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§%G§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%G§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§%G§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§!;§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr58);
                  }
               }
               return 0;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§!;§.getAppWidth();
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!;§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr58);
                  }
               }
               return 0;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§!;§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§@;§);
            loop0:
            for(; §§pop(); if(!(_loc3_ || _loc3_))
            {
               continue;
            },§§push(param2),if(_loc3_)
            {
               §§pop().viewHeight = §§pop();
               if(!(_loc3_ || param2))
               {
                  §§goto(addr91);
               }
               addr66:
               break;
            },§§goto(addr90))
            {
               if(!(_loc4_ && this))
               {
                  §§push(this.§@;§);
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     addr90:
                     while(true)
                     {
                        §§pop().viewWidth = §§pop();
                        continue loop1;
                     }
                  }
                  addr89:
               }
               while(true)
               {
                  §§push(this.§@;§);
                  if(!(_loc4_ && _loc3_))
                  {
                     continue loop0;
                  }
                  §§goto(addr89);
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §[#^§() : int
      {
         return §[#Y§;
      }
      
      public function §9!J§() : void
      {
      }
   }
}
