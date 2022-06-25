package starling.events
{
   import §#!,§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §'T§:Number = 0.3;
      
      private static const §+![§:Number = 25;
      
      private static var §8f§:Vector.<int>;
      
      private static var §3x§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && TouchProcessor))
         {
            §'T§ = 0.3;
            while(true)
            {
               §+![§ = 25;
            }
            addr90:
         }
         loop1:
         while(true)
         {
            §8f§ = new Vector.<int>(0);
            while(!(_loc1_ && TouchProcessor))
            {
               §3x§ = new Vector.<Object>(0);
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break loop1;
               }
               §§goto(addr90);
            }
         }
      }
      
      private var §[;§:Stage;
      
      private var §"!!§:Number;
      
      private var §#8§:Number;
      
      private var §,!_§:§%!+§;
      
      private var §=!%§:Vector.<§]!B§>;
      
      private var §9D§:Vector.<Array>;
      
      private var §const§:Vector.<§]!B§>;
      
      private var §9g§:Boolean = false;
      
      private var §7!@§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this.§[;§ = param1;
               if(!_loc3_)
               {
                  addr33:
                  this.§"!!§ = this.§#8§ = 0;
                  if(_loc4_)
                  {
                     this.§=!%§ = new Vector.<§]!B§>(0);
                     loop6:
                     while(true)
                     {
                        this.§9D§ = new Vector.<Array>(0);
                        while(true)
                        {
                           this.§const§ = new Vector.<§]!B§>(0);
                           loop2:
                           while(true)
                           {
                              §§push(this.§[;§);
                              addr96:
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr99:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§,X§);
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr112);
               }
               return;
            }
            §§goto(addr112);
         }
         §§goto(addr33);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§[;§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr102:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§,X§);
                  continue loop0;
               }
            }
            addr99:
         }
         while(true)
         {
            §§push(this.§[;§);
            if(_loc2_ || this)
            {
               §§push(KeyboardEvent.KEY_UP);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§,X§);
                  do
                  {
                     §§push(this.§,!_§);
                     if(_loc2_ || this)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr25);
                        }
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§push(this.§,!_§);
                     }
                     §§pop().dispose();
                  }
                  while(!_loc2_);
                  
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr99);
            }
            §§goto(addr102);
         }
         addr25:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!B§ = null;
         var _loc5_:§]!B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc11_)
         {
            §§push(this);
            §§push(this.§"!!§);
            if(!_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"!!§ = §§pop();
            loop0:
            while(true)
            {
               this.§#8§ = 0;
               while(true)
               {
                  if(_loc11_ || _loc2_)
                  {
                     if(this.§const§.length <= 0)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr656);
            }
         }
         §§goto(addr127);
      }
      
      public function §;k§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§9D§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§7!@§);
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
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                              addr159:
                           }
                           else
                           {
                              while(true)
                              {
                                 addr112:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && param2))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(§§pop())
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             this.§,!_§.§<!T§(param3,param4,this.§9g§);
                                          }
                                          while(!_loc7_)
                                          {
                                             if(_loc6_)
                                             {
                                                this.§9D§.unshift([1,param2,this.§,!_§.§%!^§,this.§,!_§.§`b§]);
                                                if(!_loc7_)
                                                {
                                                   break loop11;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(param1 == 0);
                                             if(!_loc7_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc7_ && param2)
                                             {
                                                break;
                                             }
                                             continue loop11;
                                          }
                                          while(_loc6_ || param2)
                                          {
                                             continue loop1;
                                             §§goto(addr151);
                                          }
                                          addr151:
                                          continue loop2;
                                       }
                                       return;
                                    }
                                    §§goto(addr126);
                                 }
                                 continue loop4;
                              }
                              addr111:
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§;!h§);
            if(!(_loc7_ && this))
            {
               if(!(_loc7_ && param3))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc6_)
                  {
                     §§goto(addr111);
                  }
                  §§goto(addr151);
               }
               §§goto(addr159);
            }
            §§goto(addr112);
         }
      }
      
      private function §[!>§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!B§ = this.§^!0§(param1);
         if(!_loc8_)
         {
            if(_loc6_ == null)
            {
               if(!(_loc8_ && param2))
               {
                  _loc6_ = new §]!B§(param1,param3,param4,param2,null);
                  if(!(_loc8_ && this))
                  {
                     this.§>W§(_loc6_);
                     addr59:
                     _loc6_.setPosition(param3,param4);
                     if(!(_loc8_ && param2))
                     {
                        _loc6_.§9!$§(param2);
                     }
                     loop14:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§"!!§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + this.§#8§);
                        }
                        §§pop().§0]§(§§pop());
                        loop9:
                        while(true)
                        {
                           §§push(param2);
                           loop13:
                           while(true)
                           {
                              §§push(§?'§.§[!_§);
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc8_ && param3))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr204:
                                             while(true)
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   break loop3;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          addr203:
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                _loc6_.§#s§(this.§[;§.hitTest(_loc5_,true));
                                                addr175:
                                                addr93:
                                                while(true)
                                                {
                                                }
                                                if(_loc8_ && this)
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop14;
                                                }
                                                this.§4x§(_loc6_);
                                                addr116:
                                                if(_loc8_ && param1)
                                                {
                                                   §§goto(addr175);
                                                }
                                                if(!_loc8_)
                                                {
                                                   addr72:
                                                   return;
                                                   addr125:
                                                }
                                                §§goto(addr204);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc7_)
                                             {
                                                addr80:
                                                §§push(§?'§.§%!7§);
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr93);
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(!(_loc7_ || param3))
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr203);
                                                         }
                                                      }
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop12;
                                                   §§goto(addr80);
                                                }
                                                addr133:
                                             }
                                             addr128:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop13;
                                                }
                                                §§goto(addr133);
                                                §§push(§?'§.§%!7§);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr72);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr59);
               }
               while(true)
               {
                  §§goto(addr128);
                  §§goto(addr204);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr125);
      }
      
      private function §,X§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§]!B§ = null;
         var _loc4_:§]!B§ = null;
         if(_loc6_)
         {
            §§push(param1.keyCode);
            if(_loc6_ || _loc3_)
            {
               §§push(17);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(param1.keyCode);
                                       if(!_loc5_)
                                       {
                                          §§push(15);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   addr198:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(param1.keyCode);
                                                         break loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§7!@§);
                                                      }
                                                   }
                                                }
                                                addr197:
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      this.§7!@§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                      loop9:
                                                      while(_loc6_ || param1)
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(this.§;!h§);
                                                            while(_loc6_ || _loc2_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  addr158:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr160:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr59);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§,!_§);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().visible = this.§7!@§;
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(this.§,!_§);
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   §§pop().§;!Z§(this.§[;§.stageWidth / 2,this.§[;§.stageHeight / 2);
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         addr59:
                                                                                                         §§goto(addr598);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         _loc3_ = this.§^!0§(0);
                                                                                                         _loc4_ = this.§^!0§(1);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr558:
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               this.§,!_§.§<!T§(_loc3_.globalX,_loc3_.globalY);
                                                                                                               addr559:
                                                                                                            }
                                                                                                            addr549:
                                                                                                            §§push(Boolean(_loc2_));
                                                                                                            if(Boolean(_loc2_))
                                                                                                            {
                                                                                                               addr550:
                                                                                                               §§pop();
                                                                                                               addr551:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr538:
                                                                                                                     §§push(Boolean(_loc4_));
                                                                                                                     §§push(Boolean(_loc4_));
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr541:
                                                                                                                           §§pop();
                                                                                                                           addr542:
                                                                                                                           §§push(_loc4_.phase == §?'§.§&>§);
                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 addr503:
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr507:
                                                                                                                                    addr506:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr508:
                                                                                                                                       this.§9D§.unshift([1,§?'§.§&>§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                                                       addr521:
                                                                                                                                       if(!(_loc6_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr551);
                                                                                                                                       }
                                                                                                                                       §§goto(addr578);
                                                                                                                                    }
                                                                                                                                    addr471:
                                                                                                                                    §§push(Boolean(this.§7!@§));
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr483:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr484:
                                                                                                                                          §§pop();
                                                                                                                                          addr485:
                                                                                                                                          §§push(Boolean(_loc3_));
                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr391:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr411:
                                                                                                                                                            §§push(_loc3_.phase);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr417:
                                                                                                                                                               §§push(§§pop() == §?'§.§%!7§);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr429:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr454:
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr457:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr458:
                                                                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr272:
                                                                                                                                                                                             §§push(_loc3_.phase);
                                                                                                                                                                                             if(_loc6_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§?'§.§2r§);
                                                                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr327:
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr345:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§9D§.unshift([1,§?'§.§%!7§,this.§,!_§.§%!^§,this.§,!_§.§`b§]);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr364:
                                                                                                                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr542);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr578);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr458);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           this.§9D§.unshift([1,§?'§.§[!_§,this.§,!_§.§%!^§,this.§,!_§.§`b§]);
                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr272);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr578:
                                                                                                                                                                                                                              §§goto(addr598);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr364);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr541);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr484);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr417);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr457);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr471);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr429);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr327);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr541);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr417);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr411);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr485);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr345);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr538);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr549);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr483);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr454);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr471);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr541);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr503);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr507);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr541);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr508);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr521);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr457);
                                                                                                                                                }
                                                                                                                                                §§goto(addr508);
                                                                                                                                             }
                                                                                                                                             §§goto(addr538);
                                                                                                                                          }
                                                                                                                                          §§goto(addr457);
                                                                                                                                       }
                                                                                                                                       §§goto(addr391);
                                                                                                                                    }
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr558);
                                                                                                                        }
                                                                                                                        §§goto(addr506);
                                                                                                                     }
                                                                                                                     §§goto(addr558);
                                                                                                                     addr555:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            §§goto(addr538);
                                                                                                         }
                                                                                                         §§goto(addr555);
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          addr138:
                                                                                       }
                                                                                       §§goto(addr590);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr160);
                                                                           }
                                                                           §§goto(addr138);
                                                                        }
                                                                        §§goto(addr508);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr582);
                                       }
                                       break;
                                    }
                                    addr581:
                                    §§goto(addr582);
                                 }
                              }
                              §§goto(addr197);
                           }
                        }
                     }
                  }
               }
               addr582:
               if(§§pop() == §§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     addr590:
                     this.§9g§ = param1.type == KeyboardEvent.KEY_DOWN;
                     §§goto(addr598);
                  }
               }
               addr598:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc6_ || _loc3_)
                  {
                     continue loop11;
                  }
                  addr113:
                  §§push(Boolean(§§pop()));
                  if(_loc5_)
                  {
                     continue loop13;
                  }
                  if(!_loc6_)
                  {
                     §§goto(addr198);
                  }
               }
               return;
            }
            §§goto(addr581);
         }
         §§goto(addr131);
      }
      
      private function §4x§(param1:§]!B§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§]!B§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§]!B§ = null;
         §§push(§+![§);
         if(_loc9_)
         {
            §§push(§§pop() * §+![§);
            if(_loc9_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§const§)
         {
            if(_loc9_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(_loc9_)
               {
                  _loc5_ = §§pop();
                  addr94:
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                  }
                  _loc2_ = _loc4_;
                  break;
               }
               if(§§pop() > _loc3_)
               {
                  continue;
               }
            }
            §§goto(addr94);
         }
         if(!(_loc8_ && _loc3_))
         {
            if(!_loc2_)
            {
               param1.§!!f§(1);
               loop1:
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(!(_loc8_ && param1))
                     {
                        continue;
                     }
                  }
                  addr173:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               param1.§!!f§(_loc2_.§8!C§ + 1);
               §§goto(addr184);
            }
         }
         §§goto(addr173);
      }
      
      private function §>W§(param1:§]!B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§=!%§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ || param1)
                  {
                     if(_loc4_ || this)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           this.§=!%§.push(param1);
                           addr76:
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                           continue;
                        }
                        addr124:
                        this.§=!%§.splice(_loc2_,1);
                     }
                     addr84:
                     §§push(_loc2_);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() - 1);
                        if(_loc4_ || this)
                        {
                        }
                        addr112:
                        _loc2_ = §§pop();
                        continue;
                     }
                     §§goto(addr112);
                     §§push(int(§§pop()));
                  }
                  §§goto(addr76);
               }
               else if(this.§=!%§[_loc2_].id == param1.id)
               {
                  §§goto(addr124);
               }
               §§goto(addr84);
            }
            §§goto(addr112);
         }
      }
      
      private function §^!0§(param1:int) : §]!B§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]!B§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§=!%§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §;!h§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,!_§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §;!h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§;!h§ != param1)
            {
               return;
            }
         }
      }
   }
}
