package starling.events
{
   import §,_§.Stage;
   import flash.geom.Point;
   
   public class §[y§
   {
      
      private static const §3!9§:Number = 0.3;
      
      private static const §;>§:Number = 25;
      
      private static var §,%§:Vector.<int>;
      
      private static var § 4§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[y§))
         {
            §3!9§ = 0.3;
            if(_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr59);
         }
         addr39:
         if(_loc2_ || §[y§)
         {
            addr59:
            §,%§ = new Vector.<int>(0);
            if(_loc2_ || §[y§)
            {
               § 4§ = new Vector.<Object>(0);
            }
         }
      }
      
      private var §?$§:Stage;
      
      private var §3[§:Number;
      
      private var §"!'§:Number;
      
      private var §>$§:§<^§;
      
      private var §2b§:Vector.<§+!§>;
      
      private var §`q§:Vector.<Array>;
      
      private var §-e§:Vector.<§+!§>;
      
      private var §8F§:Boolean = false;
      
      private var §?a§:Boolean = false;
      
      public function §[y§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_ || param1)
         {
            this.§?$§ = param1;
            if(_loc3_ || _loc3_)
            {
               this.§3[§ = this.§"!'§ = 0;
               this.§2b§ = new Vector.<§+!§>(0);
               if(_loc3_)
               {
                  this.§`q§ = new Vector.<Array>(0);
               }
               this.§-e§ = new Vector.<§+!§>(0);
               if(_loc3_ || param1)
               {
               }
               addr119:
               this.§?$§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
               addr122:
               return;
               addr115:
               addr117:
            }
            §§push(this.§?$§);
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
            §§push(this.§?$§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(KeyboardEvent.KEY_DOWN);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.onKey);
                  if(_loc2_ || this)
                  {
                     addr71:
                     this.§?$§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
                     if(!_loc1_)
                     {
                        addr76:
                        §§push(this.§>$§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 addr90:
                                 this.§>$§.dispose();
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
         var _loc4_:§+!§ = null;
         var _loc5_:§+!§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc10_ && _loc2_))
         {
            §§push(this);
            §§push(this.§3[§);
            if(_loc11_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§3[§ = §§pop();
            if(_loc11_ || _loc3_)
            {
               this.§"!'§ = 0;
               if(_loc11_ || this)
               {
                  addr70:
                  if(this.§-e§.length > 0)
                  {
                     if(_loc11_)
                     {
                        addr77:
                        _loc2_ = int(this.§-e§.length - 1);
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
                                    while(this.§`q§.length > 0)
                                    {
                                       §,%§.length = § 4§.length = 0;
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
                                                   var _loc9_:* = this.§2b§;
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
                                                                     §§push(this.§`q§.length > 0);
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
                                                                                 if(§,%§.indexOf(this.§`q§[this.§`q§.length - 1][0]) != -1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc3_ = (_loc7_ = this.§`q§.pop())[0] as int;
                                                                                 §§push(Boolean(_loc4_ = this.§`! §(_loc3_)));
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
                                                                                             §§push(_loc4_.phase == §9j§.§"s§);
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                             }
                                                                                             addr312:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   § 4§.push({
                                                                                                      "touch":_loc4_,
                                                                                                      "target":_loc4_.target
                                                                                                   });
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr325:
                                                                                                      this.§6'§.apply(this,_loc7_);
                                                                                                      if(_loc10_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   §,%§.push(_loc3_);
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
                                                                                    _loc9_ = § 4§;
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
                                                                                                   _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§8m§,this.§2b§,this.§8F§,this.§?a§));
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
                                                                                                §§push(this.§2b§.length - 1);
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
                                                                                                         if(this.§2b§[_loc2_].phase == §9j§.§@q§)
                                                                                                         {
                                                                                                            addr527:
                                                                                                            if(!(_loc11_ || this))
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§2b§.splice(_loc2_,1);
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
                                                                                                   §§push(this.§"!'§);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 0.00001);
                                                                                                   }
                                                                                                   §§pop().§"!'§ = §§pop();
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
                                                                                 _loc9_ = §,%§;
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
                                                                                    §§push((_loc4_ = this.§`! §(_loc3_)).target);
                                                                                    if(_loc11_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             addr492:
                                                                                             _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§8m§,this.§2b§,this.§8F§,this.§?a§));
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
                                                               §§push(§9j§.§3L§);
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
                                                                              if(_loc5_.phase != §9j§.§#U§)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           _loc5_.§'r§(§9j§.§2c§);
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
                                 §§push(this.§3[§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() - this.§-e§[_loc2_].timestamp);
                                    if(!_loc10_)
                                    {
                                       addr97:
                                       if(§§pop() > §3!9§)
                                       {
                                          if(!_loc10_)
                                          {
                                             this.§-e§.splice(_loc2_,1);
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
            this.§`q§.unshift(arguments);
            §§push(Boolean(this.§?a§));
            §§push(Boolean(this.§?a§));
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§1=§);
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
                              this.§>$§.§^"§(param3,param4,this.§8F§);
                              if(_loc6_ && this)
                              {
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr110);
                     }
                     this.§`q§.unshift([1,param2,this.§>$§.§-!?§,this.§>$§.§!M§]);
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr63);
         }
         addr110:
      }
      
      private function §6'§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§+!§;
         if((_loc6_ = this.§`! §(param1)) == null)
         {
            _loc6_ = new §+!§(param1,param3,param4,param2,null);
            if(!_loc7_)
            {
               this.§[N§(_loc6_);
            }
         }
         _loc6_.setPosition(param3,param4);
         if(!(_loc7_ && param1))
         {
            _loc6_.§'r§(param2);
            if(_loc8_)
            {
               §§push(_loc6_);
               §§push(this.§3[§);
               if(_loc8_)
               {
                  §§push(§§pop() + this.§"!'§);
               }
               §§pop().§+!'§(§§pop());
               if(_loc8_)
               {
                  addr82:
                  §§push(param2);
                  if(_loc8_ || this)
                  {
                     §§push(§9j§.§"s§);
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
                                 §§push(§9j§.§3L§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc8_ || this)
                                    {
                                       addr156:
                                       this.§4!$§(_loc6_);
                                    }
                                 }
                                 return;
                                 §§push(§9j§.§3L§);
                              }
                           }
                           if(§§pop())
                           {
                              _loc6_.§#^§(this.§?$§.hitTest(_loc5_,true));
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
         var _loc3_:§+!§ = null;
         var _loc4_:§+!§ = null;
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
                                       §§push(this.§?a§);
                                       if(!(_loc5_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                          this.§?a§ = param1.type == KeyboardEvent.KEY_DOWN;
                                          §§push(this.§1=§);
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
                                                      §§push(_loc2_ == this.§?a§);
                                                      if(_loc6_)
                                                      {
                                                         addr115:
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§>$§);
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§pop().visible = this.§?a§;
                                                               addr128:
                                                               §§push(this.§>$§);
                                                            }
                                                            §§pop().§2n§(this.§?$§.stageWidth / 2,this.§?$§.stageHeight / 2);
                                                            _loc3_ = this.§`! §(0);
                                                            _loc4_ = this.§`! §(1);
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  this.§>$§.§^"§(_loc3_.globalX,_loc3_.globalY);
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
                                                                                          §§push(§9j§.§@q§);
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
                                                                                                      this.§`q§.unshift([1,§9j§.§@q§,_loc4_.globalX,_loc4_.globalY]);
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
                                                                                                   §§push(Boolean(this.§?a§));
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
                                                                                                                           §§push(§9j§.§3L§);
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
                                                                                                                                       §§push(§9j§.§#U§);
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
                                                                                                                                 this.§`q§.unshift([1,§9j§.§3L§,this.§>$§.§-!?§,this.§>$§.§!M§]);
                                                                                                                              }
                                                                                                                              §§goto(addr351);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§`q§.unshift([1,§9j§.§"s§,this.§>$§.§-!?§,this.§>$§.§!M§]);
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
                                    this.§8F§ = param1.type == KeyboardEvent.KEY_DOWN;
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
      
      private function §4!$§(param1:§+!§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§+!§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§+!§ = null;
         §§push(§;>§);
         if(!(_loc8_ && param1))
         {
            §§push(§§pop() * §;>§);
            if(_loc9_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§-e§)
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
                     param1.§ s§(_loc2_.§1!B§ + 1);
                     if(!_loc8_)
                     {
                        this.§-e§.splice(this.§-e§.indexOf(_loc2_),1);
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
                  param1.§ s§(1);
                  if(!(_loc8_ && this))
                  {
                     §§goto(addr153);
                  }
               }
            }
            addr153:
            this.§-e§.push(param1.clone());
            return;
         }
         §§goto(addr37);
      }
      
      private function §[N§(param1:§+!§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§2b§.length - 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  if(this.§2b§[_loc2_].id == param1.id)
                  {
                     if(_loc3_)
                     {
                        this.§2b§.splice(_loc2_,1);
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
            this.§2b§.push(param1);
            addr99:
            return;
         }
      }
      
      private function §`! §(param1:int) : §+!§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+!§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§2b§)
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
      
      public function get §1=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>$§ == null);
         if(!_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function set §1=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§1=§ != param1)
            {
               return;
            }
         }
      }
   }
}
