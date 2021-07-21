package §>X§
{
   import §%c§.§=!X§;
   import §&"'§.§7!E§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@!I§ extends Sprite
   {
      
      public static const §;0§:int = 0;
      
      public static const §<!-§:int = 1;
      
      public static const §`N§:int = 2;
      
      public static const §4"5§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §@!I§))
         {
            §;0§ = 0;
            while(true)
            {
               §<!-§ = 1;
               while(_loc1_)
               {
                  §`N§ = 2;
                  do
                  {
                     §4"5§ = 3;
                  }
                  while(!_loc1_);
                  
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private const §&!u§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §<W§:Number = 25;
      
      private const §2a§:Number = 10;
      
      private const §2!Q§:Number = 9;
      
      private var §`0§:int;
      
      private var §5"+§:int;
      
      private var §,f§:Array;
      
      private var §2"&§:Array;
      
      private var §&`§:Point;
      
      private var §!!w§:int;
      
      private var §0!<§:Number;
      
      public function §@!I§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "ParticleStar")
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§;!&§ = null;
         if(_loc12_)
         {
            super();
            while(true)
            {
               this.§`0§ = param1 * §=!X§.§@"6§;
               while(!_loc11_)
               {
                  this.§5"+§ = param2 * §=!X§.§ !4§;
                  while(true)
                  {
                     this.scrollRect = new Rectangle(0,0,this.§`0§,this.§5"+§);
                  }
                  addr35:
                  if(_loc12_ || this)
                  {
                     if(false)
                     {
                        loop6:
                        while(true)
                        {
                           this.§,f§ = [];
                           do
                           {
                              this.§2"&§ = [];
                           }
                           while(_loc11_);
                           
                           if(_loc12_)
                           {
                              if(_loc12_)
                              {
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§goto(addr35);
                              }
                              while(true)
                              {
                                 this.§&`§ = new Point(param3,param4);
                              }
                              addr63:
                           }
                           while(true)
                           {
                              if(!_loc11_)
                              {
                                 continue loop6;
                              }
                              else
                              {
                                 addr75:
                              }
                              while(true)
                              {
                                 this.§!!w§ = param5;
                                 §§goto(addr63);
                              }
                              continue loop6;
                           }
                        }
                        §§goto(addr83);
                     }
                     var _loc10_:int = 0;
                     addr195:
                     if(_loc10_ < param6)
                     {
                        §§push(param8);
                        if(_loc12_)
                        {
                           §§push(§;!&§.§9G§);
                           if(!(_loc11_ && this))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    _loc9_ = new §;!<§();
                                    if(!_loc11_)
                                    {
                                       addr148:
                                       _loc9_.x = -2000;
                                       if(!_loc11_)
                                       {
                                          _loc9_.y = -2000;
                                          this.addChild(_loc9_);
                                          addr183:
                                          if(_loc12_ || param3)
                                          {
                                             addr172:
                                             this.§,f§[_loc10_] = _loc9_;
                                             _loc10_++;
                                             if(_loc12_ || param1)
                                             {
                                                if(_loc12_ || this)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr183);
                                             }
                                             addr178:
                                             §§goto(addr178);
                                          }
                                          addr194:
                                          §§goto(addr194);
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr218);
                              }
                              addr134:
                              §§push(param8);
                              §§push(§;!&§.§3!O§);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc11_ && param3))
                              {
                                 _loc9_ = new §^!x§();
                                 §§goto(addr148);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr134);
                     }
                  }
                  continue;
                  if(_loc12_ || this)
                  {
                     this.§0!<§ = param7;
                  }
                  addr218:
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;!&§ = null;
         loop0:
         while(true)
         {
            §§push(this.§,f§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop().length <= 0)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§2"&§);
                        break loop0;
                     }
                     addr75:
                  }
                  §§goto(addr92);
               }
               §§push(this.§,f§);
               if(!_loc2_)
               {
                  _loc1_ = §§pop().shift();
                  if(_loc3_)
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               addr68:
               while(true)
               {
                  _loc1_ = §§pop().shift();
                  if(!_loc2_)
                  {
                     _loc1_.clean();
                  }
               }
               §§goto(addr75);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§push(this.§2"&§);
            if(_loc2_ && _loc2_)
            {
               continue;
            }
            §§goto(addr68);
         }
         if(_loc3_)
         {
            §§goto(addr92);
         }
         addr92:
         this.§,f§ = [];
         if(_loc3_)
         {
            this.§2"&§ = [];
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§;!&§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc16_ && param1))
         {
            §§push(this);
            §§push(this.§0!<§);
            if(!_loc16_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§0!<§ = §§pop();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(this.§0!<§);
               loop2:
               while(true)
               {
                  §§push(0);
                  loop3:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc15_ || _loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr71:
                           param1 = §§pop();
                           if(!(_loc15_ || param1))
                           {
                              continue;
                           }
                           if(!_loc15_)
                           {
                              continue loop0;
                           }
                           if(false)
                           {
                              continue loop1;
                           }
                           addr779:
                           §§push(this.§,f§);
                           if(_loc15_ || _loc2_)
                           {
                              addr788:
                              if(§§pop().length > 0)
                              {
                                 §§push(this.§,f§);
                                 if(!_loc16_)
                                 {
                                    _loc5_ = §§pop().shift();
                                    if(!_loc16_)
                                    {
                                       addr777:
                                       _loc6_ = Number(Math.random() * (this.§<W§ - this.§2a§) + this.§2a§);
                                       addr776:
                                       addr778:
                                       addr773:
                                       addr775:
                                       if(this.§!!w§ == §;0§)
                                       {
                                          if(_loc15_)
                                          {
                                             addr751:
                                             §§push(Math.PI / 2);
                                             if(!(_loc16_ && param1))
                                             {
                                                addr763:
                                                _loc7_ = Number(-§§pop() * Math.random());
                                                addr738:
                                                _loc8_ = Number(Math.sin(_loc7_ - Math.PI / 2));
                                                addr726:
                                                _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                                addr336:
                                                §§push(_loc5_);
                                                §§push(_loc8_);
                                                if(!(_loc16_ && _loc2_))
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§pop().§6U§ = §§pop();
                                                §§push(_loc5_);
                                                §§push(_loc9_);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§pop().§0!0§ = §§pop();
                                                addr739:
                                                addr764:
                                                addr349:
                                                addr762:
                                                addr759:
                                                addr727:
                                                if(!_loc16_)
                                                {
                                                   _loc5_.x = this.§&`§.x;
                                                   _loc5_.y = this.§&`§.y;
                                                   this.§2"&§.push(_loc5_);
                                                   addr294:
                                                   addr312:
                                                   if(!(_loc16_ && _loc2_))
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            addr250:
                                                            §§push(0.5);
                                                            if(_loc15_)
                                                            {
                                                               §§push(Math.random() * 1.5);
                                                               if(!_loc16_)
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           addr271:
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 addr286:
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(0.2);
                                                                                    if(!(_loc16_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(!(_loc16_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc15_ || this)
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr226:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc16_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     addr245:
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        addr149:
                                                                                                                        _loc5_.§#!T§ = §7!E§.§2=§.§<!C§(_loc5_,{
                                                                                                                           "scaleX":_loc11_,
                                                                                                                           "scaleY":_loc11_
                                                                                                                        },{
                                                                                                                           "scaleX":_loc10_,
                                                                                                                           "scaleY":_loc10_
                                                                                                                        },5);
                                                                                                                        if(!(_loc16_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc15_ || param1)
                                                                                                                              {
                                                                                                                                 _loc5_.§#!T§.play();
                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr149);
                                                                                                                                                }
                                                                                                                                                §§goto(addr779);
                                                                                                                                             }
                                                                                                                                             addr619:
                                                                                                                                             if(_loc15_ || param1)
                                                                                                                                             {
                                                                                                                                                addr630:
                                                                                                                                                addr634:
                                                                                                                                                addr633:
                                                                                                                                                §§push(Number(Math.PI / 2 * Math.random()));
                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                {
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   addr601:
                                                                                                                                                   _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                                                                                                                                   §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                      §§goto(addr336);
                                                                                                                                                      addr590:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr776);
                                                                                                                                                   addr602:
                                                                                                                                                   addr642:
                                                                                                                                                }
                                                                                                                                                addr702:
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr710:
                                                                                                                                                   §§push(§§pop() * 0.5);
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr714:
                                                                                                                                                      _loc7_ = Number(§§pop());
                                                                                                                                                      addr661:
                                                                                                                                                      _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                                                                                                                      addr662:
                                                                                                                                                      if(!(_loc16_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc16_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr651:
                                                                                                                                                               _loc9_ = Number(Math.cos(_loc7_ + Math.PI));
                                                                                                                                                               §§goto(addr336);
                                                                                                                                                               addr652:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr778);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr739);
                                                                                                                                                      }
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr702);
                                                                                                                                                         §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr764);
                                                                                                                                                      addr715:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr763);
                                                                                                                                                }
                                                                                                                                                §§goto(addr726);
                                                                                                                                             }
                                                                                                                                             §§goto(addr662);
                                                                                                                                          }
                                                                                                                                          §§goto(addr349);
                                                                                                                                       }
                                                                                                                                       §§goto(addr294);
                                                                                                                                    }
                                                                                                                                    §§goto(addr245);
                                                                                                                                 }
                                                                                                                                 §§goto(addr149);
                                                                                                                              }
                                                                                                                              §§goto(addr715);
                                                                                                                           }
                                                                                                                           §§goto(addr763);
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     §§goto(addr286);
                                                                                                                  }
                                                                                                                  §§goto(addr762);
                                                                                                               }
                                                                                                               §§goto(addr714);
                                                                                                            }
                                                                                                            addr373:
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr378:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!(_loc16_ && this))
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        addr393:
                                                                                                                        if(!(_loc16_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                           {
                                                                                                                              §§goto(addr763);
                                                                                                                           }
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        addr454:
                                                                                                                        if(!(_loc16_ && this))
                                                                                                                        {
                                                                                                                           addr357:
                                                                                                                           §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                           {
                                                                                                                              addr564:
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                              {
                                                                                                                                 §§goto(addr373);
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 addr575:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 addr517:
                                                                                                                                 addr576:
                                                                                                                                 §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                 if(_loc15_ || this)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    addr525:
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       addr496:
                                                                                                                                       _loc9_ = Number(Math.cos(_loc7_ + Math.PI));
                                                                                                                                       addr497:
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc16_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr465:
                                                                                                                                                §§push(this.§2a§);
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr475:
                                                                                                                                                      §§push(§§pop() / 2);
                                                                                                                                                      if(!(_loc16_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr484:
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr411:
                                                                                                                                                            §§push(this.§<W§);
                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(2);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc15_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc16_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr444:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(_loc15_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                 §§goto(addr454);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr661);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr651);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr444);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr475);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr759);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr484);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr727);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr575);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr601);
                                                                                                                                                }
                                                                                                                                                addr563:
                                                                                                                                                §§goto(addr564);
                                                                                                                                                §§push(0.5);
                                                                                                                                             }
                                                                                                                                             §§goto(addr642);
                                                                                                                                          }
                                                                                                                                          §§goto(addr590);
                                                                                                                                       }
                                                                                                                                       §§goto(addr563);
                                                                                                                                       §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                                    }
                                                                                                                                    §§goto(addr576);
                                                                                                                                 }
                                                                                                                                 §§goto(addr773);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr710);
                                                                                                                        }
                                                                                                                        §§goto(addr484);
                                                                                                                     }
                                                                                                                     §§goto(addr630);
                                                                                                                  }
                                                                                                                  §§goto(addr496);
                                                                                                               }
                                                                                                               §§goto(addr634);
                                                                                                            }
                                                                                                            §§goto(addr475);
                                                                                                         }
                                                                                                         §§goto(addr378);
                                                                                                      }
                                                                                                      §§goto(addr751);
                                                                                                   }
                                                                                                   §§goto(addr601);
                                                                                                }
                                                                                                §§goto(addr465);
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                          §§goto(addr250);
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 §§goto(addr497);
                                                                              }
                                                                              §§goto(addr633);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr775);
                                                               }
                                                               §§goto(addr564);
                                                            }
                                                            §§goto(addr738);
                                                         }
                                                         §§goto(addr525);
                                                      }
                                                      §§goto(addr393);
                                                   }
                                                   addr319:
                                                   §§goto(addr319);
                                                }
                                                §§goto(addr652);
                                             }
                                             §§goto(addr777);
                                          }
                                          §§goto(addr763);
                                       }
                                       addr685:
                                       §§push(this.§!!w§);
                                       §§push(§<!-§);
                                       if(_loc15_ || _loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr714);
                                          }
                                          addr608:
                                          §§push(this.§!!w§);
                                          if(!(_loc16_ && this))
                                          {
                                             addr616:
                                             §§push(§`N§);
                                             if(!_loc16_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   §§goto(addr619);
                                                }
                                                §§push(this.§!!w§);
                                                if(!(_loc16_ && param1))
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push(§4"5§);
                                                      if(!_loc16_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§goto(addr496);
                                                         }
                                                         §§goto(addr763);
                                                      }
                                                      §§goto(addr616);
                                                   }
                                                   §§goto(addr777);
                                                }
                                                §§goto(addr608);
                                             }
                                          }
                                          §§goto(addr685);
                                       }
                                       §§goto(addr777);
                                    }
                                    §§goto(addr763);
                                 }
                                 §§goto(addr788);
                              }
                              §§push(this.§2"&§);
                           }
                           var _loc2_:int = §§pop().length;
                           §§push(_loc2_);
                           if(!_loc16_)
                           {
                              §§push(int(§§pop() - 1));
                           }
                           var _loc4_:* = §§pop();
                           if(_loc15_ || this)
                           {
                              addr1087:
                              if(_loc4_ >= 0)
                              {
                                 _loc3_ = false;
                                 if(_loc15_)
                                 {
                                    addr815:
                                    _loc5_ = this.§2"&§[_loc4_];
                                    §§push(_loc5_);
                                    §§push(_loc5_.§0!0§);
                                    if(_loc15_ || param1)
                                    {
                                       §§push(this.GRAVITY);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§0!0§ = §§pop();
                                    if(!(_loc16_ && _loc3_))
                                    {
                                       if(_loc5_.§0!0§ > this.§2!Q§)
                                       {
                                          addr1018:
                                          _loc5_.§0!0§ = this.§2!Q§;
                                          if(_loc15_ || _loc3_)
                                          {
                                             addr1000:
                                             _loc5_.x += _loc5_.§6U§ * param1;
                                             addr1010:
                                             if(!_loc16_)
                                             {
                                                _loc5_.y += _loc5_.§0!0§ * param1;
                                                if(_loc15_ || _loc2_)
                                                {
                                                   _loc5_.rotation += 5 * param1;
                                                   addr981:
                                                   if(_loc5_.x < -_loc5_.width / 2)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            addr963:
                                                            _loc3_ = true;
                                                            addr964:
                                                            if(_loc15_ || _loc3_)
                                                            {
                                                               addr847:
                                                               §§push(this.§2"&§);
                                                               if(_loc15_ || this)
                                                               {
                                                                  §§push(§§pop().length > 0);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              §§pop();
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr885:
                                                                                       §§goto(addr847);
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr1034:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr1037:
                                                                                             addr1039:
                                                                                             if((_loc14_ = this.§2"&§.splice(_loc4_,1)) is §;!<§)
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   _loc14_.clean();
                                                                                                   if(_loc16_ && this)
                                                                                                   {
                                                                                                   }
                                                                                                   addr1067:
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc15_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   §§goto(addr1087);
                                                                                                }
                                                                                                §§goto(addr1067);
                                                                                             }
                                                                                             _loc5_.x = -2000;
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc5_.y = -2000;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1087);
                                                                                       }
                                                                                       §§goto(addr1067);
                                                                                    }
                                                                                    §§goto(addr1034);
                                                                                 }
                                                                                 addr916:
                                                                                 if(_loc15_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc16_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr847);
                                                                                    }
                                                                                    §§goto(addr964);
                                                                                 }
                                                                                 addr948:
                                                                                 §§goto(addr885);
                                                                              }
                                                                              §§goto(addr1037);
                                                                           }
                                                                        }
                                                                        §§goto(addr1034);
                                                                     }
                                                                     addr947:
                                                                     _loc3_ = §§pop();
                                                                     §§goto(addr948);
                                                                  }
                                                                  §§goto(addr1034);
                                                               }
                                                               §§goto(addr1039);
                                                            }
                                                            §§goto(addr981);
                                                         }
                                                         §§goto(addr1010);
                                                      }
                                                      §§goto(addr964);
                                                   }
                                                   if(_loc5_.x > this.§`0§ + _loc5_.width / 2)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         §§goto(addr947);
                                                         §§push(true);
                                                      }
                                                      §§goto(addr948);
                                                   }
                                                   if(_loc5_.y > this.§5"+§ + _loc5_.height / 2)
                                                   {
                                                      if(!(_loc16_ && _loc3_))
                                                      {
                                                         §§push(true);
                                                         if(_loc15_ || param1)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               §§goto(addr916);
                                                            }
                                                            §§goto(addr963);
                                                         }
                                                         §§goto(addr1034);
                                                      }
                                                      §§goto(addr1037);
                                                   }
                                                   §§goto(addr847);
                                                }
                                                §§goto(addr1087);
                                             }
                                             §§goto(addr1018);
                                          }
                                          §§goto(addr1087);
                                       }
                                       §§goto(addr1000);
                                    }
                                    §§goto(addr1037);
                                 }
                              }
                              return;
                           }
                           §§goto(addr815);
                        }
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(_loc15_ || _loc3_)
                        {
                           if(!_loc15_)
                           {
                              break;
                           }
                           §§push(20);
                           if(!_loc15_)
                           {
                              continue loop3;
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc15_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr71);
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
      }
   }
}
