package §8!E§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §"O§.§^#]§;
   import §'y§.§^!B§;
   import §+!c§.§5" §;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §"#X§ extends EventDispatcher
   {
      
      public static const §0!M§:String = "hide_complete";
      
      public static const §<!§:String = "show_complete";
      
      public static const §9!4§:String = "extra_bird_used";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0!M§ = "hide_complete";
         }
         do
         {
            §<!§ = "show_complete";
            do
            {
               §9!4§ = "extra_bird_used";
            }
            while(!(_loc1_ || §"#X§));
            
         }
         while(_loc2_);
         
      }
      
      protected var §7!a§:§[#R§;
      
      protected var §"`§:Number;
      
      protected var §2'§:Number;
      
      protected var §%9§:Number;
      
      protected var §#!§:Boolean;
      
      protected var §=#=§:§ #^§;
      
      protected var §`;§:§^"m§;
      
      protected var §'">§:§0"$§;
      
      protected var §4j§:§5" §;
      
      protected var §5"0§:MovieClip;
      
      protected var §4#J§:§@#B§;
      
      protected var §try§:§^#]§;
      
      protected var §[!+§:§6"w§;
      
      protected var §]!=§:String;
      
      private var §'"h§:Boolean;
      
      protected var §&A§:Boolean;
      
      protected var §"!A§:Boolean;
      
      protected var § "d§:Number;
      
      protected var §6"K§:§[!j§;
      
      protected var §?#Y§:MovieClip;
      
      public function §"#X§(param1:§ #^§, param2:§^#]§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
         }
         while(true)
         {
            this.§try§ = param2;
            while(!(_loc3_ && this))
            {
               this.init(param1);
               if(_loc4_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&A§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(!_loc2_);
         
      }
      
      public function get enabled() : Boolean
      {
         return this.§&A§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§"!A§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(!_loc2_);
         
      }
      
      public function get visible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function get §3#X§() : Boolean
      {
         return this.§'"h§;
      }
      
      public function set §3#X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'"h§ = param1;
            while(this.§'"h§)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§1e§();
               }
               if(_loc2_)
               {
                  addr58:
                  break;
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      protected function init(param1:§ #^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§=#=§ = param1;
            while(true)
            {
               this.§"`§ = 5;
            }
            addr312:
         }
         loop1:
         while(true)
         {
            this.§'"h§ = false;
            while(true)
            {
               if(!_loc3_)
               {
                  continue loop1;
               }
               this.§&A§ = true;
               while(!_loc2_)
               {
                  this.§"!A§ = true;
                  while(true)
                  {
                     this.§#!§ = false;
                     loop5:
                     while(true)
                     {
                        this.§]!=§ = §6"w§.§1!m§;
                        addr269:
                        while(true)
                        {
                           this.§`;§ = §^"m§(param1.getItemByName("Button_ExtraBird"));
                           addr263:
                           while(true)
                           {
                              this.§'">§ = §0"$§(param1.getItemByName("MovieClip_GetMore"));
                              addr254:
                              while(true)
                              {
                                 §§push(this.§'">§);
                                 addr235:
                                 while(true)
                                 {
                                    §§pop().mClip.gotoAndStop(1);
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(_loc3_ || this)
                  {
                     this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
                     §§goto(addr127);
                  }
               }
               §§goto(addr312);
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6"K§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr42:
                     this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
                     if(!_loc3_)
                     {
                        addr49:
                        this.§6"K§ = null;
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(this.§=#=§);
                           if(_loc2_)
                           {
                              §§pop().mClip.scaleX = this.§=#=§.mClip.scaleY = this.§ "d§;
                              if(_loc2_ || this)
                              {
                                 addr185:
                                 this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
                                 while(true)
                                 {
                                    this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
                                    addr182:
                                    while(true)
                                    {
                                       this.§[!+§.removeEventListener(§@!X§.§;"Z§,this.§4!D§);
                                    }
                                 }
                                 addr190:
                              }
                              while(true)
                              {
                                 this.§try§ = null;
                                 loop6:
                                 while(!(_loc3_ && _loc2_))
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§7!a§);
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   §§push(this.§7!a§);
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      addr132:
                                                      addr141:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && this)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr97);
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr131:
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                          addr97:
                                          while(true)
                                          {
                                             this.§7!a§ = null;
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr132);
                                          }
                                          return;
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr141);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr42);
      }
      
      public function §4,§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ < this.§5"0§.currentLabels.length)
            {
               if(param1 == this.§5"0§.currentLabels[_loc3_].name)
               {
                  break;
               }
               _loc3_++;
               continue;
            }
            if(_loc5_ || param1)
            {
               if(_loc5_ || this)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              while(true)
                              {
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break loop0;
                                 }
                                 this.§5"0§.gotoAndStop(param1);
                              }
                              addr69:
                           }
                           while(true)
                           {
                              if(_loc5_ || param1)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        break;
                     }
                     addr114:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  return;
               }
               continue;
            }
            §§goto(addr69);
         }
         while(true)
         {
            §§goto(addr114);
         }
      }
      
      protected function refresh() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§4j§);
            if(_loc2_)
            {
               §§push(this.§4#J§);
               if(_loc2_)
               {
                  §§push(§§pop().§]"<§);
                  if(!_loc3_)
                  {
                     §§push(this.§]!=§);
                     if(_loc2_)
                     {
                        §§pop().count = §§pop().§8#K§(§§pop());
                        addr46:
                        if(_loc2_)
                        {
                           addr42:
                           §§push(this.§4j§);
                           §§push(this.§4#J§.§]"<§);
                           §§push(this.§]!=§);
                        }
                        §§push(§8"f§(§,!q§.§9!,§).§8%§(this.§]!=§));
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        var _loc1_:* = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(_loc1_);
                           loop0:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 this.§&A§ = false;
                                 addr209:
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr138);
                     }
                     §§pop().§ "r§ = §§pop().§ #D§(§§pop());
                     §§goto(addr46);
                  }
               }
            }
            §§goto(addr42);
         }
         §§goto(addr46);
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§"!A§ = true;
            loop0:
            while(true)
            {
               §§push(this.§7!a§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     continue loop0;
                  }
                  addr70:
                  while(true)
                  {
                     this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                        "scaleX":this.§ "d§ * 1,
                        "scaleY":this.§ "d§ * 1,
                        "alpha":1
                     },null,0.25);
                     addr94:
                     while(_loc1_ || this)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§push(this.§7!a§);
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr70);
         }
      }
      
      public function hide(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!A§ = false;
            loop0:
            while(true)
            {
               §§push(this.§7!a§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                           "scaleX":0,
                           "scaleY":0
                        },null,0.5);
                        loop3:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§7!a§);
                              loop4:
                              while(true)
                              {
                                 §§pop().onComplete = this.§-##§;
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(this.§7!a§);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(!param1)
                                          {
                                             §§push(0.5);
                                             if(!_loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             while(true)
                                             {
                                                §§pop().delay = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§7!a§);
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().play();
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             addr71:
                                          }
                                          while(_loc2_)
                                          {
                                             §§push(Number(1));
                                             if(!_loc2_)
                                             {
                                             }
                                             §§goto(addr71);
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§7!a§);
                              }
                              addr112:
                           }
                           while(true)
                           {
                              §§pop().stop();
                              continue loop0;
                           }
                        }
                     }
                     addr89:
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      protected function §-##§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.refresh();
         }
         do
         {
            dispatchEvent(new Event(§0!M§));
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §2!x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.refresh();
            do
            {
               dispatchEvent(new Event(§<!§));
            }
            while(!_loc1_);
            
         }
      }
      
      public function §##3§(param1:Number = 5) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§'"h§)
            {
               loop0:
               while(true)
               {
                  this.§#!§ = true;
                  while(true)
                  {
                     §§push(this);
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(this.§"`§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * 2);
                        }
                        §§push(§§pop() / §§pop());
                     }
                     §§pop().§2'§ = §§pop();
                     loop2:
                     for(; _loc3_; do
                     {
                        if(_loc3_ || param1)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     while(this.§=#R§(), _loc2_);
                     ,return)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop0;
                        }
                        if(!_loc2_)
                        {
                           this.§%9§ = param1;
                           continue;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §>z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7!a§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr38:
                     this.§7!a§.stop();
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr69);
               }
               this.§=#=§.mClip.scaleX = this.§=#=§.mClip.scaleY = 1;
               addr69:
               return;
            }
         }
         §§goto(addr38);
      }
      
      protected function §=#R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7!a§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§7!a§);
                     addr156:
                     while(true)
                     {
                        §§pop().stop();
                        addr157:
                        while(true)
                        {
                        }
                     }
                  }
                  addr154:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§%9§);
                  if(!_loc2_)
                  {
                     §§push(this.§2'§);
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() * 2);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§%9§ = §§pop();
                  loop5:
                  for(; !(_loc2_ && this); if(_loc1_ || _loc2_)
                  {
                     return;
                  })
                  {
                     while(true)
                     {
                        if(this.§%9§ <= 0)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           while(true)
                           {
                              addr61:
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 §§push(this.§7!a§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§pop().play();
                                    if(_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    addr54:
                                    while(_loc1_ || _loc1_)
                                    {
                                       §§goto(addr61);
                                    }
                                    while(true)
                                    {
                                       §§push(this.§7!a§);
                                       §§goto(addr54);
                                    }
                                    addr54:
                                    addr104:
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§pop().onComplete = this.§?!F§;
                                       §§goto(addr54);
                                    }
                                    break;
                                    §§goto(addr80);
                                 }
                                 addr80:
                                 §§goto(addr156);
                              }
                              §§goto(addr154);
                           }
                           addr113:
                        }
                        while(true)
                        {
                           this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                              "scaleX":this.§ "d§ * 1.2,
                              "scaleY":this.§ "d§ * 1.2
                           },null,this.§2'§);
                           §§goto(addr104);
                           §§goto(addr113);
                        }
                        continue loop5;
                     }
                     return;
                  }
                  §§goto(addr157);
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §?!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§7!a§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§7!a§);
                     addr124:
                     while(true)
                     {
                        §§pop().stop();
                        addr125:
                        while(true)
                        {
                        }
                     }
                  }
                  addr122:
               }
               while(true)
               {
                  this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                     "scaleX":this.§ "d§ * 1,
                     "scaleY":this.§ "d§ * 1
                  },null,this.§2'§);
                  loop4:
                  while(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§7!a§);
                     loop5:
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           §§pop().onComplete = this.§=#R§;
                           while(!(_loc1_ && this))
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(this.§7!a§);
                                 if(_loc2_ || this)
                                 {
                                    §§pop().play();
                                    if(!_loc2_)
                                    {
                                       §§goto(addr53);
                                    }
                                    return;
                                 }
                                 continue loop5;
                                 continue loop5;
                              }
                              §§goto(addr122);
                           }
                           continue loop4;
                           addr53:
                        }
                        continue loop0;
                     }
                     §§goto(addr124);
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §@!=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#!§);
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§7!a§.isPaused);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(true);
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                          else
                                          {
                                             addr79:
                                          }
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc1_)
                                          {
                                             break loop4;
                                          }
                                          break loop3;
                                       }
                                       §§goto(addr25);
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                                 addr25:
                                 return §§pop();
                              }
                              break;
                           }
                           break;
                        }
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr54);
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §0S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7!a§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr79:
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr82:
                        do
                        {
                           §§push(this.§#!§);
                           if(!_loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        while(_loc2_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     addr58:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           break loop4;
                        }
                        §§goto(addr82);
                     }
                  }
                  return;
               }
            }
            addr78:
         }
         while(true)
         {
            §§push(this.§7!a§);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().pause();
               §§goto(addr58);
            }
            else
            {
               §§goto(addr78);
            }
         }
      }
      
      public function §-!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§7!a§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     addr86:
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr87:
                        while(true)
                        {
                           §§push(this.§#!§);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_ || _loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr86:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr87))
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     addr66:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
               §§goto(addr86);
            }
            addr81:
         }
         while(true)
         {
            §§push(this.§7!a§);
            if(_loc2_ || _loc1_)
            {
               §§pop().play();
               §§goto(addr66);
            }
            else
            {
               §§goto(addr81);
            }
         }
      }
      
      public function §1e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&A§ = false;
            while(true)
            {
               this.§`;§.setEnabled(this.§&A§);
               addr29:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               return;
               addr36:
            }
         }
         loop1:
         while(true)
         {
            this.§'V§(this.§7!a§);
            loop2:
            while(true)
            {
               this.§7!a§ = §-#C§.§%!E§.§^!H§(this.§=#=§.mClip,{
                  "scaleX":this.§ "d§ * 1,
                  "scaleY":this.§ "d§ * 1,
                  "alpha":0.5
               },null,0.5);
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop2;
               }
               continue loop1;
            }
         }
         §§goto(addr36);
      }
      
      private function §'V§(param1:§[#R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               if(!(_loc2_ && this))
               {
                  param1.§^"P§();
               }
            }
         }
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.§6#R§ == this.§]!=§)
            {
               if(!_loc2_)
               {
                  addr46:
                  this.refresh();
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      protected function §4!D§(param1:§@!X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3J§(param1.§6#R§);
         }
      }
      
      protected function §3J§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§&A§);
            loop0:
            for(; §§pop(); loop3:
            while(_loc3_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§push(§§pop() == this.§]!=§);
                              if(_loc2_)
                              {
                                 continue loop7;
                              }
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                              while(!§§pop())
                              {
                                 this.§?#Y§.visible = false;
                                 while(_loc3_)
                                 {
                                    this.§?#Y§.gotoAndStop(1);
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          addr20:
                                          return;
                                          addr45:
                                       }
                                       continue loop6;
                                    }
                                    addr159:
                                    addr110:
                                    if(!_loc2_)
                                    {
                                       this.§?#Y§.gotoAndPlay(1);
                                       break;
                                    }
                                    this.§?#Y§.gotoAndStop(1);
                                    return;
                                    addr151:
                                 }
                                 if(_loc2_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc2_ && _loc3_)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr20);
                                 }
                                 else if(!_loc2_)
                                 {
                                    §§goto(addr113);
                                 }
                                 else
                                 {
                                    §§goto(addr151);
                                 }
                              }
                              this.§?#Y§.visible = true;
                              §§goto(addr110);
                           }
                           break;
                        }
                        §§goto(addr115);
                     }
                     addr129:
                  }
                  §§goto(addr104);
               }
               §§goto(addr129);
            })
            {
               while(true)
               {
                  §§push(param1);
                  addr115:
                  while(true)
                  {
                     §§push(§§pop() == "");
                     continue loop0;
                  }
               }
            }
            this.§?#Y§.visible = false;
            §§goto(addr159);
         }
         §§goto(addr45);
      }
      
      public function onUIInteraction(param1:§6#'§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§'"h§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§goto(addr35);
                  }
               }
               §§push(this.§4#J§.§]"<§.§ #D§(this.§]!=§));
               if(!(_loc6_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            §§push(this.§4#J§.§]"<§.§8#K§(this.§]!=§));
            if(_loc5_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:* = param1.§=!k§.toUpperCase();
            if(_loc5_)
            {
               if("OVER_EXTRA_BIRD" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        addr310:
                     }
                  }
                  else
                  {
                     addr280:
                     §§push(2);
                     if(_loc6_ && this)
                     {
                     }
                  }
               }
               else
               {
                  if("OUT_EXTRA_BIRD" === _loc4_)
                  {
                     if(_loc5_)
                     {
                        §§push(1);
                        if(_loc5_)
                        {
                           §§goto(addr315);
                        }
                        else
                        {
                           §§goto(addr310);
                        }
                     }
                  }
                  else if("EXTRA_BIRD" === _loc4_)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr280);
                     }
                  }
                  else if("NEXT_LEVEL" !== _loc4_)
                  {
                     addr315:
                     loop0:
                     while(true)
                     {
                        loop10:
                        switch(§§pop())
                        {
                           case 0:
                              addr244:
                              §§push(_loc3_ <= 0);
                              §§push(_loc3_ <= 0);
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(§§pop())
                                    {
                                       addr233:
                                       §§push(this.§'">§);
                                       break loop10;
                                    }
                                    this.§0S§();
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§pop();
                                    addr247:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr220:
                                       while(true)
                                       {
                                          addr221:
                                          §§push(false);
                                          if(!_loc5_)
                                          {
                                             break loop2;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc6_ && param1)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr217:
                              }
                              break;
                              addr245:
                           case 1:
                              §§push(this.§'">§);
                              if(_loc5_)
                              {
                                 §§pop().mClip.gotoAndStop(1);
                                 addr211:
                                 if(_loc5_)
                                 {
                                    this.§-!X§();
                                    addr198:
                                    if(!_loc6_)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr217);
                                 }
                                 else
                                 {
                                    §§goto(addr233);
                                 }
                              }
                              break;
                           case 2:
                              §§push(_loc3_);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(0);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(§§pop() <= §§pop());
                                       loop3:
                                       for(; _loc5_ || this; if(_loc6_ && this)
                                       {
                                          continue;
                                       },§§goto(addr129))
                                       {
                                          §§push(§§pop());
                                          loop4:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      break loop4;
                                                   }
                                                   this.§0"[§();
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr67:
                                                         break loop0;
                                                      }
                                                      addr238:
                                                      loop6:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(false);
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  addr120:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  addr184:
                                                                  while(_loc5_ || this)
                                                                  {
                                                                     §§pop();
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   break loop0;
                                                }
                                                addr129:
                                             }
                                             §§goto(addr184);
                                          }
                                          if(!_loc6_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                this.§8O§();
                                             }
                                             else
                                             {
                                                §§goto(addr198);
                                             }
                                          }
                                          §§goto(addr67);
                                       }
                                       §§goto(addr220);
                                    }
                                    else
                                    {
                                       §§goto(addr244);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr244);
                                 }
                                 §§goto(addr244);
                              }
                              continue;
                           case 3:
                              this.hide(false);
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr88);
                                       }
                                       else
                                       {
                                          §§goto(addr247);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr211);
                                    }
                                    §§goto(addr233);
                                 }
                                 else
                                 {
                                    §§goto(addr142);
                                 }
                              }
                        }
                        §§pop().mClip.gotoAndPlay("start");
                        §§goto(addr238);
                     }
                     return;
                     §§push(4);
                  }
                  §§goto(addr315);
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr310);
                  }
               }
               §§goto(addr315);
            }
            §§goto(addr280);
         }
         addr35:
      }
      
      private function §0"[§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§try§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§try§);
                     addr119:
                     while(true)
                     {
                        §§push(§§pop().§0"[§(this.§]!=§));
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(int(§§pop()));
                        }
                        _loc1_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           if(_loc2_)
                           {
                              §§push(_loc1_ == §^#]§.§5!&§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    addr100:
                                    §§push(true);
                                    if(_loc3_ && this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              §§pop().§'"h§ = §§pop();
                              loop3:
                              while(this.§'"h§)
                              {
                                 do
                                 {
                                    if(_loc2_ || this)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 while(!(_loc2_ || this));
                                 
                                 break;
                              }
                              §§goto(addr26);
                           }
                           §§goto(addr100);
                        }
                        continue loop0;
                     }
                  }
               }
               addr26:
               return;
            }
            §§goto(addr119);
         }
         §§goto(addr50);
      }
      
      private function §8O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6"K§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,this.§]!=§);
         }
         while(true)
         {
            §4#;§.singleton.popupManager.openPopup(this.§6"K§,true,true,true);
            while(_loc1_ || this)
            {
               this.§6"K§.addEventListener(§+#[§.CLOSE,this.§9!3§);
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      private function §9!3§(param1:§+#[§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§6"K§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     this.§6"K§.removeEventListener(§+#[§.CLOSE,this.§9!3§);
                     addr33:
                     if(!_loc3_)
                     {
                        addr50:
                        this.§6"K§ = null;
                     }
                  }
                  §§push(this.§4#J§.§]"<§.§8#K§(this.§]!=§));
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     if(_loc2_ > 0)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§0"[§();
                        }
                     }
                  }
                  return;
               }
               §§goto(addr50);
            }
            §§goto(addr33);
         }
         §§goto(addr50);
      }
   }
}
