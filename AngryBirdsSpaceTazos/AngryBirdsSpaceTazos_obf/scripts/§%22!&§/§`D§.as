package §"!&§
{
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §4&§.§ j§;
   import §4&§.§'!"§;
   import §7!8§.DisplayObject;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §]">§.§1!0§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`D§ extends §8X§
   {
       
      
      private var §3" §:Object;
      
      private var §?",§:Vector.<§ o§>;
      
      private var §9!C§:Number;
      
      private var §0!%§:Number;
      
      private var §>!5§:Number;
      
      private var §6$§:Number;
      
      private var §`!2§:Number;
      
      private var §%!e§:int;
      
      protected var §9"3§:§="D§;
      
      public function §`D§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:Object = null;
         if(_loc12_)
         {
            this.§?",§ = new Vector.<§ o§>();
            loop0:
            while(true)
            {
               this.§3" § = param1;
               loop1:
               for(; param3 != null; for(; _loc12_ || param2; for(; _loc12_ || this; loop4:
               while(!(_loc11_ && this))
               {
                  loop5:
                  while(true)
                  {
                     §§push(this);
                     if(!(_loc11_ && this))
                     {
                        if(param1.strength != undefined)
                        {
                           addr70:
                           §§push(Number(param1.strength));
                           if(_loc11_)
                           {
                           }
                        }
                        else
                        {
                           §§push(param3.strength);
                           if(_loc12_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().§6$§ = §§pop();
                        while(!_loc11_)
                        {
                           continue loop0;
                           §§pop().§`!2§ = §§pop();
                           if(_loc12_ || param3)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                     §§goto(addr70);
                  }
               })
               {
                  §§push(this);
                  if(_loc12_ || param2)
                  {
                     if(param1.restitution != undefined)
                     {
                        addr110:
                        §§push(Number(param1.restitution));
                        if(!_loc12_)
                        {
                           addr120:
                           §§push(Number(§§pop()));
                        }
                     }
                     else
                     {
                        §§push(param3.restitution);
                        if(!_loc11_)
                        {
                           §§goto(addr120);
                        }
                     }
                     §§pop().§>!5§ = §§pop();
                     continue;
                  }
                  §§goto(addr110);
               })
               {
                  §§push(this);
                  if(_loc12_ || param1)
                  {
                     if(param1.friction != undefined)
                     {
                        addr143:
                        §§push(Number(param1.friction));
                        if(!_loc12_)
                        {
                           addr153:
                           §§push(Number(§§pop()));
                        }
                     }
                     else
                     {
                        §§push(param3.friction);
                        if(!_loc11_)
                        {
                           §§goto(addr153);
                        }
                     }
                     §§pop().§0!%§ = §§pop();
                     continue;
                  }
                  §§goto(addr143);
               })
               {
                  if(_loc11_)
                  {
                     continue;
                  }
                  §§push(this);
                  if(!_loc11_)
                  {
                     if(param1.density != undefined)
                     {
                        addr176:
                        §§push(Number(param1.density));
                        if(_loc11_)
                        {
                        }
                     }
                     else
                     {
                        §§push(param3.density);
                        if(!(_loc11_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§9!C§ = §§pop();
                     continue;
                  }
                  §§goto(addr176);
               }
               var _loc7_:§]!<§;
               if(_loc7_ = param3 as §]!<§)
               {
                  if(_loc12_ || param2)
                  {
                     §§push(this);
                     if(_loc12_ || param3)
                     {
                        if(param1.z_order != undefined)
                        {
                           addr249:
                           §§push(int(param1.z_order));
                           if(_loc11_ && param1)
                           {
                              addr264:
                              §§push(int(§§pop()));
                           }
                        }
                        else
                        {
                           §§push(_loc7_.§&"=§);
                           if(_loc12_)
                           {
                              §§goto(addr264);
                           }
                        }
                        §§pop().§%!e§ = §§pop();
                        §§goto(addr266);
                     }
                     §§goto(addr249);
                  }
               }
               addr266:
               for each(_loc8_ in this.§3" §.damageSprites)
               {
                  if(_loc12_)
                  {
                     this.§?",§.push(new § o§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
                  }
               }
               if(!_loc11_)
               {
                  this.§?",§.sort(this.§<G§);
                  do
                  {
                     super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
                  }
                  while(!(_loc12_ || param3));
                  
               }
               return;
               if(!(_loc12_ || param1))
               {
                  continue;
               }
               while(true)
               {
                  §§push(this);
                  if(!(_loc11_ && this))
                  {
                     if(param1.defence != undefined)
                     {
                        addr36:
                        §§push(Number(param1.defence));
                        if(!_loc12_)
                        {
                           addr46:
                           §§push(Number(§§pop()));
                        }
                     }
                     else
                     {
                        §§push(param3.defence);
                        if(!_loc11_)
                        {
                           §§goto(addr46);
                        }
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr36);
               }
               addr96:
            }
         }
         §§goto(addr96);
      }
      
      public function playSoundLua(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this.§9"3§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(_loc4_ || param2)
                  {
                     addr62:
                     this.§9"3§.playSound(param1,param2,param3);
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      private function §<G§(param1:§ o§, param2:§ o§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param1.§]!V§);
            if(_loc3_ || this)
            {
               if(§§pop() > param2.§]!V§)
               {
                  if(!_loc4_)
                  {
                     §§push(-1);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     §§push(1);
                  }
               }
               §§goto(addr61);
            }
            return §§pop();
         }
         §§goto(addr61);
      }
      
      override public function get shape() : set
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§"!Y§ = null;
         var _loc9_:Array = null;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         §§push(0.92);
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc16_ && _loc3_))
         {
            if(!§?!g§)
            {
               loop0:
               while(true)
               {
                  §§push(b2Settings.§4I§);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop3:
                        while(this.isMaterialStatic)
                        {
                           if(!_loc17_)
                           {
                              loop5:
                              do
                              {
                                 if(!_loc16_)
                                 {
                                    §§push(0);
                                    if(!(_loc16_ && _loc1_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    addr180:
                                    if(_loc17_)
                                    {
                                       continue;
                                    }
                                    addr168:
                                    while(_loc17_ || _loc2_)
                                    {
                                       if(_loc17_)
                                       {
                                          _loc1_ = §§pop();
                                          continue loop5;
                                       }
                                       continue loop1;
                                       §§goto(addr180);
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              while(_loc5_ = §§pop(), !_loc17_);
                              
                           }
                           else
                           {
                              addr152:
                           }
                           continue loop0;
                        }
                        var _loc14_:* = String(this.§3" §.type).toLowerCase();
                        if(_loc17_ || _loc1_)
                        {
                           if("box" === _loc14_)
                           {
                              if(_loc17_)
                              {
                                 §§push(0);
                                 if(!_loc17_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr1006:
                                 §§push(1);
                                 if(_loc16_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              if("circle" === _loc14_)
                              {
                                 if(_loc17_ || _loc1_)
                                 {
                                    §§goto(addr1006);
                                 }
                                 else
                                 {
                                    addr1013:
                                    §§push(2);
                                    if(_loc16_ && _loc3_)
                                    {
                                    }
                                 }
                              }
                              else if("polygon" === _loc14_)
                              {
                                 §§goto(addr1013);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              §§goto(addr1013);
                           }
                           loop37:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(Boolean(this.§3" §.width));
                                 if(!(_loc16_ && _loc1_))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc17_ || this)
                                          {
                                             §§pop();
                                             if(!_loc16_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§3" §.height));
                                                   if(_loc17_ || _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            _loc2_ = this.§>!4§();
                                                            if(_loc17_)
                                                            {
                                                               §§push(_loc2_.width * §^g§.§5!-§);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc17_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(_loc2_.height * §^g§.§5!-§);
                                                                              if(_loc17_ || _loc3_)
                                                                              {
                                                                                 addr231:
                                                                                 §§push(§§pop() * _loc1_);
                                                                                 if(!(_loc16_ && _loc2_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            break;
                                                         }
                                                         if(_loc17_)
                                                         {
                                                            §§push(Number(this.§3" §.width));
                                                            if(!_loc16_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  §§push(Number(this.§3" §.height));
                                                                  if(!_loc16_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(_loc17_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              if(this.§3" §.radius)
                                                                              {
                                                                                 if(!(_loc16_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc17_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr342:
                                                                                    §§push(Number(this.§3" §.radius));
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(!(_loc16_ && _loc2_))
                                                                                       {
                                                                                          addr351:
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc17_ || _loc3_)
                                                                                          {
                                                                                             break;
                                                                                             addr359:
                                                                                          }
                                                                                          addr1038:
                                                                                          return §?!g§;
                                                                                          addr499:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr383:
                                                                                       }
                                                                                       §§push(_loc5_);
                                                                                       if(_loc17_ || this)
                                                                                       {
                                                                                          addr391:
                                                                                          §§push(§§pop() * 2);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr397:
                                                                                          _loc4_ = Number(§§pop());
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             §?!g§ = new §>!0§(_loc3_,_loc4_);
                                                                                             if(!(_loc16_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr1038);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr554:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(this.§3" §.width));
                                                                                                }
                                                                                                addr554:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1038);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(this.§3" §.height));
                                                                                             if(_loc16_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(_loc17_ || this)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   loop7:
                                                                                                   while(false)
                                                                                                   {
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(this.§3" §.height));
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            if(!(_loc17_ || this))
                                                                                                            {
                                                                                                               addr566:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr567:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        break loop37;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr566:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     §§goto(addr554);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     addr569:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc2_ = this.§>!4§();
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr702:
                                                                                                                     _loc3_ = Number(_loc2_.width * §^g§.§5!-§ * §=T§);
                                                                                                                  }
                                                                                                                  addr703:
                                                                                                                  §§push(_loc2_.height * §^g§.§5!-§ * §=T§);
                                                                                                                  if(!(_loc16_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr692:
                                                                                                                     _loc4_ = Number(§§pop());
                                                                                                                     addr623:
                                                                                                                     addr693:
                                                                                                                     §§push(this.getItemDensity());
                                                                                                                     if(_loc17_ || _loc1_)
                                                                                                                     {
                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr641:
                                                                                                                           if(§§pop() != 0)
                                                                                                                           {
                                                                                                                              if(!(_loc16_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr659:
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr658:
                                                                                                                                    §§push(§§pop() * _loc1_);
                                                                                                                                 }
                                                                                                                                 if(!(_loc16_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr667:
                                                                                                                                    _loc3_ = Number(§§pop());
                                                                                                                                    addr668:
                                                                                                                                    if(!(_loc16_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                if(_loc17_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr609:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr623);
                                                                                                                                                                        }
                                                                                                                                                                        break loop7;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr703);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr668);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr692);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr659);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr609);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr641);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr658);
                                                                                                                                                }
                                                                                                                                                §§goto(addr702);
                                                                                                                                             }
                                                                                                                                             §§goto(addr703);
                                                                                                                                          }
                                                                                                                                          §§goto(addr667);
                                                                                                                                       }
                                                                                                                                       §§goto(addr609);
                                                                                                                                    }
                                                                                                                                    §§goto(addr693);
                                                                                                                                 }
                                                                                                                                 §§goto(addr702);
                                                                                                                              }
                                                                                                                              §§goto(addr667);
                                                                                                                           }
                                                                                                                           break loop7;
                                                                                                                        }
                                                                                                                        §§goto(addr703);
                                                                                                                     }
                                                                                                                     §§goto(addr667);
                                                                                                                  }
                                                                                                                  §§goto(addr702);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         break loop37;
                                                                                                      }
                                                                                                   }
                                                                                                   _loc7_ = new Vector.<b2Vec2>(0);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      _loc14_ = 0;
                                                                                                      if(_loc17_ || this)
                                                                                                      {
                                                                                                         for each(_loc12_ in this.§3" §.vertices)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(((_loc9_ = (_loc8_ = new §"!Y§(_loc7_)).§<f§())[0].x + _loc9_[1].x) / 2);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         _loc10_ = §§pop();
                                                                                                         if(_loc17_ || _loc3_)
                                                                                                         {
                                                                                                            §§push((_loc9_[0].y + _loc9_[1].y) / 2);
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               addr809:
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr808:
                                                                                                               if(_loc17_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc14_ = 0;
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     loop12:
                                                                                                                     for each(_loc13_ in _loc7_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_.x);
                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(_loc13_.x);
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - _loc5_);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       loop13:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc13_.y);
                                                                                                                                          loop14:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             loop15:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(_loc13_.y);
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            break loop15;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  §§push(_loc13_.y);
                                                                                                                                                                  if(!(_loc16_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + _loc5_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                               addr930:
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc16_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc16_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop13;
                                                                                                                                                                  }
                                                                                                                                                                  addr936:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                     §§push(_loc13_.x);
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + _loc5_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr910:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr866:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         break loop15;
                                                                                                                                                      }
                                                                                                                                                      addr934:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr910);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                §§goto(addr936);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       §§push(_loc13_.y);
                                                                                                                                       if(!(_loc16_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - _loc5_);
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr930);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc13_.x);
                                                                                                                              }
                                                                                                                              §§goto(addr934);
                                                                                                                           }
                                                                                                                           §§goto(addr871);
                                                                                                                        }
                                                                                                                        §§goto(addr866);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §?!g§ = new §"!Y§(_loc7_);
                                                                                                            }
                                                                                                            §§goto(addr809);
                                                                                                         }
                                                                                                         §§goto(addr1038);
                                                                                                      }
                                                                                                      §§goto(addr809);
                                                                                                   }
                                                                                                   §§goto(addr808);
                                                                                                }
                                                                                                §§goto(addr1038);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr558:
                                                                                       §§goto(addr1038);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr365:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             continue loop27;
                                                                                          }
                                                                                       }
                                                                                       addr364:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr569);
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(!this.§3" §.width)
                                                                                 {
                                                                                    _loc2_ = this.§>!4§();
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       §§push(_loc2_.width * §^g§.§5!-§);
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §=T§);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(§§pop() / 2);
                                                                                             if(_loc17_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      addr454:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr457:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc17_ || _loc1_)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            if(_loc17_ || _loc2_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr482:
                                                                                                            _loc6_ = Number(§§pop());
                                                                                                            addr481:
                                                                                                            break;
                                                                                                         }
                                                                                                         addr478:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                         §§goto(addr482);
                                                                                                      }
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§goto(addr478);
                                                                                                         §§push(§§pop() * 2);
                                                                                                      }
                                                                                                      §§goto(addr478);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr457);
                                                                                             }
                                                                                             §§goto(addr482);
                                                                                          }
                                                                                          §§goto(addr454);
                                                                                       }
                                                                                       §§goto(addr482);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(this.§3" §.width / 2);
                                                                                    if(_loc17_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr307:
                                                                                                if(_loc17_ || _loc1_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop30;
                                                                                                      §§goto(addr307);
                                                                                                   }
                                                                                                   §§goto(addr554);
                                                                                                   addr314:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr397);
                                                                                                }
                                                                                                §§goto(addr1038);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr522);
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                    §§goto(addr522);
                                                                                 }
                                                                                 §§goto(addr532);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr483:
                                                                        §?!g§ = new §="A§(_loc6_,new Point(0,0));
                                                                        if(!(_loc16_ && this))
                                                                        {
                                                                           §§goto(addr499);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr532);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr267:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc17_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(_loc17_)
                                                                     {
                                                                        §§goto(addr383);
                                                                        §§push(_loc4_);
                                                                        addr273:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr532);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr351);
                                                                  }
                                                               }
                                                               §§goto(addr554);
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(2);
                                                            if(_loc17_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc17_ || _loc1_)
                                                               {
                                                                  addr264:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§goto(addr267);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                            }
                                                            §§goto(addr391);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr314);
                                                      }
                                                      addr84:
                                                   }
                                                   break loop37;
                                                }
                                                break;
                                             }
                                             §§goto(addr532);
                                          }
                                          §§goto(addr566);
                                       }
                                       §§goto(addr84);
                                    }
                                    §§goto(addr567);
                                 }
                                 break;
                              case 1:
                                 §§goto(addr364);
                              case 2:
                                 §§goto(addr566);
                              default:
                                 0;
                                 Boolean(this.§3" §.width);
                                 throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§3" §.type + "\' for item \'" + this.§3" §.definition + "\'.");
                           }
                           continue loop36;
                        }
                        §§goto(addr1013);
                     }
                  }
               }
            }
            §§goto(addr351);
         }
         §§goto(addr152);
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:§ o§ = null;
         if(!_loc8_)
         {
            if(this.§?",§.length == 0)
            {
               addr38:
               §§push([]);
               if(!(_loc8_ && _loc2_))
               {
                  _loc2_ = §§pop();
                  if(_loc9_)
                  {
                     if(this.§3" §.themeTexture)
                     {
                        addr54:
                        §§push([this.§3" §.themeTexture]);
                        if(!_loc8_)
                        {
                           _loc1_ = §§pop();
                        }
                        else
                        {
                           addr67:
                           _loc1_ = §§pop();
                        }
                        if(this.§3" §.animations)
                        {
                           §§push(§1!0§.§,!Y§);
                           if(_loc9_)
                           {
                              §§push([this.§ "+§(0,this.§3" §.animations[0])]);
                              if(!_loc8_)
                              {
                                 §§push(null);
                                 if(!_loc8_)
                                 {
                                    §§push(null);
                                    if(!_loc8_)
                                    {
                                       return §§pop();
                                    }
                                 }
                              }
                              else
                              {
                                 addr119:
                                 §§push(null);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    return null;
                                 }
                              }
                              return §§pop();
                           }
                           addr97:
                           §§push(["1",_loc1_,_loc2_]);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(null);
                           }
                           §§goto(addr119);
                        }
                        else
                        {
                           §§push(§1!0§.§,!Y§);
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        §§push([this.§3" §.sprite]);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr54);
               }
               else
               {
                  addr143:
                  §§push(null);
               }
            }
            else
            {
               §§push(["1",[this.§3" §.sprite]]);
               if(_loc9_ || _loc1_)
               {
                  §§goto(addr143);
               }
            }
            _loc3_ = §§pop();
            if(!(_loc8_ && _loc1_))
            {
               §§push(1);
               if(_loc9_ || _loc1_)
               {
                  _loc4_ = §§pop();
                  addr162:
                  §§push(0);
               }
               for each(_loc5_ in this.§?",§)
               {
                  if(_loc5_.§]!V§ < 100)
                  {
                     if(!_loc8_)
                     {
                        _loc4_++;
                        if(_loc9_ || this)
                        {
                           _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
                        }
                     }
                  }
               }
               §§push([§1!0§.§,!Y§,_loc3_]);
               if(!(_loc8_ && _loc2_))
               {
                  return null;
               }
            }
            §§goto(addr162);
         }
         §§goto(addr38);
      }
      
      protected function § "+§(param1:int, param2:Object) : Array
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc13_:Object = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc3_:Number = param2.frameTime[0];
         var _loc4_:Number = param2.frameTime[1];
         §§push(_loc3_);
         if(!_loc17_)
         {
            §§push(§§pop() + _loc4_);
            if(!_loc17_)
            {
               §§push(2);
               if(!_loc17_)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc17_ && _loc3_))
                  {
                     addr56:
                     §§push(§§pop() * 1000);
                     if(_loc17_)
                     {
                     }
                     addr60:
                     var _loc5_:* = §§pop();
                     var _loc6_:Array = [];
                     var _loc7_:Array = [];
                     var _loc8_:Array = [];
                     var _loc9_:Object;
                     if(_loc9_ = param2.sound)
                     {
                        if(!_loc17_)
                        {
                           _loc8_.push(_loc9_.name);
                        }
                     }
                     var _loc10_:Array;
                     var _loc11_:int = (_loc10_ = param2.sprites[param1]).length;
                     var _loc12_:int = 0;
                     loop0:
                     while(true)
                     {
                        §§push(_loc12_);
                        if(!(_loc17_ && this))
                        {
                           §§push(_loc11_);
                           if(_loc16_ || _loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(param1);
                                 break;
                              }
                              if((_loc13_ = _loc10_[_loc12_]).constructor == Object)
                              {
                                 if(_loc16_)
                                 {
                                    §§push(Boolean(_loc13_.sound));
                                    if(_loc16_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc17_)
                                          {
                                             §§pop();
                                             if(!_loc17_)
                                             {
                                                addr200:
                                                if(_loc8_.length == 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc13_.sound);
                                                      addr204:
                                                      while(true)
                                                      {
                                                         _loc14_ = §§pop();
                                                         addr205:
                                                         while(true)
                                                         {
                                                            _loc8_.push(_loc14_);
                                                            addr195:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr201:
                                                }
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      _loc12_++;
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         addr139:
                                                         if(_loc16_ || param1)
                                                         {
                                                            addr146:
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc7_.push(_loc5_);
                                                                  §§goto(addr146);
                                                               }
                                                               addr148:
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr188:
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               _loc6_.push(_loc15_);
                                                               while(true)
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§goto(addr148);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr195);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                }
                                             }
                                             §§goto(addr205);
                                          }
                                       }
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr195);
                              }
                              else
                              {
                                 §§push(_loc13_ as String);
                                 if(!(_loc17_ && param2))
                                 {
                                    _loc15_ = §§pop();
                                    §§goto(addr188);
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr235);
                        }
                        break;
                     }
                     addr235:
                     return [(§§pop() + §§pop()).toString(),_loc6_,_loc7_,_loc8_];
                     §§push(1);
                  }
                  §§goto(addr60);
                  §§push(Number(§§pop()));
               }
               §§goto(addr56);
            }
         }
         §§goto(addr56);
      }
      
      private function §2!3§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§?",§.length != 0)
            {
               §§push(this.§?",§[0].spriteName);
               loop0:
               while(true)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     _loc1_ = §§pop();
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              continue;
                           }
                           addr102:
                           while(true)
                           {
                              if(!this.§3" §.sprite)
                              {
                                 if(this.§3" §.themeTexture)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§3" §.themeTexture);
                                             addr93:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr96:
                                                   while(true)
                                                   {
                                                      addr34:
                                                      while(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr96:
                                                }
                                                §§goto(addr34);
                                             }
                                          }
                                          addr89:
                                       }
                                       else
                                       {
                                          addr116:
                                          §§push(this.§3" §.sprite);
                                       }
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr121:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr116);
                           }
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr93);
               }
               return §§pop();
            }
            §§goto(addr102);
         }
         §§goto(addr89);
      }
      
      private function §2r§() : §'!"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§2!3§());
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         return §9q§.§>!L§.textureManager.getTexture(_loc1_);
      }
      
      private function §1l§() : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§2!3§());
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         return § j§.§8!x§(_loc1_,§9q§.§>!L§.textureManager,true);
      }
      
      private function §>!4§() : Rectangle
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§'!"§ = this.§2r§();
         if(_loc4_ || this)
         {
            if(_loc1_)
            {
               if(_loc4_)
               {
                  return new Rectangle(0,0,_loc1_.width,_loc1_.height);
               }
            }
         }
         var _loc2_:DisplayObject = this.§1l§();
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc1_)
               {
                  §§goto(addr66);
               }
            }
            throw new Error("Texture / composite sprite \'" + this.§2!3§() + "\' doesn\'t exist.");
         }
         addr66:
         return new Rectangle(0,0,_loc2_.width,_loc2_.height);
      }
      
      public function §0%§(param1:String, ... rest) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(!_loc8_)
         {
            if(rest.length == 0)
            {
               if(_loc9_)
               {
                  return this.§3" §[param1];
               }
            }
         }
         var _loc3_:Object = this.§3" §[param1];
         for each(_loc4_ in rest)
         {
            _loc3_ = _loc3_[_loc4_];
            if(_loc9_ || param1)
            {
               if(_loc3_ === null)
               {
                  if(_loc9_ || _loc3_)
                  {
                     return null;
                  }
               }
            }
         }
         if(_loc9_)
         {
            if(_loc3_ is Array)
            {
               addr98:
               if((_loc5_ = _loc3_ as Array).length == 1)
               {
                  _loc3_ = _loc5_[0];
               }
            }
            return String(_loc3_);
         }
         §§goto(addr98);
      }
      
      public function §=c§(param1:String, ... rest) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§0%§);
         if(!_loc5_)
         {
            §§push(§§pop().apply(this,[param1].concat(rest)));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  return parseFloat(_loc3_);
               }
            }
         }
         return NaN;
      }
      
      public function §-0§(param1:String, ... rest) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§0%§);
         if(_loc5_ || param1)
         {
            §§push(§§pop().apply(this,[param1].concat(rest)));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc3_);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr68:
                     §§push(_loc3_.toLowerCase() == "true");
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr74:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr74);
            }
            §§goto(addr68);
         }
         §§goto(addr74);
      }
      
      public function get §[X§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§[B§ is §]!<§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push((§[B§ as §]!<§).bouncesLaser);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr59:
                     §§push(false);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      public function get §<!5§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§[B§ is §]!<§)
            {
               if(_loc2_)
               {
                  §§goto(addr50);
               }
            }
            return null;
         }
         addr50:
         return (§[B§ as §]!<§).particlesDestroyed;
      }
      
      public function get collisionSound() : String
      {
         return this.§0!N§;
      }
      
      public function get §0!N§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§[B§ is §]!<§)
            {
               if(!(_loc2_ && this))
               {
                  return (§[B§ as §]!<§).collisionSound;
               }
            }
         }
         return null;
      }
      
      public function get damageSound() : String
      {
         return this.§>!i§;
      }
      
      public function get §>!i§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§[B§ is §]!<§)
            {
               if(_loc2_)
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return (§[B§ as §]!<§).damageSound;
      }
      
      public function get §'!T§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§[B§ is §]!<§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return (§[B§ as §]!<§).destroyedSound;
               }
            }
         }
         return null;
      }
      
      public function get §;Z§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§[B§ is §]!<§)
            {
               if(!_loc2_)
               {
                  return (§[B§ as §]!<§).rollingSound;
               }
            }
         }
         return null;
      }
      
      public function get §5">§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§[B§ is §]!<§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr46:
                     §§push((§[B§ as §]!<§).bouncesLaserTargeted);
                     if(_loc1_ || this)
                     {
                        §§goto(addr67);
                     }
                  }
                  else
                  {
                     addr68:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr68);
            }
            addr67:
            return §§pop();
         }
         §§goto(addr46);
      }
      
      override public function getItemDensity() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!isNaN(this.§9!C§))
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§9!C§);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr66:
                  return super.getItemDensity();
               }
               return §§pop();
            }
         }
         §§goto(addr66);
      }
      
      override public function getItemFriction() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!isNaN(this.§0!%§))
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr50:
                  §§push(this.§0!%§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return super.getItemFriction();
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      override public function getItemRestitution() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!isNaN(this.§>!5§))
            {
               if(_loc1_ || _loc2_)
               {
                  §§push(this.§>!5§);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr65:
                  return super.getItemRestitution();
               }
               return §§pop();
            }
         }
         §§goto(addr65);
      }
      
      override public function getItemStrength() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!isNaN(this.§6$§))
            {
               if(_loc2_)
               {
                  addr36:
                  §§push(this.§6$§);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return super.getItemStrength();
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr36);
      }
      
      override public function getItemDefence() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!isNaN(this.§`!2§))
            {
               if(_loc1_ || this)
               {
                  §§push(this.§`!2§);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr65:
                  return super.getItemDefence();
               }
               return §§pop();
            }
         }
         §§goto(addr65);
      }
      
      override public function getItemZOrder() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!isNaN(this.§%!e§))
            {
               if(_loc1_ || this)
               {
                  addr45:
                  §§push(this.§%!e§);
                  if(_loc1_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr65:
                  return 0;
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr45);
      }
      
      override public function getItemBodyType() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.getItemDensity() > 0)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr50:
                  §§push(§<s§.§6x§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return §<s§.§%!2§;
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function § ""§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§0%§("definitionAffectedByForce"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(this.§0%§("definitionHeldByForce"));
                     if(_loc4_)
                     {
                        §§push(§§pop());
                     }
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr142:
                        loop7:
                        while(true)
                        {
                           §§push(_loc2_);
                           loop8:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    _loc2_ = "FORCE_GLOW_RED_CIRCLE_L";
                                 }
                                 addr118:
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop())
                                    {
                                       addr73:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       addr100:
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr118);
                                          §§goto(addr73);
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       return §§pop();
                                       addr32:
                                    }
                                    §§goto(addr32);
                                 }
                                 break;
                              }
                              §§push(§§pop().replace("RED",param1));
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr100);
            }
         }
         §§goto(addr142);
      }
      
      public function §'v§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§=c§("glowRotation"));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            if(isNaN(_loc1_))
            {
               if(!_loc2_)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                        _loc1_ = §§pop();
                        addr64:
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
   }
}
