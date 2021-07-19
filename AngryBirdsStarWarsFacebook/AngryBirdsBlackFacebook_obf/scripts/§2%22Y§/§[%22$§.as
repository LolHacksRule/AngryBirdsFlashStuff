package §2"Y§
{
   import §!!U§.DisplayObject;
   import §5"i§.b2Settings;
   import §7!F§.§8!W§;
   import §7!F§.§^"U§;
   import §7P§.§&#=§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §["$§ extends §"t§
   {
       
      
      private var §@k§:Object;
      
      private var §9"V§:Vector.<§<!r§>;
      
      private var §9!]§:Number;
      
      private var § "E§:Number;
      
      private var §>",§:Number;
      
      private var §>!5§:Number;
      
      private var §4O§:Number;
      
      private var §<#&§:int;
      
      private var §%#Z§:Boolean;
      
      protected var §>"Q§:§%"3§;
      
      public function §["$§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:Object = null;
         if(_loc12_ || param3)
         {
            this.§9"V§ = new Vector.<§<!r§>();
            while(true)
            {
               this.§@k§ = param1;
               while(true)
               {
                  §§push(this);
                  if(_loc12_)
                  {
                     if(param1.collision != undefined)
                     {
                        addr241:
                        §§push(Boolean(param1.collision));
                        if(_loc12_ || this)
                        {
                        }
                     }
                     else
                     {
                        §§push(true);
                     }
                     §§pop().§%#Z§ = §§pop();
                     while(true)
                     {
                        if(param3 != null)
                        {
                           if(_loc12_)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(this);
                              if(!(_loc11_ && this))
                              {
                                 if(param1.density != undefined)
                                 {
                                    addr215:
                                    §§push(Number(param1.density));
                                    if(_loc12_ || this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(param3.density);
                                    if(_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§pop().§9!]§ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc12_)
                                    {
                                       if(param1.friction != undefined)
                                       {
                                          addr167:
                                          §§push(Number(param1.friction));
                                          if(_loc11_ && param3)
                                          {
                                             addr182:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       else
                                       {
                                          §§push(param3.friction);
                                          if(!_loc11_)
                                          {
                                             §§goto(addr182);
                                          }
                                       }
                                       §§pop().§ "E§ = §§pop();
                                       while(true)
                                       {
                                          §§push(this);
                                          if(_loc12_ || param3)
                                          {
                                             if(param1.restitution != undefined)
                                             {
                                                addr132:
                                                §§push(Number(param1.restitution));
                                                if(!_loc12_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(param3.restitution);
                                                if(_loc12_ || param3)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§pop().§>",§ = §§pop();
                                             continue loop3;
                                          }
                                          §§goto(addr132);
                                       }
                                       addr184:
                                    }
                                    §§goto(addr167);
                                 }
                                 addr232:
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr232);
                        }
                        else
                        {
                           §§goto(addr267);
                        }
                        addr305:
                        for each(_loc8_ in this.§@k§.damageSprites)
                        {
                           if(!_loc11_)
                           {
                              this.§9"V§.push(new §<!r§(_loc8_.sprite,_loc8_.max,_loc8_.min,_loc8_.particles || ""));
                           }
                        }
                        if(!_loc11_)
                        {
                           this.§9"V§.sort(this.§[#1§);
                           do
                           {
                              super(param1.definition,param2,param3,param4,null,param5,"",param1.strength != undefined ? Number(param1.strength) : (!!param3 ? Number(param3.strength) : Number(-1)),param1.scale != undefined ? Number(param1.scale) : Number(1),param6);
                           }
                           while(_loc11_);
                           
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr241);
               }
            }
         }
         §§goto(addr158);
      }
      
      override public function get isColliding() : Boolean
      {
         return this.§%#Z§;
      }
      
      public function §-Z§(param1:String, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(this.§>"Q§);
            if(_loc4_ || param2)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     addr62:
                     this.§>"Q§.§"#_§(param1,param2,param3);
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      private function §[#1§(param1:§<!r§, param2:§<!r§) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1.§]1§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() > param2.§]1§)
               {
                  if(!_loc3_)
                  {
                     §§push(-1);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     §§push(1);
                  }
               }
               §§goto(addr57);
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      override public function get shape() : §?#^§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Vector.<b2Vec2> = null;
         var _loc8_:§,!W§ = null;
         var _loc9_:Array = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Object = null;
         var _loc13_:b2Vec2 = null;
         §§push(0.92);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc17_)
         {
            if(!§&"5§)
            {
               loop0:
               while(true)
               {
                  §§push(b2Settings.§#"F§);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr187:
                        loop3:
                        while(this.isMaterialStatic)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(Number(1));
                              loop5:
                              while(_loc17_)
                              {
                                 _loc1_ = §§pop();
                                 do
                                 {
                                    §§push(0);
                                    if(_loc17_ || _loc1_)
                                    {
                                       if(_loc17_ || _loc1_)
                                       {
                                          if(_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 while(_loc5_ = §§pop(), !(_loc17_ || this));
                                 
                                 if(!_loc16_)
                                 {
                                    if(!(_loc16_ && _loc1_))
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                        }
                        addr110:
                        var _loc14_:* = String(this.§@k§.type).toLowerCase();
                        if(!_loc16_)
                        {
                           if("box" === _loc14_)
                           {
                              if(!_loc16_)
                              {
                                 addr963:
                                 §§push(0);
                                 if(!(_loc17_ || _loc3_))
                                 {
                                    addr985:
                                 }
                              }
                              else
                              {
                                 addr989:
                                 §§push(2);
                                 if(!_loc17_)
                                 {
                                 }
                              }
                              addr1007:
                              loop45:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(Boolean(this.§@k§.width));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc17_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc16_)
                                             {
                                                addr539:
                                                §§push(§§pop());
                                                break;
                                             }
                                             §§pop();
                                             if(!_loc16_)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§@k§.height));
                                                   if(_loc17_ || _loc2_)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               §§push(Number(this.§@k§.width));
                                                               if(_loc17_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     §§push(Number(this.§@k§.height));
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr549:
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr511:
                                                                           addr518:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(this.§@k§.height));
                                                                              if(_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop45;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(this.§@k§.width));
                                                                                    addr524:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr525:
                                                                                       §§goto(addr1009);
                                                                                    }
                                                                                 }
                                                                                 addr520:
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc2_ = this.§=#K§();
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    §§push(_loc2_.width * §#_§.§8]§);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() * §8"2§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr630:
                                                                                          if(!(_loc17_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      addr643:
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop27:
                                                                                                            while(_loc17_)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     if(_loc16_ && this)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     if(_loc17_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr598:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr657:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              addr659:
                                                                                                                              while(_loc17_ || this)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.getItemDensity());
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    §§goto(addr630);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr598);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                        }
                                                                                                                        addr677:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.height * §#_§.§8]§);
                                                                                                                        break loop27;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr598);
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr657);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr616:
                                                                                                      if(!(_loc16_ && _loc3_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr625);
                                                                                                            }
                                                                                                            addr679:
                                                                                                            _loc7_ = new Vector.<b2Vec2>(0);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               _loc14_ = 0;
                                                                                                               if(_loc17_ || _loc3_)
                                                                                                               {
                                                                                                                  for each(_loc12_ in this.§@k§.vertices)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        _loc7_.push(new b2Vec2((_loc12_.x - 0.5) * _loc3_,(_loc12_.y - 0.5) * _loc4_));
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(((_loc9_ = (_loc8_ = new §,!W§(_loc7_)).§,v§())[0].x + _loc9_[1].x) / 2);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  §§push((_loc9_[0].y + _loc9_[1].y) / 2);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr776:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc11_ = §§pop();
                                                                                                               _loc14_ = 0;
                                                                                                               if(_loc17_ || _loc3_)
                                                                                                               {
                                                                                                                  loop32:
                                                                                                                  for each(_loc13_ in _loc7_)
                                                                                                                  {
                                                                                                                     §§push(_loc13_.x);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 §§push(_loc13_.x);
                                                                                                                                 if(_loc17_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - _loc5_);
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_.y);
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             while(!(_loc16_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(_loc13_.y);
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   if(_loc17_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            §§push(_loc13_.y);
                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + _loc5_);
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr870:
                                                                                                                                                            if(_loc17_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  continue loop33;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr906:
                                                                                                                                                            }
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         addr912:
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
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr870);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr910:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             break loop34;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr911:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          §§goto(addr912);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(_loc13_.y);
                                                                                                                              if(!(_loc16_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc5_);
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              §§goto(addr906);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr910);
                                                                                                                              §§push(_loc13_.x);
                                                                                                                           }
                                                                                                                           §§goto(addr910);
                                                                                                                        }
                                                                                                                        §§goto(addr911);
                                                                                                                     }
                                                                                                                     §§goto(addr910);
                                                                                                                  }
                                                                                                               }
                                                                                                               §&"5§ = new §,!W§(_loc7_);
                                                                                                               §§goto(addr1009);
                                                                                                            }
                                                                                                            §§goto(addr776);
                                                                                                         }
                                                                                                         addr623:
                                                                                                      }
                                                                                                      §§goto(addr659);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr679);
                                                                                          }
                                                                                          §§goto(addr643);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr677);
                                                                                 }
                                                                                 §§goto(addr623);
                                                                              }
                                                                              §§goto(addr679);
                                                                           }
                                                                        }
                                                                        addr549:
                                                                     }
                                                                     addr397:
                                                                     _loc4_ = Number(§§pop());
                                                                     addr396:
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        §&"5§ = new §<"+§(_loc3_,_loc4_);
                                                                        addr1009:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(this.§@k§.height));
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr1009:
                                                                        return §&"5§;
                                                                        addr383:
                                                                        addr405:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr549);
                                                                     }
                                                                     §§goto(addr1009);
                                                                  }
                                                                  loop43:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§@k§.width / 2);
                                                                     if(!(_loc16_ && _loc2_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           addr305:
                                                                           if(_loc17_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr310:
                                                                                 if(!(_loc16_ && _loc3_))
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       while(!this.§@k§.radius)
                                                                                       {
                                                                                          if(this.§@k§.width)
                                                                                          {
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(_loc17_ || _loc2_)
                                                                                                {
                                                                                                   continue loop43;
                                                                                                }
                                                                                                §§goto(addr383);
                                                                                             }
                                                                                             §§goto(addr1009);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc2_ = this.§=#K§();
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(_loc2_.width * §#_§.§8]§);
                                                                                                if(_loc17_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() * §8"2§);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() / 2);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr433:
                                                                                                         §§push(_loc1_);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     addr450:
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        addr453:
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           addr458:
                                                                                                                           §§push(§§pop() - §§pop() * 2);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              addr461:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           §&"5§ = new §?#Q§(_loc6_,new Point(0,0));
                                                                                                                           if(!(_loc16_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr1009);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr509);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr458);
                                                                                                                     }
                                                                                                                     §§goto(addr461);
                                                                                                                  }
                                                                                                                  §§goto(addr458);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         §§goto(addr450);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                }
                                                                                                §§goto(addr433);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1009);
                                                                                          §§goto(addr310);
                                                                                       }
                                                                                       addr324:
                                                                                       §§push(Number(this.§@k§.radius));
                                                                                       if(_loc17_ || _loc1_)
                                                                                       {
                                                                                          if(!(_loc16_ && _loc1_))
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr344:
                                                                                                _loc6_ = §§pop();
                                                                                                if(!(_loc16_ && _loc1_))
                                                                                                {
                                                                                                   §§goto(addr458);
                                                                                                }
                                                                                                §§goto(addr1009);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr385:
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc16_ && _loc3_))
                                                                                                {
                                                                                                   addr393:
                                                                                                   §§push(§§pop() * 2);
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§goto(addr1009);
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       §§goto(addr524);
                                                                                       addr319:
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr525);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(_loc17_)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(!(_loc16_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 break loop43;
                                                                              }
                                                                              §§goto(addr397);
                                                                              addr365:
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr524);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  §§goto(addr549);
                                                               }
                                                               addr265:
                                                               _loc3_ = §§pop();
                                                               if(!_loc16_)
                                                               {
                                                                  §§goto(addr385);
                                                                  §§push(_loc4_);
                                                               }
                                                               §§goto(addr405);
                                                            }
                                                            §§goto(addr520);
                                                         }
                                                         else
                                                         {
                                                            _loc2_ = this.§=#K§();
                                                            if(!(_loc16_ && _loc2_))
                                                            {
                                                               §§push(_loc2_.width * §#_§.§8]§);
                                                               if(!(_loc16_ && _loc2_))
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc17_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr224:
                                                                              §§push(_loc2_.height * §#_§.§8]§);
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr232:
                                                                                 §§push(§§pop() * _loc1_);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr236:
                                                                                    _loc4_ = Number(§§pop());
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc17_ || _loc3_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(2);
                                                            if(!(_loc16_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc17_)
                                                               {
                                                                  addr259:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§goto(addr265);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr364:
                                                                        §§goto(addr365);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr549);
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   break loop45;
                                                }
                                                continue;
                                             }
                                             §§goto(addr549);
                                          }
                                          §§goto(addr91);
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    §§goto(addr518);
                                 case 1:
                                    §§push(0);
                                    if(_loc17_ || _loc2_)
                                    {
                                       §§goto(addr364);
                                    }
                                    §§goto(addr524);
                                 case 2:
                                    §§push(Boolean(this.§@k§.width));
                                    if(_loc17_ || _loc1_)
                                    {
                                       §§goto(addr539);
                                    }
                                    break;
                                 default:
                                    throw new Error("Level item\'s type has to be \'box\', \'circle\' or \'polygon\', but it was \'" + this.§@k§.type + "\' for item \'" + this.§@k§.definition + "\'.");
                              }
                              continue loop44;
                           }
                           if("circle" === _loc14_)
                           {
                              if(_loc17_ || this)
                              {
                                 §§push(1);
                                 if(_loc17_)
                                 {
                                    §§goto(addr985);
                                 }
                              }
                              else
                              {
                                 §§goto(addr989);
                              }
                           }
                           else if("polygon" === _loc14_)
                           {
                              §§goto(addr989);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr1007);
                        }
                        §§goto(addr963);
                     }
                  }
               }
            }
            §§goto(addr1009);
         }
         §§goto(addr187);
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:§<!r§ = null;
         if(!_loc8_)
         {
            if(this.§9"V§.length == 0)
            {
               if(_loc9_)
               {
                  if(this.§@k§.animations)
                  {
                     if(!_loc8_)
                     {
                        addr46:
                        §§push([§&#=§.§'%§,[this.§"!`§(0,this.§@k§.animations[0])]]);
                        if(_loc9_)
                        {
                           §§push(null);
                           if(!(_loc8_ && _loc3_))
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        addr69:
                        §§push([]);
                        if(!(_loc8_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           if(!(_loc8_ && _loc3_))
                           {
                              if(this.§@k§.themeTexture)
                              {
                                 §§goto(addr90);
                              }
                              else
                              {
                                 §§push([this.§@k§.sprite]);
                              }
                              §§goto(addr118);
                           }
                           addr90:
                           §§push([this.§@k§.themeTexture]);
                           if(!(_loc8_ && _loc2_))
                           {
                              _loc1_ = §§pop();
                           }
                           else
                           {
                              addr118:
                              _loc1_ = §§pop();
                           }
                           §§push(§&#=§.§'%§);
                           §§push(["1",_loc1_,_loc2_]);
                           if(!(_loc8_ && this))
                           {
                              §§push(null);
                           }
                           §§push(null);
                           if(_loc9_ || _loc2_)
                           {
                              return null;
                           }
                        }
                     }
                     addr154:
                     _loc3_ = null;
                     addr153:
                     if(_loc9_)
                     {
                        §§push(1);
                        if(_loc9_)
                        {
                           _loc4_ = §§pop();
                           addr162:
                           §§push(0);
                        }
                        for each(_loc5_ in this.§9"V§)
                        {
                           if(_loc5_.§]1§ < 100)
                           {
                              if(_loc9_)
                              {
                                 _loc4_++;
                                 if(!_loc8_)
                                 {
                                    _loc3_.push([_loc4_.toString(),[_loc5_.spriteName]]);
                                 }
                              }
                           }
                        }
                        §§push([§&#=§.§'%§,_loc3_]);
                        if(!(_loc8_ && _loc1_))
                        {
                           return null;
                        }
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr69);
               }
               §§goto(addr46);
            }
            else
            {
               §§push(["1",[this.§@k§.sprite]]);
               if(!_loc8_)
               {
                  §§goto(addr153);
               }
            }
            §§goto(addr154);
         }
         §§goto(addr46);
      }
      
      protected function §"!`§(param1:int, param2:Object) : Array
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc13_:Object = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc3_:Number = param2.frameTime[0];
         var _loc4_:Number = param2.frameTime[1];
         §§push(_loc3_);
         if(_loc17_ || this)
         {
            §§push(§§pop() + _loc4_);
            if(_loc17_)
            {
               §§push(2);
               if(_loc17_ || param1)
               {
                  addr71:
                  §§push(§§pop() / §§pop());
                  if(_loc17_ || _loc3_)
                  {
                     addr66:
                     §§push(1000);
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:Array = [];
                  var _loc7_:Array = [];
                  var _loc8_:Array = [];
                  var _loc9_:Object;
                  if(_loc9_ = param2.sound)
                  {
                     if(_loc17_ || param2)
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
                     if(_loc17_ || this)
                     {
                        §§push(_loc11_);
                        if(_loc17_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(param1);
                              break;
                           }
                           if((_loc13_ = _loc10_[_loc12_]).constructor == Object)
                           {
                              if(_loc17_)
                              {
                                 §§push(Boolean(_loc13_.sound));
                                 if(!(_loc16_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc17_ || param1)
                                       {
                                          §§pop();
                                          if(!_loc16_)
                                          {
                                             addr221:
                                             if(_loc8_.length == 0)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc13_.sound);
                                                   addr225:
                                                   while(true)
                                                   {
                                                      _loc14_ = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         _loc8_.push(_loc14_);
                                                         addr214:
                                                         while(true)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr222:
                                             }
                                             while(true)
                                             {
                                                addr156:
                                                addr173:
                                                loop5:
                                                while(true)
                                                {
                                                   _loc12_++;
                                                   if(_loc17_)
                                                   {
                                                      if(!(_loc16_ && param2))
                                                      {
                                                         addr167:
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc7_.push(_loc5_);
                                                               break loop5;
                                                               §§goto(addr167);
                                                            }
                                                            addr169:
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   break;
                                                }
                                                loop4:
                                                while(_loc17_ || param1)
                                                {
                                                   addr180:
                                                   if(_loc17_ || param2)
                                                   {
                                                      §§goto(addr156);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc6_.push(_loc15_);
                                                         break loop4;
                                                         §§goto(addr180);
                                                      }
                                                      addr209:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc16_ && param1)
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr173);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr169);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr216);
                           }
                           else
                           {
                              §§push(_loc13_ as String);
                              if(!_loc16_)
                              {
                                 _loc15_ = §§pop();
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr251);
                     }
                     break;
                  }
                  addr251:
                  return [(§§pop() + §§pop()).toString(),_loc6_,_loc7_,_loc8_];
                  §§push(1);
               }
               §§push(§§pop() * §§pop());
               if(!_loc16_)
               {
                  §§goto(addr71);
                  §§push(Number(§§pop()));
               }
               §§goto(addr71);
            }
            §§goto(addr66);
         }
         §§goto(addr71);
      }
      
      private function §8#D§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!_loc3_)
         {
            if(this.§9"V§.length != 0)
            {
               §§push(this.§9"V§[0].spriteName);
               loop0:
               while(true)
               {
                  if(_loc2_)
                  {
                     _loc1_ = §§pop();
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(this.§@k§.sprite);
                              addr115:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                              }
                           }
                           addr111:
                        }
                        else
                        {
                           loop4:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§@k§.themeTexture);
                                    addr83:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr84:
                                       while(true)
                                       {
                                          if(_loc3_ && _loc1_)
                                          {
                                             while(true)
                                             {
                                                if(this.§@k§.sprite)
                                                {
                                                   §§goto(addr111);
                                                }
                                                else if(this.§@k§.themeTexture)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             addr97:
                                          }
                                          addr36:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop10;
                                    }
                                 }
                                 addr79:
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr36);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr79);
      }
      
      private function §2]§() : §8!W§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§8#D§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         return §,!q§.§9!,§.textureManager.getTexture(_loc1_);
      }
      
      private function §9"8§() : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§8#D§());
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         return §^"U§.§]!6§(_loc1_,§,!q§.§9!,§.textureManager,true);
      }
      
      private function §=#K§() : Rectangle
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§8!W§ = this.§2]§();
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return new Rectangle(0,0,_loc1_.width,_loc1_.height);
                  addr31:
               }
            }
            var _loc2_:DisplayObject = this.§9"8§();
            if(_loc3_ || _loc2_)
            {
               if(_loc2_)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     return new Rectangle(0,0,_loc2_.width,_loc2_.height);
                  }
               }
            }
            throw new Error("Texture / composite sprite \'" + this.§8#D§() + "\' doesn\'t exist.");
         }
         §§goto(addr31);
      }
      
      public function getProperty(param1:String, ... rest) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         if(_loc8_ || this)
         {
            if(rest.length == 0)
            {
               if(_loc8_ || this)
               {
                  return this.§@k§[param1];
               }
            }
         }
         var _loc3_:Object = this.§@k§[param1];
         var _loc6_:int = 0;
         var _loc7_:* = rest;
         while(true)
         {
            for each(_loc4_ in _loc7_)
            {
               _loc3_ = _loc3_[_loc4_];
               if(!_loc8_)
               {
                  break;
               }
               if(_loc3_ === null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
               }
               continue;
            }
            if(_loc8_)
            {
               if(_loc3_ is Array)
               {
                  addr97:
                  if((_loc5_ = _loc3_ as Array).length == 1)
                  {
                     _loc3_ = _loc5_[0];
                  }
               }
               return String(_loc3_);
            }
            §§goto(addr97);
         }
         return null;
      }
      
      public function getNumberProperty(param1:String, ... rest) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getProperty);
         if(_loc4_)
         {
            §§push(§§pop().apply(this,[param1].concat(rest)));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(_loc4_ || param1)
               {
                  return parseFloat(_loc3_);
               }
            }
         }
         return NaN;
      }
      
      public function §@"8§(param1:String, ... rest) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getProperty);
         if(!_loc4_)
         {
            §§push(§§pop().apply(this,[param1].concat(rest)));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(_loc5_ || rest)
                  {
                     addr68:
                     §§push(_loc3_.toLowerCase() == "true");
                     if(_loc5_)
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
         }
         §§goto(addr68);
      }
      
      public function get §1!<§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§`!=§ is §-!Y§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr42:
                     §§push((§`!=§ as §-!Y§).bouncesLaser);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§goto(addr63);
                     }
                  }
                  else
                  {
                     addr64:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr64);
            }
            addr63:
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function get §%d§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§`!=§ is §-!Y§)
            {
               if(_loc1_)
               {
                  return (§`!=§ as §-!Y§).particlesDestroyed;
               }
            }
         }
         return null;
      }
      
      public function get collisionSound() : String
      {
         return this.§2"?§;
      }
      
      public function get §2"?§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§`!=§ is §-!Y§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr54);
               }
            }
            return null;
         }
         addr54:
         return (§`!=§ as §-!Y§).collisionSound;
      }
      
      public function get damageSound() : String
      {
         return this.§4#V§;
      }
      
      public function get §4#V§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§`!=§ is §-!Y§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr55);
               }
            }
            return null;
         }
         addr55:
         return (§`!=§ as §-!Y§).damageSound;
      }
      
      public function get §31§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§`!=§ is §-!Y§)
            {
               if(_loc2_)
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return (§`!=§ as §-!Y§).destroyedSound;
      }
      
      public function get §0!C§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§`!=§ is §-!Y§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr55);
               }
            }
            return null;
         }
         addr55:
         return (§`!=§ as §-!Y§).rollingSound;
      }
      
      public function get §^!N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§`!=§ is §-!Y§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr52:
                     §§push((§`!=§ as §-!Y§).bouncesLaserTargeted);
                     if(_loc2_)
                     {
                        §§goto(addr58);
                     }
                  }
                  else
                  {
                     addr59:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr59);
            }
            addr58:
            return §§pop();
         }
         §§goto(addr52);
      }
      
      override public function getItemDensity() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!isNaN(this.§9!]§))
            {
               if(_loc1_)
               {
                  §§push(this.§9!]§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return super.getItemDensity();
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      override public function getItemFriction() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!isNaN(this.§ "E§))
            {
               if(_loc1_)
               {
                  addr50:
                  §§push(this.§ "E§);
                  if(_loc1_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!isNaN(this.§>",§))
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr56:
                  §§push(this.§>",§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr61:
                  return super.getItemRestitution();
               }
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr56);
      }
      
      override public function getItemStrength() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!isNaN(this.§>!5§))
            {
               if(!_loc1_)
               {
                  addr51:
                  §§push(this.§>!5§);
                  if(!_loc1_)
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
         §§goto(addr51);
      }
      
      override public function getItemDefence() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!isNaN(this.§4O§))
            {
               if(_loc2_ || _loc1_)
               {
                  addr56:
                  §§push(this.§4O§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr61:
                  return super.getItemDefence();
               }
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr56);
      }
      
      override public function getItemZOrder() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!isNaN(this.§<#&§))
            {
               if(!_loc2_)
               {
                  §§push(this.§<#&§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return 0;
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      override public function getItemBodyType() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.getItemDensity() > 0)
            {
               if(_loc1_ || this)
               {
                  §§push(§&!x§.§7!B§);
                  if(_loc1_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  return §&!x§.§&#_§;
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      override public function get isMaterialStatic() : Boolean
      {
         return this.getItemDensity() <= 0;
      }
      
      public function §@"y§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.getProperty("definitionAffectedByForce"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     while(true)
                     {
                        §§push(this.getProperty("definitionHeldByForce"));
                        addr130:
                        while(true)
                        {
                           §§push(§§pop());
                           addr131:
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                        }
                     }
                     addr127:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop2:
                     while(_loc4_ || this)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              _loc2_ = "FORCE_GLOW_RED_CIRCLE_L";
                              addr48:
                              if(!(_loc4_ || param1))
                              {
                                 continue;
                              }
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().replace("RED",param1));
                              }
                              while(!(_loc3_ && this))
                              {
                                 continue loop0;
                              }
                              §§goto(addr130);
                              addr72:
                           }
                           addr105:
                        }
                        while(true)
                        {
                           §§push(param1);
                           loop5:
                           for(; !_loc3_; if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           },§§goto(addr38))
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       return §§pop();
                                    }
                                    continue loop1;
                                    addr87:
                                 }
                                 §§goto(addr48);
                                 §§goto(addr72);
                              }
                              §§goto(addr27);
                           }
                           continue loop2;
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr38);
            }
         }
         §§goto(addr127);
      }
      
      public function §'!o§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.getNumberProperty("glowRotation"));
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            if(isNaN(_loc1_))
            {
               if(_loc2_ || _loc2_)
               {
                  addr51:
                  §§push(0);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ && _loc2_))
                     {
                        addr72:
                        _loc1_ = §§pop();
                        return _loc1_;
                     }
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr51);
      }
   }
}
