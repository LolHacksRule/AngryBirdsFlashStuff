package starling.events
{
   import §?^§.Stage;
   import flash.geom.Point;
   
   public class §"!#§
   {
      
      private static const §>e§:Number = 0.3;
      
      private static const §+#§:Number = 25;
      
      private static var §^g§:Vector.<int>;
      
      private static var §#e§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §"!#§))
         {
            §>e§ = 0.3;
            if(_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr59);
         }
         addr39:
         if(_loc2_ || §"!#§)
         {
            addr59:
            §^g§ = new Vector.<int>(0);
            if(_loc2_ || §"!#§)
            {
               §#e§ = new Vector.<Object>(0);
            }
         }
      }
      
      private var §<!1§:Stage;
      
      private var §1r§:Number;
      
      private var §>!4§:Number;
      
      private var §;K§:§='§;
      
      private var §^!'§:Vector.<§?l§>;
      
      private var §=d§:Vector.<Array>;
      
      private var §!U§:Vector.<§?l§>;
      
      private var §7-§:Boolean = false;
      
      private var §+&§:Boolean = false;
      
      public function §"!#§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_ || param1)
         {
            this.§<!1§ = param1;
            if(_loc3_ || _loc3_)
            {
               this.§1r§ = this.§>!4§ = 0;
               this.§^!'§ = new Vector.<§?l§>(0);
               if(_loc3_)
               {
                  this.§=d§ = new Vector.<Array>(0);
               }
               this.§!U§ = new Vector.<§?l§>(0);
               if(_loc3_ || param1)
               {
               }
               addr119:
               this.§<!1§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
               addr122:
               return;
               addr115:
               addr117:
            }
            §§push(this.§<!1§);
            if(_loc3_ || _loc3_)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               if(_loc3_)
               {
                  §§pop().addEventListener(§§pop(),this.onKey);
                  if(!_loc4_)
                  {
                     §§goto(addr115);
                  }
                  §§goto(addr122);
               }
               §§goto(addr119);
            }
            §§goto(addr117);
         }
         §§goto(addr119);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§<!1§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(KeyboardEvent.KEY_DOWN);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.onKey);
                  if(_loc2_ || this)
                  {
                     addr71:
                     this.§<!1§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
                     if(!_loc1_)
                     {
                        addr76:
                        §§push(this.§;K§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 addr90:
                                 this.§;K§.dispose();
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr71);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§?l§ = null;
         var _loc5_:§?l§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc10_ && _loc2_))
         {
            §§push(this);
            §§push(this.§1r§);
            if(_loc11_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§1r§ = §§pop();
            if(_loc11_ || _loc3_)
            {
               this.§>!4§ = 0;
               if(_loc11_ || this)
               {
                  addr70:
                  if(this.§!U§.length > 0)
                  {
                     if(_loc11_)
                     {
                        addr77:
                        _loc2_ = int(this.§!U§.length - 1);
                        addr83:
                        loop12:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc10_)
                           {
                              §§push(0);
                              if(_loc11_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    addr118:
                                    loop0:
                                    while(this.§=d§.length > 0)
                                    {
                                       §^g§.length = §#e§.length = 0;
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(0);
                                          if(!_loc10_)
                                          {
                                             addr139:
                                             while(true)
                                             {
                                                var _loc8_:* = §§pop();
                                                if(_loc11_)
                                                {
                                                   var _loc9_:* = this.§^!'§;
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc11_ || param1)
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=d§.length > 0);
                                                                     if(_loc11_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 addr372:
                                                                                 if(§^g§.indexOf(this.§=d§[this.§=d§.length - 1][0]) != -1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc3_ = (_loc7_ = this.§=d§.pop())[0] as int;
                                                                                 §§push(Boolean(_loc4_ = this.§7W§(_loc3_)));
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc11_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(_loc4_.phase == §,R§.§+!8§);
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                             }
                                                                                             addr312:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §#e§.push({
                                                                                                      "touch":_loc4_,
                                                                                                      "target":_loc4_.target
                                                                                                   });
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr325:
                                                                                                      this.§6!7§.apply(this,_loc7_);
                                                                                                      if(_loc10_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   §^g§.push(_loc3_);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr325);
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc10_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc10_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(Boolean(_loc4_.target));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr312);
                                                                              }
                                                                              addr375:
                                                                              §§push(0);
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    _loc9_ = §#e§;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc9_,_loc8_));
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                             if(_loc6_.touch.target != _loc6_.target)
                                                                                             {
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§!r§,this.§^!'§,this.§7-§,this.§+&§));
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                addr443:
                                                                                                _loc8_ = 0;
                                                                                                addr441:
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                }
                                                                                                addr506:
                                                                                                §§push(this.§^!'§.length - 1);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         break loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      addr563:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            break loop9;
                                                                                                         }
                                                                                                         if(this.§^!'§[_loc2_].phase == §,R§.§?!>§)
                                                                                                         {
                                                                                                            addr527:
                                                                                                            if(!(_loc11_ || this))
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§^!'§.splice(_loc2_,1);
                                                                                                               addr549:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc11_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        break loop12;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               §§goto(addr527);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(this);
                                                                                                   §§push(this.§>!4§);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 0.00001);
                                                                                                   }
                                                                                                   §§pop().§>!4§ = §§pop();
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr511:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr506);
                                                                                       }
                                                                                       break loop1;
                                                                                    }
                                                                                 }
                                                                                 _loc9_ = §^g§;
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    addr503:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc9_,_loc8_));
                                                                                       break loop1;
                                                                                    }
                                                                                    addr503:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push((_loc4_ = this.§7W§(_loc3_)).target);
                                                                                    if(_loc11_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             addr492:
                                                                                             _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§!r§,this.§^!'§,this.§7-§,this.§+&§));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr503);
                                                                                    }
                                                                                    §§goto(addr492);
                                                                                 }
                                                                                 addr468:
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     §§goto(addr375);
                                                                  }
                                                                  §§goto(addr534);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            §§goto(addr505);
                                                         }
                                                         else
                                                         {
                                                            _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                            §§push(_loc5_.phase);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§,R§.§99§);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              addr186:
                                                                              if(_loc5_.phase != §,R§.§&5§)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           _loc5_.§-_§(§,R§.§"!@§);
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   while(§§pop())
                                                   {
                                                      _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                      §§goto(addr468);
                                                      §§goto(addr503);
                                                   }
                                                   §§goto(addr505);
                                                }
                                                §§goto(addr443);
                                             }
                                             addr139:
                                          }
                                          break loop12;
                                       }
                                       §§goto(addr549);
                                    }
                                    §§goto(addr577);
                                 }
                                 §§push(this.§1r§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() - this.§!U§[_loc2_].timestamp);
                                    if(!_loc10_)
                                    {
                                       addr97:
                                       if(§§pop() > §>e§)
                                       {
                                          if(!_loc10_)
                                          {
                                             this.§!U§.splice(_loc2_,1);
                                             addr106:
                                             §§push(_loc2_ - 1);
                                             if(_loc11_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr139);
                                          }
                                          addr577:
                                          return;
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr511);
                                 }
                                 §§goto(addr97);
                                 §§goto(addr139);
                              }
                              §§goto(addr563);
                           }
                           break;
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr561);
                        }
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr118);
               }
               §§goto(addr77);
            }
            §§goto(addr70);
         }
         §§goto(addr77);
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            this.§=d§.unshift(arguments);
            §§push(Boolean(this.§+&§));
            §§push(Boolean(this.§+&§));
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§^e§);
                     if(!_loc6_)
                     {
                        addr63:
                        §§push(Boolean(§§pop()));
                        if(Boolean(§§pop()))
                        {
                           §§goto(addr65);
                        }
                        §§goto(addr81);
                     }
                     addr65:
                     §§pop();
                     if(_loc7_)
                     {
                        addr81:
                        if(param1 == 0)
                        {
                           if(_loc7_)
                           {
                              this.§;K§.§08§(param3,param4,this.§7-§);
                              if(_loc6_ && this)
                              {
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr110);
                     }
                     this.§=d§.unshift([1,param2,this.§;K§.§1!;§,this.§;K§.§3$§]);
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr63);
         }
         addr110:
      }
      
      private function §6!7§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?l§;
         if((_loc6_ = this.§7W§(param1)) == null)
         {
            _loc6_ = new §?l§(param1,param3,param4,param2,null);
            if(!_loc7_)
            {
               this.§;R§(_loc6_);
            }
         }
         _loc6_.setPosition(param3,param4);
         if(!(_loc7_ && param1))
         {
            _loc6_.§-_§(param2);
            if(_loc8_)
            {
               §§push(_loc6_);
               §§push(this.§1r§);
               if(_loc8_)
               {
                  §§push(§§pop() + this.§>!4§);
               }
               §§pop().§+!>§(§§pop());
               if(_loc8_)
               {
                  addr82:
                  §§push(param2);
                  if(_loc8_ || this)
                  {
                     §§push(§,R§.§+!8§);
                     if(_loc8_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc8_ || param2)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc7_ && param1))
                              {
                                 addr111:
                                 §§pop();
                                 addr112:
                                 §§push(param2);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr148);
                                 }
                                 addr146:
                                 addr148:
                                 §§push(§,R§.§99§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc8_ || this)
                                    {
                                       addr156:
                                       this.§@6§(_loc6_);
                                    }
                                 }
                                 return;
                                 §§push(§,R§.§99§);
                              }
                           }
                           if(§§pop())
                           {
                              _loc6_.§8=§(this.§<!1§.hitTest(_loc5_,true));
                              if(_loc7_)
                              {
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr146);
                           §§push(param2);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr111);
               }
               §§goto(addr112);
            }
            §§goto(addr82);
         }
         §§goto(addr156);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:§?l§ = null;
         var _loc4_:§?l§ = null;
         if(!_loc5_)
         {
            §§push(param1.keyCode);
            if(_loc6_)
            {
               §§push(17);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || this)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(param1.keyCode);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(15);
                                 if(!_loc5_)
                                 {
                                    addr67:
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(this.§+&§);
                                       if(!(_loc5_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                          this.§+&§ = param1.type == KeyboardEvent.KEY_DOWN;
                                          §§push(this.§^e§);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr96:
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                             if(_loc6_ || param1)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      addr111:
                                                      §§push(_loc2_ == this.§+&§);
                                                      if(_loc6_)
                                                      {
                                                         addr115:
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§;K§);
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§pop().visible = this.§+&§;
                                                               addr128:
                                                               §§push(this.§;K§);
                                                            }
                                                            §§pop().§[n§(this.§<!1§.stageWidth / 2,this.§<!1§.stageHeight / 2);
                                                            _loc3_ = this.§7W§(0);
                                                            _loc4_ = this.§7W§(1);
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  this.§;K§.§08§(_loc3_.globalX,_loc3_.globalY);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr164:
                                                                     §§push(Boolean(_loc2_));
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr365);
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(_loc4_.phase);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§,R§.§?!>§);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                addr235:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr238:
                                                                                                      this.§=d§.unshift([1,§,R§.§?!>§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                      addr249:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr351:
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Boolean(this.§+&§));
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      addr260:
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         addr268:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(Boolean(_loc3_));
                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr293:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§push(_loc3_.phase);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§,R§.§99§);
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr309:
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(!(§§pop() == §§pop()))
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr322:
                                                                                                                                       §§push(_loc3_.phase);
                                                                                                                                       §§push(§,R§.§&5§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr365);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr325);
                                                                                                                           }
                                                                                                                           addr325:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 this.§=d§.unshift([1,§,R§.§99§,this.§;K§.§1!;§,this.§;K§.§3$§]);
                                                                                                                              }
                                                                                                                              §§goto(addr351);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§=d§.unshift([1,§,R§.§+!8§,this.§;K§.§1!;§,this.§;K§.§3$§]);
                                                                                                                              §§goto(addr365);
                                                                                                                           }
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr322);
                                                                                                                     }
                                                                                                                     §§goto(addr365);
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                               §§goto(addr351);
                                                                                                            }
                                                                                                            §§goto(addr325);
                                                                                                         }
                                                                                                         §§goto(addr293);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr260);
                                                                                          }
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              §§goto(addr235);
                                                                           }
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr365);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr115);
                                             }
                                             §§goto(addr111);
                                          }
                                       }
                                       §§goto(addr115);
                                    }
                                    else
                                    {
                                       addr368:
                                       §§push(param1.keyCode);
                                       §§push(16);
                                    }
                                    §§goto(addr365);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    this.§7-§ = param1.type == KeyboardEvent.KEY_DOWN;
                                 }
                              }
                              §§goto(addr368);
                           }
                           §§goto(addr365);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr96);
               }
               §§goto(addr67);
            }
            §§goto(addr368);
         }
         §§goto(addr111);
      }
      
      private function §@6§(param1:§?l§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§?l§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§?l§ = null;
         §§push(§+#§);
         if(!(_loc8_ && param1))
         {
            §§push(§§pop() * §+#§);
            if(_loc9_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§!U§)
            {
               if(!(_loc8_ && this))
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        _loc5_ = §§pop();
                        addr93:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr95:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
            if(!_loc8_)
            {
               if(_loc2_)
               {
                  if(_loc9_)
                  {
                     param1.§%!'§(_loc2_.§5!G§ + 1);
                     if(!_loc8_)
                     {
                        this.§!U§.splice(this.§!U§.indexOf(_loc2_),1);
                        if(_loc9_ || this)
                        {
                           addr142:
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr142);
               }
               else
               {
                  param1.§%!'§(1);
                  if(!(_loc8_ && this))
                  {
                     §§goto(addr153);
                  }
               }
            }
            addr153:
            this.§!U§.push(param1.clone());
            return;
         }
         §§goto(addr37);
      }
      
      private function §;R§(param1:§?l§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§^!'§.length - 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  if(this.§^!'§[_loc2_].id == param1.id)
                  {
                     if(_loc3_)
                     {
                        this.§^!'§.splice(_loc2_,1);
                        if(!_loc3_)
                        {
                           §§goto(addr99);
                        }
                     }
                  }
                  §§push(_loc2_);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc4_ && _loc3_))
                     {
                        continue loop0;
                     }
                  }
                  continue;
               }
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               §§goto(addr99);
            }
            addr95:
            this.§^!'§.push(param1);
            addr99:
            return;
         }
      }
      
      private function §7W§(param1:int) : §?l§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?l§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§^!'§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.id == param1)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §^e§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;K§ == null);
         if(!_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function set §^e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^e§ != param1)
            {
               return;
            }
         }
      }
   }
}
