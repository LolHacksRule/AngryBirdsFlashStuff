package §3!7§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import § each§.§>v§;
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#]§.b2Vec2;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §3![§.§^"1§;
   import §6!B§.§,!p§;
   import §6!B§.§>!E§;
   import §7"@§.§2!e§;
   import §7-§.§,!C§;
   import §8!v§.§"m§;
   import §9"!§.§+Z§;
   import §9"!§.§2K§;
   import §9"!§.§2a§;
   import §9"!§.§4!`§;
   import §9"!§.§4"F§;
   import §9"!§.§;!M§;
   import §9"!§.§;x§;
   import §9"!§.§>"7§;
   import §9"!§.§`7§;
   import §9"%§.§&!9§;
   import §9"%§.§&!g§;
   import §9"%§.§&!r§;
   import §9"%§.§1!Q§;
   import §9"%§.§="$§;
   import §<a§.§+!B§;
   import §[!"§.§&0§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import §^j§.§7>§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §#A§ extends EventDispatcher
   {
       
      
      private var §,?§:§+Z§;
      
      private var §9!D§:Boolean = false;
      
      private var §^!m§:§;x§;
      
      private var §5!Z§:int = -1;
      
      private var §0"%§:Number;
      
      private var §]!$§:Function;
      
      private var §&=§:Array;
      
      private var §9r§:Number = -1;
      
      private var §,]§:§&!9§;
      
      private var §"!h§:Number = -1;
      
      private var §<"§:§,!p§;
      
      private var §&$§:§"m§ = null;
      
      private var §,!i§:Vector.<§^d§>;
      
      private var §;$§:§^d§;
      
      private var §,!c§:§7>§;
      
      public function §#A§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&=§ = [];
            while(true)
            {
               this.§,!i§ = new Vector.<§^d§>();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     super();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      public function get §"b§() : int
      {
         return this.§,!i§.length;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§5!Z§ = -1;
            while(true)
            {
               this.§9r§ = -1;
               loop2:
               while(!(_loc1_ && _loc2_))
               {
                  this.§"!h§ = -1;
                  loop3:
                  while(true)
                  {
                     this.§,]§ = null;
                     while(true)
                     {
                        this.§]!$§ = null;
                        while(_loc2_)
                        {
                           this.§&=§ = [];
                           while(!_loc1_)
                           {
                              this.§,!c§.mouseEnabled = true;
                              continue loop3;
                           }
                           while(true)
                           {
                              this.§^!m§ = null;
                              continue loop2;
                           }
                           if(!(_loc1_ && this))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function reset() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         do
         {
            if(this.§,!i§.length <= 0)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               addr102:
               this.§;$§ = null;
               addr105:
               return;
               addr90:
            }
            this.§,!i§.shift();
         }
         while(_loc2_ || _loc3_);
         
         §§push(this.§;$§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               if(!(_loc3_ && this))
               {
                  this.§<!Z§(this.§;$§.§1!e§);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr105);
               }
               try
               {
                  addr81:
                  this.§;$§.§1!e§.close();
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr90);
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr102);
               }
            }
            §§goto(addr102);
         }
         §§goto(addr81);
      }
      
      public function setController(param1:§7>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§,!c§);
            do
            {
               if(§§pop() != param1)
               {
                  continue;
               }
            }
            while(_loc2_ && param1);
            
            return;
            addr86:
         }
         loop5:
         while(true)
         {
            while(true)
            {
               §§push(this.§,!c§);
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop5;
                     addr73:
                  }
                  while(true)
                  {
                     this.§,!c§ = param1;
                     do
                     {
                        this.init();
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr73);
                  }
                  return;
               }
               break;
            }
            §§goto(addr86);
         }
      }
      
      public function run(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc4_)
         {
            if(this.§,!c§)
            {
               loop0:
               while(true)
               {
                  this.§9!`§(param1);
                  loop1:
                  while(true)
                  {
                     this.§>!!§(param1);
                     loop2:
                     while(_loc4_ || _loc2_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(this.§9r§);
                           while(true)
                           {
                              §§push(0);
                              addr88:
                              while(§§pop() > §§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§9r§);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§9r§ = §§pop();
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 _loc2_ = this.§&=§.shift();
                                 if(!_loc3_)
                                 {
                                    this.§,"F§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
                                    break;
                                 }
                                 break;
                              }
                              addr178:
                              this.§9r§;
                              return;
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§push(0);
                              if(_loc4_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       this.§]!$§();
                                       if(_loc4_ || param1)
                                       {
                                          addr41:
                                          this.§]!$§ = null;
                                          (§#6§.§'" § as §^"1§).mouseEnabled = true;
                                          addr45:
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr41);
                                                }
                                                §§push(this.§&=§);
                                                if(!_loc3_)
                                                {
                                                   if(§§pop().length > 0)
                                                   {
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr45);
                                          }
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr178);
                              }
                              else
                              {
                                 §§goto(addr88);
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr157);
      }
      
      protected function §>!!§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §#6§.§6!z§.slingshot.§<!x§();
         if(!_loc6_)
         {
            §§push(this.§,?§);
            while(true)
            {
               §§push(§§pop().enabled);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc5_ || this)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr239:
                              loop16:
                              while(true)
                              {
                                 §§push(_loc2_ == null);
                                 addr213:
                                 while(_loc5_)
                                 {
                                    §§push(!§§pop());
                                    while(_loc5_)
                                    {
                                    }
                                    continue loop16;
                                 }
                                 continue loop1;
                              }
                           }
                           addr238:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr224:
                                 while(true)
                                 {
                                    §§push(§#6§.§6!z§.slingshot.mDragging);
                                    if(_loc5_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr180);
                        }
                     }
                  }
                  §§goto(addr238);
               }
            }
         }
         §§goto(addr182);
      }
      
      protected function §9!`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§,]§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§,]§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§@4§);
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§,]§);
                              while(!(_loc2_ && this))
                              {
                                 §§pop().§9!`§(param1);
                                 while(!_loc2_)
                                 {
                                    §§push(this.§,]§);
                                    while(true)
                                    {
                                       §§push(§§pop().§4!7§);
                                       addr167:
                                       §§goto(addr20);
                                    }
                                 }
                                 §§goto(addr236);
                                 addr131:
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(!§§pop().§=!y§().IsActive());
                                 if(!_loc2_)
                                 {
                                    addr143:
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this);
                                             §§push(this.§"!h§);
                                             if(!(_loc2_ && param1))
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§"!h§ = §§pop();
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   break loop13;
                                                }
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push(this.§"!h§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(0);
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            addr61:
                                                            addr108:
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr70);
                                                            }
                                                         }
                                                         §§goto(addr20);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr179);
                                             }
                                             addr155:
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             this.§,]§ = null;
                                             §§goto(addr108);
                                          }
                                          break;
                                          §§goto(addr143);
                                       }
                                       this.§"!h§ = -1;
                                       §§goto(addr155);
                                       addr150:
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr203);
                              }
                              continue loop2;
                           }
                           if(!(_loc2_ && param1))
                           {
                              this.§,]§ = null;
                           }
                           this.§"!h§ = -1;
                           addr254:
                           addr236:
                        }
                     }
                  }
               }
               addr20:
               loop7:
               while(true)
               {
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§"!h§);
                           addr177:
                           while(true)
                           {
                              §§push(0);
                              addr178:
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    break loop7;
                                    addr179:
                                 }
                                 while(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§,]§);
                                       continue loop0;
                                    }
                                    §§goto(addr254);
                                 }
                                 continue loop5;
                              }
                           }
                           addr70:
                           if(!(_loc2_ && this))
                           {
                              break loop7;
                           }
                        }
                        addr175:
                     }
                     break;
                  }
                  continue loop3;
               }
               addr20:
               return;
            }
         }
         §§goto(addr175);
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         §§push(§?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§));
         if(_loc8_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc8_ || _loc3_)
         {
            §§push(_loc1_);
            if(_loc8_ || _loc1_)
            {
               if(§§pop() <= 0)
               {
                  if(!_loc7_)
                  {
                     §§push(§>,§.§^t§.§]6§);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!§>v§.§@",§)
                        {
                           if(!_loc7_)
                           {
                              addr84:
                              §>v§.§ !y§(_loc2_);
                              addr212:
                              §§push(false);
                              addr87:
                           }
                           §§goto(addr87);
                        }
                        else
                        {
                           for each(_loc3_ in §>v§.§@",§)
                           {
                              if(_loc8_ || _loc2_)
                              {
                                 if(_loc3_.id != _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                              }
                              §%?§.§6!x§(_loc3_);
                           }
                           if(_loc8_ || _loc2_)
                           {
                              §§goto(addr212);
                           }
                           else
                           {
                              §§push(true);
                              if(_loc8_ || _loc1_)
                              {
                                 return §§pop();
                              }
                              addr163:
                           }
                           addr89:
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr84);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §?!F§.§;"§.§ !2§(§>,§.§^t§.§]6§);
                     loop1:
                     while(true)
                     {
                        this.§?K§(§>,§.§^t§.§]6§);
                        while(!(_loc7_ && _loc3_))
                        {
                           §§push(LevelManager.§'!O§);
                           if(_loc8_ || _loc2_)
                           {
                              §§push(§§pop());
                           }
                           _loc4_ = §§pop();
                           while(_loc8_)
                           {
                              §+!B§.§@§(§>,§.§^t§.§]6§,_loc4_);
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr163);
            }
            §§goto(addr89);
         }
         §§goto(addr84);
      }
      
      private function §0"7§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.preventDefault();
         }
         do
         {
            this.§`!Y§();
         }
         while(_loc3_);
         
      }
      
      private function §`!Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§<"§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  addr122:
                  while(true)
                  {
                     §§push(this.§<"§);
                     addr124:
                     while(true)
                     {
                        §§pop().stop();
                        addr125:
                        while(true)
                        {
                           this.§<"§ = null;
                           addr111:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr122:
               }
               while(true)
               {
                  §>!E§.§7N§("Powerup_Bomb_Bang","ChannelPowerups");
                  loop1:
                  while(true)
                  {
                     §#6§.§6!z§.§<f§.§-!,§(this.§,]§,false,true,true);
                     while(true)
                     {
                        this.§"!h§ = -1;
                        while(true)
                        {
                           if(_loc1_ && _loc1_)
                           {
                              continue loop1;
                           }
                           if(_loc2_ || _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr122);
      }
      
      public function §2c§(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(!(_loc8_ && _loc3_))
         {
            §§push(this.§5!Z§);
            if(_loc7_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  §§push(§§pop() >= §§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           addr140:
                           while(true)
                           {
                              addr58:
                              addr194:
                              while(true)
                              {
                                 §§push(this.§5!Z§);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§4"F§.§1"#§);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(!(_loc7_ || this))
                                       {
                                          continue loop1;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    break;
                                 }
                                 addr192:
                                 break;
                              }
                              addr221:
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    addr197:
                                    this.§5!Z§ = -1;
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       addr207:
                                       §#6§.§6!z§.mLevelEngine.mWorld.§%$§(new b2Vec2(0,§#6§.§6!z§.mLevelEngine.mWorld.§0u§().y));
                                    }
                                 }
                              }
                              §§push(this.§^!m§);
                              if(!(_loc8_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       addr250:
                                       §§push(this.§^!m§);
                                       §§push(§#6§.§6!z§.camera);
                                       §§push(param1);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() * 1000);
                                       }
                                       if(!§§pop().§@1§(§§pop(),§§pop()))
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             addr267:
                                             this.§^!m§ = null;
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr250);
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(this.§5!Z§);
                           break;
                        }
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                              §§push(Number(Math.sin(this.§5!Z§ / §4"F§.§1"#§ * (Math.PI * §4"F§.§0"3§) + this.§0"%§)));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(_loc2_);
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    addr52:
                                    _loc3_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr58);
                                       }
                                       else
                                       {
                                          _loc4_ = new b2Vec2(_loc3_,§#6§.§6!z§.mLevelEngine.mWorld.§0u§().y);
                                          if(!(_loc8_ && this))
                                          {
                                             §#6§.§6!z§.mLevelEngine.mWorld.§%$§(_loc4_);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                var _loc5_:*;
                                                §§push((_loc5_ = this).§5!Z§);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                var _loc6_:* = §§pop();
                                                if(!_loc8_)
                                                {
                                                   _loc5_.§5!Z§ = _loc6_;
                                                }
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr250);
                                          }
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr207);
                                 }
                                 break;
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr192);
                  }
               }
               §§goto(addr194);
            }
            §§goto(addr192);
         }
         §§goto(addr140);
      }
      
      private function §,"F§(param1:Function, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.§]!$§ == null)
            {
               this.§]!$§ = param1;
               loop0:
               for(; !_loc4_; if(_loc4_ && _loc3_)
               {
                  continue;
               },§§goto(addr135))
               {
                  if(!_loc3_)
                  {
                     addr175:
                     this.§&=§.push({
                        "powerupFunction":param1,
                        "gotoCastleSide":param2
                     });
                     break;
                  }
                  (§#6§.§'" § as §^"1§).mouseEnabled = false;
                  loop1:
                  while(true)
                  {
                     this.§9r§ = §4"F§.§"!_§;
                     addr141:
                     loop2:
                     while(true)
                     {
                        §§push(§#6§.§6!z§);
                        while(true)
                        {
                           §§push(§§pop().camera);
                           if(!_loc4_)
                           {
                              §§push(param2);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr102:
                                    while(true)
                                    {
                                       §§push(§&0§.§!!4§);
                                       if(_loc3_ || param2)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc4_ && param1)
                                          {
                                          }
                                       }
                                    }
                                    addr102:
                                 }
                                 else
                                 {
                                    §§push(§&0§.§#!"§);
                                    if(_loc3_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().§4"2§(§§pop());
                                    addr126:
                                    while(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                              }
                              addr101:
                           }
                           §§goto(addr102);
                           addr135:
                           §§push(§#6§.§6!z§);
                           if(_loc4_ && param2)
                           {
                              continue;
                           }
                           §§push(§§pop().camera);
                           if(_loc3_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(param2);
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       addr52:
                                       §§push(§#6§.§6!z§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().camera);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().§07§);
                                             if(_loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc4_)
                                                {
                                                   addr73:
                                                   §§pop().§+!Z§ = Number(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr73);
                                             }
                                          }
                                          else
                                          {
                                             addr69:
                                             §§push(§§pop().§>E§);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr73);
                                             }
                                          }
                                          §§goto(addr73);
                                       }
                                       else
                                       {
                                          addr68:
                                          §§push(§§pop().camera);
                                       }
                                       §§goto(addr69);
                                    }
                                    else
                                    {
                                       §§push(§#6§.§6!z§);
                                    }
                                    §§goto(addr68);
                                 }
                                 else
                                 {
                                    §§goto(addr101);
                                 }
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr52);
                        }
                     }
                  }
               }
               §§goto(addr24);
            }
            §§goto(addr175);
         }
         §§goto(addr141);
      }
      
      private function §"!?§() : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:String = null;
         var _loc1_:§;!M§ = (§#6§.§6!z§.slingshot as §>"7§).§ L§[(§#6§.§6!z§.slingshot as §>"7§).§6!m§];
         §§push(§4"F§.§ "?§);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc11_:* = _loc1_.name;
         if(!_loc13_)
         {
            §§push("BIRD_BLACK");
            if(_loc12_ || this)
            {
               §§push(_loc11_);
               if(!(_loc13_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc13_)
                     {
                        §§push(0);
                        if(!_loc12_)
                        {
                           addr289:
                        }
                     }
                     else
                     {
                        addr332:
                        §§push(4);
                        if(!(_loc13_ && _loc2_))
                        {
                           addr340:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        if(!(_loc13_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc12_)
                              {
                                 §§push(1);
                                 if(_loc12_ || this)
                                 {
                                    addr413:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr211:
                                          _loc2_ = Number(§4"F§.§3!>§);
                                          addr417:
                                          §>!E§.§7N§("Powerup_Grow","ChannelPowerups");
                                          if(!(_loc13_ && this))
                                          {
                                             addr428:
                                             §§push(§#6§.§6!z§);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop().slingshot);
                                                if(_loc12_)
                                                {
                                                   (§§pop() as §>"7§).§+!>§(_loc2_);
                                                   addr439:
                                                   §§push(§#6§.§6!z§);
                                                }
                                                break;
                                             }
                                             §§push(§§pop().slingshot);
                                             break;
                                          }
                                          §§goto(addr439);
                                          addr212:
                                          addr210:
                                       case 1:
                                          addr204:
                                          _loc2_ = Number(§4"F§.§5d§);
                                          §§goto(addr417);
                                       case 2:
                                          addr194:
                                          _loc2_ = Number(§4"F§.§@!<§);
                                          addr195:
                                          if(_loc13_)
                                          {
                                             §§goto(addr212);
                                          }
                                          §§goto(addr417);
                                       case 3:
                                          addr171:
                                          §§push(§4"F§.§#!9§);
                                          if(_loc12_ || _loc3_)
                                          {
                                             addr179:
                                             §§push(Number(§§pop()));
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                _loc2_ = §§pop();
                                                addr187:
                                             }
                                             else
                                             {
                                                §§goto(addr204);
                                             }
                                             §§goto(addr417);
                                          }
                                          else
                                          {
                                             §§goto(addr204);
                                          }
                                       case 4:
                                          §§push(§4"F§.§6T§);
                                          if(_loc12_ || _loc3_)
                                          {
                                             if(_loc12_ || this)
                                             {
                                                addr155:
                                                _loc2_ = Number(§§pop());
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr417);
                                             }
                                             else
                                             {
                                                §§goto(addr195);
                                             }
                                          }
                                          §§goto(addr155);
                                       case 5:
                                          §§push(§4"F§.§4S§);
                                          if(_loc12_)
                                          {
                                             if(!_loc13_)
                                             {
                                                if(_loc12_)
                                                {
                                                   addr124:
                                                   _loc2_ = Number(§§pop());
                                                   if(_loc12_)
                                                   {
                                                      if(!(_loc12_ || _loc3_))
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                      else
                                                      {
                                                         addr84:
                                                      }
                                                      §§goto(addr417);
                                                   }
                                                   §§goto(addr428);
                                                }
                                                else
                                                {
                                                   §§goto(addr194);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr155);
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr124);
                                       case 6:
                                          addr89:
                                          §§push(§4"F§.§9!^§);
                                          if(!_loc13_)
                                          {
                                             if(_loc12_ || _loc3_)
                                             {
                                                if(!_loc13_)
                                                {
                                                   addr101:
                                                   §§push(Number(§§pop()));
                                                   if(_loc12_ || _loc1_)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         §§goto(addr417);
                                                         addr111:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr417);
                                                   }
                                                   §§goto(addr179);
                                                }
                                                else
                                                {
                                                   §§goto(addr210);
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                          else
                                          {
                                             §§goto(addr124);
                                          }
                                       case 7:
                                          §§push(§4"F§.§=!B§);
                                          if(!_loc13_)
                                          {
                                             if(_loc12_ || _loc3_)
                                             {
                                                if(_loc12_)
                                                {
                                                   addr70:
                                                   _loc2_ = Number(§§pop());
                                                   if(_loc12_)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         if(_loc12_ || _loc2_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr84);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr204);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr111);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr89);
                                                }
                                                §§goto(addr428);
                                             }
                                             §§goto(addr101);
                                          }
                                          §§goto(addr70);
                                       default:
                                          §§goto(addr211);
                                    }
                                    var _loc3_:Vector.<§;!M§> = §§pop().§ L§;
                                    if(_loc12_ || _loc3_)
                                    {
                                       if(_loc3_.length > 0)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §§push(5);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(§§pop() + Math.random() * 10);
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop3:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(8);
                                                         loop5:
                                                         for(; !_loc13_; if(!(_loc12_ || _loc3_))
                                                         {
                                                            continue;
                                                         },if(_loc13_)
                                                         {
                                                            continue loop1;
                                                         },if(§§pop() >= _loc4_)
                                                         {
                                                            if(!(_loc12_ || _loc1_))
                                                            {
                                                               §§goto(addr483);
                                                            }
                                                            §§goto(addr477);
                                                         },§§push(Math.random() * (Math.PI * 2)),loop18:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop19:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr683:
                                                               while(true)
                                                               {
                                                                  §§push(0.5);
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc12_)
                                                                     {
                                                                        addr648:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc13_ && _loc1_))
                                                                        {
                                                                           §§push(_loc5_);
                                                                        }
                                                                        if(!(_loc13_ && _loc2_))
                                                                        {
                                                                           if(_loc12_ || _loc1_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              continue loop0;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr648);
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr701);
                                                            }
                                                         })
                                                         {
                                                            _loc5_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr701:
                                                                  while(!(_loc13_ && _loc1_))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     while(!_loc13_)
                                                                     {
                                                                        §§push(0);
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr687:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop7;
                                                                                 addr490:
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        addr580:
                                                                        if(_loc13_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc7_++;
                                                                        while(_loc13_ && _loc3_)
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(_loc12_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr580);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr687);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(§#6§.§6!z§.particles);
                                                                                    §§push(§'G§.§`!O§);
                                                                                    §§push(§^!f§.§>"F§);
                                                                                    §§push(§'G§.§+";§);
                                                                                    §§push(§#6§.§6!z§.slingshot.§,!k§);
                                                                                    §§push(§#6§.§6!z§.slingshot.§!Q§);
                                                                                    §§push(1250);
                                                                                    §§push("");
                                                                                    §§push(§'G§.§,">§(_loc10_));
                                                                                    §§push(_loc9_);
                                                                                    if(_loc12_ || this)
                                                                                    {
                                                                                       §§push(§§pop() * Math.cos(_loc8_));
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr528:
                                                                                          §§push(_loc6_);
                                                                                          if(_loc12_ || _loc1_)
                                                                                          {
                                                                                             addr537:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             §§push(_loc9_);
                                                                                             if(!(_loc13_ && _loc2_))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc12_ || _loc2_)
                                                                                                {
                                                                                                   addr553:
                                                                                                   §§push(§§pop() * Math.sin(_loc8_));
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push(§§pop() * _loc6_);
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                       §§goto(addr537);
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                                 addr618:
                                                                              }
                                                                           }
                                                                           §§goto(addr587);
                                                                        }
                                                                        addr587:
                                                                        §§goto(addr490);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr477:
                                       return;
                                    }
                                    §§goto(addr687);
                                 }
                                 §§goto(addr413);
                              }
                              else
                              {
                                 addr281:
                                 §§push(2);
                                 if(_loc12_ || this)
                                 {
                                    §§goto(addr289);
                                 }
                                 else
                                 {
                                    addr378:
                                    §§goto(addr413);
                                 }
                              }
                              §§goto(addr413);
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(_loc12_)
                              {
                                 §§push(_loc11_);
                                 if(_loc12_ || _loc2_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          addr388:
                                          §§push(6);
                                          if(!(_loc13_ && this))
                                          {
                                             addr396:
                                          }
                                          else
                                          {
                                             addr408:
                                          }
                                          §§goto(addr413);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(!_loc13_)
                                       {
                                          addr293:
                                          §§push(_loc11_);
                                          if(_loc12_)
                                          {
                                             addr296:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc13_ && _loc1_))
                                                {
                                                   §§push(3);
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr413);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr340);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr388);
                                                }
                                                §§goto(addr413);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc12_ || this)
                                                {
                                                   addr316:
                                                   §§push(_loc11_);
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      addr324:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc13_ && _loc1_))
                                                         {
                                                            §§goto(addr332);
                                                         }
                                                         else
                                                         {
                                                            addr370:
                                                            §§push(5);
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               §§goto(addr378);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr396);
                                                            }
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(_loc12_ || this)
                                                         {
                                                            addr359:
                                                            §§push(_loc11_);
                                                            if(_loc12_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc12_ || _loc2_)
                                                                  {
                                                                     §§goto(addr370);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr388);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_ORANGE");
                                                                  if(_loc12_)
                                                                  {
                                                                     addr382:
                                                                     §§push(_loc11_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr385:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§goto(addr388);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr399:
                                                                           if("BIRD_VANTERRENCE" !== _loc11_)
                                                                           {
                                                                              §§goto(addr413);
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr413);
                                                                        §§goto(addr413);
                                                                     }
                                                                     §§goto(addr399);
                                                                  }
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                   }
                                                   §§goto(addr385);
                                                }
                                                §§goto(addr399);
                                             }
                                          }
                                          §§goto(addr324);
                                       }
                                       §§goto(addr316);
                                    }
                                    §§goto(addr413);
                                 }
                                 §§goto(addr385);
                              }
                              §§goto(addr382);
                           }
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr413);
               }
               §§goto(addr324);
            }
            §§goto(addr359);
         }
         §§goto(addr388);
      }
      
      private function §?!§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(!(_loc8_ && _loc1_))
         {
            §>!E§.§7N§("Wood_Destroyed1","ChannelPowerups");
            if(!(_loc8_ && _loc3_))
            {
               addr47:
               §§push(§#6§.§6!z§);
               if(!(_loc8_ && _loc1_))
               {
                  §§push(§§pop().slingshot);
                  if(!(_loc8_ && this))
                  {
                     (§§pop() as §>"7§).§!!2§();
                     addr69:
                     §§push(§#6§.§6!z§.slingshot);
                  }
                  var _loc1_:Vector.<§;!M§> = §§pop().§ L§;
                  if(_loc9_ || _loc2_)
                  {
                     if(_loc1_.length > 0)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(50);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() + Math.random() * 5);
                              loop2:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       §§push(8);
                                       loop5:
                                       for(; _loc9_; while(_loc9_ || _loc1_)
                                       {
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc9_ || _loc1_)
                                             {
                                                _loc4_ = §§pop();
                                                while(_loc9_ || _loc3_)
                                                {
                                                   continue loop0;
                                                   _loc5_ = §§pop();
                                                   if(_loc8_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr270);
                                                }
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          continue loop1;
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr262);
                                       })
                                       {
                                          _loc3_ = §§pop();
                                          do
                                          {
                                             continue loop5;
                                          }
                                          while(_loc8_ && _loc2_);
                                          
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc5_ >= _loc2_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc8_ && _loc1_))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(0.2);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(_loc3_);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     continue loop10;
                                                                  }
                                                                  addr255:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§push(§§pop() + §§pop() * (Math.random() * 0.8));
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         addr243:
                                                         _loc7_ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§#6§.§6!z§.particles);
                                                            §§push(§'G§.§"!z§);
                                                            §§push(§^!f§.§>"F§);
                                                            §§push(§'G§.§+";§);
                                                            §§push(§#6§.§6!z§.slingshot.§,!k§);
                                                            §§push(§#6§.§6!z§.slingshot.§!Q§);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               §§push(Math.random() * 6);
                                                               if(!_loc8_)
                                                               {
                                                                  addr135:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(1250 + Math.random() * 500);
                                                               }
                                                               §§push("");
                                                               §§push(§'G§.§3!k§);
                                                               §§push(_loc7_);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() * Math.cos(_loc6_));
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr153:
                                                                     §§push(_loc4_);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr172:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           addr180:
                                                                           §§push(-§§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              addr183:
                                                                              §§push(§§pop() * Math.sin(_loc6_));
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() * _loc4_);
                                                                              }
                                                                           }
                                                                           §§push(5);
                                                                           §§push(_loc7_);
                                                                           if(_loc9_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop() * 20);
                                                                           }
                                                                           §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc4_));
                                                                           while(_loc8_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           _loc5_++;
                                                                           continue loop9;
                                                                           addr211:
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr153);
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr243);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr211);
                                             }
                                             else
                                             {
                                                §§push(Math.random() * (Math.PI * 2));
                                             }
                                             §§goto(addr255);
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           if(!(_loc9_ || _loc1_))
                           {
                              continue;
                           }
                           §§goto(addr327);
                        }
                     }
                     return;
                  }
                  §§goto(addr333);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr47);
      }
      
      private function §'!z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §>!E§.§7N§("Menu_Confirm","ChannelPowerups");
         }
         do
         {
            §§push(this.§,?§);
            §§push(this.§,?§.enabled);
            if(!(_loc2_ && _loc1_))
            {
               §§push(!§§pop());
            }
            §§pop().enabled = §§pop();
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §9d§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Point = this.§,!c§.§"!J§();
         _loc1_ = §#6§.§6!z§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§&!r§ = §#6§.§6!z§.§<f§.§;R§();
         if(!_loc5_)
         {
            if(_loc2_ == null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr49);
               }
            }
            else
            {
               this.§<"§ = §>!E§.§7N§("Powerup_Bomb_Fuse","ChannelPowerups");
            }
            §§push(_loc2_.§`!n§);
            if(!(_loc5_ && this))
            {
               §§push(Math.random() - 0.5);
               if(_loc6_)
               {
                  §§push(§§pop() * §4"F§.§1U§);
               }
               §§push(§§pop() + §§pop());
               if(_loc6_ || this)
               {
                  addr94:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(§#6§.§6!z§.camera.§<p§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               if(_loc6_)
               {
                  this.§,]§ = this.§7?§().§?!6§(_loc3_,_loc4_,0);
                  while(true)
                  {
                     this.§,]§.§"!`§ = true;
                  }
                  addr175:
               }
               while(true)
               {
                  §§push(this);
                  §§push(§4"F§.§05§);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§"!h§ = §§pop();
                  for(; _loc6_ || this; this.§,!c§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0"7§),if(!(_loc5_ && _loc2_))
                  {
                     return;
                  })
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr175);
                  }
               }
            }
            §§goto(addr94);
         }
         addr49:
      }
      
      private function §^!@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&!r§ = null;
         if(_loc5_ || _loc1_)
         {
            this.§,!c§.§'"8§(Math.round(1000 * §4!`§.§%!E§ * §4"F§.§1"#§));
         }
         while(true)
         {
            §>!E§.§7N§("Powerup_Earthquake","ChannelPowerups");
            loop1:
            while(!_loc4_)
            {
               do
               {
                  this.§5!Z§ = 0;
                  while(_loc5_ || _loc1_)
                  {
                     this.§0"%§ = Math.random() * (Math.PI * 2);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr40);
                  }
                  continue loop1;
               }
               while(false);
               
               §§push(§#6§.§6!z§.objects.§'1§());
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               var _loc2_:int = 0;
               while(_loc2_ < _loc1_)
               {
                  _loc3_ = §#6§.§6!z§.objects.§!!A§(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(_loc3_ is §&!g§);
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr184:
                              while(true)
                              {
                                 §§push(_loc3_ is §="$§);
                                 addr159:
                                 while(!_loc4_)
                                 {
                                 }
                                 continue loop5;
                              }
                           }
                           addr183:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 _loc3_.§=!y§().SetAwake(true);
                                 loop11:
                                 while(true)
                                 {
                                    addr129:
                                    while(true)
                                    {
                                       §§push(_loc3_ is §="$§);
                                       if(!_loc4_)
                                       {
                                          if(_loc5_ || _loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                loop13:
                                                while(!(_loc4_ && _loc2_))
                                                {
                                                   (_loc3_ as §="$§).§4!B§();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      addr112:
                                                      while(true)
                                                      {
                                                         _loc2_++;
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr112);
                                          }
                                          else
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr159);
                                 }
                              }
                           }
                           §§goto(addr112);
                        }
                     }
                  }
                  §§goto(addr127);
               }
               if(_loc5_ || this)
               {
                  this.§^!m§ = new §;x§(§4"F§.§ =§,§4"F§.§`"E§);
               }
               return;
            }
         }
      }
      
      private function §9"2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;!M§ = null;
         var _loc1_:§2a§ = §#6§.§6!z§.slingshot;
         if(_loc5_ || this)
         {
            if(_loc1_.§ L§.length > 0)
            {
               addr37:
               _loc3_ = _loc1_.§ L§[_loc1_.§6!m§];
               if(_loc5_)
               {
                  §§push(_loc1_.§ L§.length <= 1);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        loop25:
                        while(true)
                        {
                           §§pop();
                           addr122:
                           while(true)
                           {
                              §§push(Boolean(_loc3_));
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop25;
                           }
                        }
                        addr121:
                     }
                     loop22:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    _loc3_.§'!5§();
                                 }
                                 addr81:
                              }
                              while(_loc5_ || _loc3_)
                              {
                                 this.§&$§ = (_loc3_ as §`7§).§4!]§(_loc3_.§1!s§,_loc3_.§@!v§);
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(_loc4_ && _loc2_)
                                 {
                                    addr98:
                                    if(!_loc4_)
                                    {
                                       break loop22;
                                    }
                                    continue loop22;
                                 }
                                 if(false)
                                 {
                                    addr74:
                                 }
                                 §§goto(addr123);
                              }
                              addr111:
                              §§goto(addr74);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr98);
                     }
                     this.§&$§ = (_loc3_ as §`7§).§4!]§(_loc3_.§1!s§,_loc3_.§@!v§,false);
                     §§goto(addr111);
                  }
                  §§goto(addr121);
               }
               §§goto(addr81);
            }
            addr123:
            §§push(§#6§.§6!z§.slingshot);
            §§push("BIRD_VANTERRENCE");
            §§push(_loc1_.§,!k§);
            if(_loc5_ || _loc1_)
            {
               §§push(0.7);
               if(_loc5_ || _loc2_)
               {
                  §§goto(addr145);
               }
               §§goto(addr149);
            }
            addr145:
            §§push(§§pop() + §§pop());
            §§push(_loc1_.§!Q§);
            if(!_loc4_)
            {
               addr149:
               §§push(§§pop() + 0.1);
            }
            var _loc2_:§;!M§ = §§pop().§=M§(§§pop(),§§pop(),§§pop());
            if(_loc5_)
            {
               §>!E§.§7N§("Extra_Bird_powerup");
               while(true)
               {
                  §§push(§#6§.§6!z§);
                  loop1:
                  while(true)
                  {
                     (§§pop().§%!B§() as §^"1§).§-6§();
                     addr346:
                     while(true)
                     {
                        §§push(§#6§.§6!z§);
                        continue loop1;
                     }
                  }
               }
               addr350:
            }
            while(true)
            {
               §§push(§#6§.§6!z§);
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§§pop().particles);
                  if(!_loc4_)
                  {
                     §§push("HALLOWEEN_EXTRABIRD_SPARKLE");
                     if(_loc5_ || _loc1_)
                     {
                        §§push(§'G§.§"!z§);
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(§^!f§.§>"F§);
                           if(!(_loc4_ && this))
                           {
                              §§push(§'G§.§+";§);
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(_loc2_.x);
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(_loc2_.y);
                                    if(!_loc4_)
                                    {
                                       §§push(500);
                                       if(_loc5_)
                                       {
                                          §§push("");
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(0);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            §§push(2);
                                                            if(_loc5_)
                                                            {
                                                               §§push(20);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§pop().§4!P§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr350);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr330);
                                          }
                                          §§goto(addr329);
                                       }
                                       §§goto(addr328);
                                    }
                                    §§goto(addr327);
                                 }
                                 §§goto(addr325);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr321);
                        }
                        §§goto(addr309);
                     }
                     §§goto(addr307);
                  }
                  §§goto(addr306);
               }
               §§goto(addr298);
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function §7?§() : §1!Q§
      {
         return §#6§.§6!z§.§<f§ as §1!Q§;
      }
      
      public function § !2§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(§>,§.§^Q§.§]6§);
               if(!(_loc4_ && this))
               {
                  §§push(_loc3_);
                  if(_loc5_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           addr123:
                           §§push(0);
                           if(_loc5_)
                           {
                              addr235:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§,"F§(this.§"!?§,false);
                                    addr284:
                                    this.§?K§(param1);
                                    loop0:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §?!F§.§;"§.§ !2§(param1);
                                          continue loop0;
                                       }
                                    }
                                    break;
                                    addr77:
                                 case 1:
                                    this.§,"F§(this.§?!§,false);
                                    if(_loc5_)
                                    {
                                       if(!(_loc5_ || param1))
                                       {
                                          §§goto(addr77);
                                       }
                                       §§goto(addr284);
                                    }
                                    break;
                                 case 2:
                                    this.§,"F§(this.§'!z§,true);
                                    if(_loc5_)
                                    {
                                       addr30:
                                       §§goto(addr284);
                                    }
                                    §§goto(addr283);
                                 case 3:
                                    this.§,"F§(this.§^!@§,true);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr284);
                                    }
                                    break;
                                 case 4:
                                    this.§,"F§(this.§9"2§,false);
                                    if(!_loc4_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr30);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr283);
                                 default:
                                    §§goto(addr284);
                              }
                              continue loop4;
                           }
                        }
                        else
                        {
                           addr158:
                           §§push(1);
                           if(_loc4_ && param1)
                           {
                           }
                        }
                        §§goto(addr235);
                     }
                     else
                     {
                        §§push(§>,§.§7!C§.§]6§);
                        if(_loc5_)
                        {
                           addr132:
                           §§push(_loc3_);
                           if(_loc5_ || _loc2_)
                           {
                              addr150:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    addr213:
                                    §§push(3);
                                    if(!_loc5_)
                                    {
                                       addr230:
                                    }
                                    §§goto(addr235);
                                 }
                              }
                              else
                              {
                                 §§push(§>,§.§%!X§.§]6§);
                                 if(_loc5_ || this)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(2);
                                             if(!_loc5_)
                                             {
                                             }
                                             §§goto(addr235);
                                          }
                                          else
                                          {
                                             §§goto(addr213);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§>,§.§&m§.§]6§);
                                          if(!(_loc4_ && param1))
                                          {
                                             addr197:
                                             §§push(_loc3_);
                                             if(!(_loc4_ && param1))
                                             {
                                                addr205:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§goto(addr213);
                                                   }
                                                }
                                                else
                                                {
                                                   addr221:
                                                   if(§>,§.§," §.§]6§ !== _loc3_)
                                                   {
                                                      §§goto(addr235);
                                                      §§push(5);
                                                   }
                                                }
                                                §§goto(addr235);
                                                §§goto(addr235);
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr197);
                     }
                  }
                  §§goto(addr150);
               }
               §§goto(addr132);
            }
            §§goto(addr123);
         }
         var _loc2_:String = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §+!B§.§@§(param1,_loc2_);
         }
         return true;
      }
      
      public function §?K§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = (§#6§.§6!z§ as §2K§).§[v§();
         var _loc3_:§0]§ = new §0]§();
         if(!(_loc6_ && param1))
         {
            _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc4_:§^d§ = new §^d§(param1,_loc2_,_loc3_);
         if(_loc5_ || _loc2_)
         {
            if(this.§;$§ == null)
            {
               this.§[!J§(_loc4_);
               if(_loc5_ || param1)
               {
                  if(_loc6_ && this)
                  {
                     addr102:
                     this.§,!i§.push(_loc4_);
                     addr106:
                  }
                  return;
               }
               §§goto(addr106);
            }
         }
         §§goto(addr102);
      }
      
      protected function §[!J§(param1:§^d§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(LevelManager.§'!O§);
         if(_loc9_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(§ <§.§2!V§(_loc2_));
         if(!_loc10_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         if((_loc4_ = §,!C§.§;"§.§-&§.indexOf(_loc2_)) > -1)
         {
            if(_loc9_ || _loc3_)
            {
               _loc3_ = String(§,!C§.§;"§.§8!z§(_loc2_));
            }
         }
         var _loc5_:§>x§;
         if(_loc5_ = LevelManager.§^_§(_loc2_))
         {
            §§push(_loc5_.name);
            if(_loc9_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc10_ && _loc2_))
               {
                  addr85:
                  §§push(§§pop());
                  addr83:
               }
               var _loc6_:* = §§pop();
               §§push(AngryBirdsFP11.§76§);
               if(_loc9_)
               {
                  §§push(§§pop() + "/useitem/");
                  if(!_loc10_)
                  {
                     §§push(param1.§6!$§);
                     if(_loc9_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc9_ || this)
                        {
                           §§push("/");
                           if(!_loc10_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc9_)
                              {
                                 §§push(LevelManager.§'!O§);
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    addr132:
                                    §§push(§§pop() + §§pop());
                                    if(_loc9_)
                                    {
                                       §§push("/");
                                       if(_loc9_)
                                       {
                                          addr138:
                                          §§push(§§pop() + §§pop());
                                          if(_loc9_)
                                          {
                                             addr141:
                                             §§push(_loc6_);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§push("/");
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      addr160:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc10_)
                                                         {
                                                            addr166:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr174:
                                                               §§push("/");
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     addr192:
                                                                     §§push(§§pop() + §2!e§.§#!W§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr196:
                                                                        addr195:
                                                                        §§push(§§pop() + "/");
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                        }
                                                                        addr212:
                                                                        var _loc7_:String = §§pop();
                                                                        var _loc8_:URLRequest = §-!l§.§%""§(_loc7_);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           this.§;$§ = param1;
                                                                           while(true)
                                                                           {
                                                                              this.§+!E§(param1.§1!e§);
                                                                              loop1:
                                                                              while(!_loc10_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§1!e§.load(_loc8_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr255);
                                                                        addr211:
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§push(§§pop() + escape(JSON.stringify(param1.§#"A§)));
                                                               }
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr192);
               }
               §§goto(addr212);
            }
            §§goto(addr83);
         }
         else
         {
            §§push("unknownEpisode");
         }
         §§goto(addr85);
      }
      
      protected function §+!E§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!Z§(param1);
            while(true)
            {
               param1.addEventListener(Event.COMPLETE,this.§#!4§);
               while(_loc2_ || param1)
               {
                  param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!u§);
                  loop3:
                  for(; _loc2_; param1.addEventListener(§+!D§.§25§,this.§-!u§),if(!(_loc3_ && param1))
                  {
                     return;
                  })
                  {
                     addr57:
                     if(!(_loc3_ && _loc2_))
                     {
                        continue;
                     }
                     addr97:
                     while(true)
                     {
                        param1.addEventListener(IOErrorEvent.IO_ERROR,this.§-!u§);
                        break loop3;
                        §§goto(addr57);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      protected function §<!Z§(param1:URLLoader) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.removeEventListener(Event.COMPLETE,this.§#!4§);
            while(true)
            {
               param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!u§);
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!u§);
            do
            {
               param1.removeEventListener(§+!D§.§25§,this.§-!u§);
            }
            while(_loc3_);
            
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
      
      protected function §#!4§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(_loc5_)
                     {
                        continue loop0;
                        addr52:
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§pop().§§slot[3] = false;
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              continue loop3;
                           }
                           if(!(_loc5_ || param1))
                           {
                              continue loop1;
                           }
                           if(false)
                           {
                              loop7:
                              while(true)
                              {
                                 this.§;$§ = null;
                                 addr50:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr52);
                                    }
                                    else
                                    {
                                       while(_loc5_ || param1)
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          this.§<!Z§(request.§1!e§);
                                          §§goto(addr59);
                                       }
                                       addr59:
                                       addr82:
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 §§pop().§§slot[4] = JSON.parse(request.§1!e§.data);
                                 if(_loc5_ || param1)
                                 {
                                    addr189:
                                    §§push(Boolean(response.allowed));
                                    if(!(_loc4_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          addr201:
                                          §§pop();
                                          addr202:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             addr165:
                                             §§push(§§pop().§§slot[4].playSessionToken == §2!e§.§#!W§);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr180:
                                                   §§push(!§§pop());
                                                }
                                                §§goto(addr201);
                                             }
                                             if(§§pop())
                                             {
                                                addr182:
                                                §2!e§.§#!W§ = response.playSessionToken;
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = true;
                                                   if(_loc5_)
                                                   {
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         §§goto(addr182);
                                                      }
                                                      addr237:
                                                      this.§<!R§(allowed);
                                                      addr241:
                                                      return;
                                                      addr213:
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr201);
                                                addr187:
                                             }
                                             §%?§.§6!7§();
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr165);
                           }
                           catch(e:Error)
                           {
                              var _loc3_:* = e;
                              if(_loc5_ || _loc3_)
                              {
                                 var allowed:Boolean = false;
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr50);
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      protected function §-!u§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^d§ = this.§;$§;
         if(!_loc3_)
         {
            this.§<!Z§(_loc2_.§1!e§);
            do
            {
               this.§;$§ = null;
               do
               {
                  if(param1.type != §+!D§.§25§)
                  {
                     this.§<!R§(false);
                     if(_loc4_ || param1)
                     {
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        addr93:
                     }
                  }
                  continue;
                  return;
               }
               while(!(_loc4_ || _loc3_));
               
            }
            while(_loc3_ && param1);
            
            §%?§.§6!7§(§-d§.§]x§);
         }
         §§goto(addr93);
      }
      
      protected function §<!R§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^d§ = null;
         if(!(_loc3_ && _loc2_))
         {
            if(!param1)
            {
               if(!(_loc3_ && this))
               {
                  §%?§.§4!>§();
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr94);
               }
            }
            if(this.§,!i§.length > 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_ = this.§,!i§.shift();
                  if(!_loc3_)
                  {
                     this.§[!J§(_loc2_);
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         addr94:
      }
      
      public function get §6I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;$§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,!c§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,!c§);
                     while(true)
                     {
                        §§pop().mouseEnabled = true;
                        while(true)
                        {
                           §§push(this.§,!c§);
                           if(_loc1_ && this)
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              §§pop().removeEventListener(MouseEvent.MOUSE_DOWN,this.§0"7§);
                              while(_loc2_)
                              {
                              }
                              continue;
                              addr158:
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr164:
               }
               while(true)
               {
                  this.§5!Z§ = -1;
                  while(true)
                  {
                     this.§"!h§ = -1;
                     loop7:
                     for(; _loc2_ || this; if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     },§§goto(addr62))
                     {
                        if(!_loc1_)
                        {
                           this.§9r§ = -1;
                           loop8:
                           while(true)
                           {
                              this.§^!m§ = null;
                              loop9:
                              while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop8;
                                 }
                                 this.§,]§ = null;
                                 loop10:
                                 while(_loc2_ || _loc2_)
                                 {
                                    this.§]!$§ = null;
                                    loop11:
                                    while(true)
                                    {
                                       this.§&=§ = [];
                                       do
                                       {
                                          §§push(this.§<"§);
                                          if(_loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr25);
                                             }
                                             while(true)
                                             {
                                                §§push(this.§<"§);
                                             }
                                             addr50:
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             §§pop().stop();
                                             while(_loc2_)
                                             {
                                                continue loop7;
                                                this.§<"§ = null;
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break loop14;
                                                   }
                                                   continue loop14;
                                                }
                                             }
                                             continue loop11;
                                          }
                                       }
                                       while(_loc1_);
                                       
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop9;
                                          }
                                          addr25:
                                       }
                                       continue loop10;
                                       return;
                                    }
                                 }
                                 §§goto(addr164);
                              }
                           }
                           addr111:
                        }
                        §§goto(addr158);
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §<!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§&$§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§&$§);
                     addr70:
                     while(true)
                     {
                        §§pop().§?"3§();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
   }
}
