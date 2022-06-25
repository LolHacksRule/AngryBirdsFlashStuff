package starling.events
{
   import §&o§.Stage;
   import flash.geom.Point;
   
   public class §3g§
   {
      
      private static const §+j§:Number = 0.3;
      
      private static const §>=§:Number = 25;
      
      private static var §9!N§:Vector.<int>;
      
      private static var §]E§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+j§ = 0.3;
            if(_loc1_)
            {
               addr33:
               §>=§ = 25;
               if(_loc1_ || _loc2_)
               {
                  §9!N§ = new Vector.<int>(0);
                  if(_loc1_ || §3g§)
                  {
                  }
                  §§goto(addr76);
               }
               §]E§ = new Vector.<Object>(0);
            }
            addr76:
            return;
         }
         §§goto(addr33);
      }
      
      private var §]!M§:Stage;
      
      private var §7h§:Number;
      
      private var §5!"§:Number;
      
      private var § U§:§;=§;
      
      private var §,!$§:Vector.<§7+§>;
      
      private var §1!&§:Vector.<Array>;
      
      private var §-%§:Vector.<§7+§>;
      
      private var § b§:Boolean = false;
      
      private var §@<§:Boolean = false;
      
      public function §3g§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         if(_loc4_)
         {
            this.§]!M§ = param1;
            this.§7h§ = this.§5!"§ = 0;
            if(_loc4_)
            {
               this.§,!$§ = new Vector.<§7+§>(0);
               this.§1!&§ = new Vector.<Array>(0);
               addr35:
               if(_loc4_)
               {
                  this.§-%§ = new Vector.<§7+§>(0);
                  addr63:
               }
               §§push(this.§]!M§);
               if(_loc4_ || param1)
               {
                  §§push(KeyboardEvent.KEY_DOWN);
                  if(!(_loc3_ && this))
                  {
                     §§pop().addEventListener(§§pop(),this.onKey);
                     addr104:
                     §§push(this.§]!M§);
                     §§push(KeyboardEvent.KEY_UP);
                  }
                  §§pop().addEventListener(§§pop(),this.onKey);
                  return;
               }
               §§goto(addr104);
            }
            §§goto(addr63);
         }
         §§goto(addr35);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]!M§);
            if(_loc1_ || _loc2_)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               if(_loc1_ || _loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.onKey);
                  if(!_loc2_)
                  {
                     this.§]!M§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
                     addr55:
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.§ U§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 addr94:
                                 this.§ U§.dispose();
                              }
                           }
                           return;
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr94);
               }
            }
         }
         §§goto(addr55);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§7+§ = null;
         var _loc5_:§7+§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§7h§);
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§7h§ = §§pop();
            if(!(_loc11_ && _loc2_))
            {
               addr54:
               this.§5!"§ = 0;
               if(_loc10_ || _loc3_)
               {
                  if(this.§-%§.length > 0)
                  {
                     if(_loc10_ || _loc2_)
                     {
                        _loc2_ = int(this.§-%§.length - 1);
                        addr82:
                        loop0:
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(0);
                           if(_loc10_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 addr127:
                                 loop6:
                                 while(true)
                                 {
                                    if(this.§1!&§.length > 0)
                                    {
                                       §9!N§.length = §]E§.length = 0;
                                       if(_loc10_)
                                       {
                                          §§push(0);
                                          if(!(_loc11_ && param1))
                                          {
                                             var _loc8_:* = §§pop();
                                             if(_loc10_)
                                             {
                                                var _loc9_:* = this.§,!$§;
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§1!&§.length > 0);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           addr355:
                                                                           §§pop();
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr376:
                                                                              if(§9!N§.indexOf(this.§1!&§[this.§1!&§.length - 1][0]) != -1)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr380:
                                                                                    _loc8_ = §§pop();
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       _loc9_ = §]E§;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc9_,_loc8_));
                                                                                          if(_loc10_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                if(_loc6_.touch.target != _loc6_.target)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!4§,this.§,!$§,this.§ b§,this.§@<§));
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr430:
                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                {
                                                                                                   addr438:
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      addr552:
                                                                                                      §§push(0);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            addr457:
                                                                                                            _loc9_ = §9!N§;
                                                                                                            if(!(_loc11_ && this))
                                                                                                            {
                                                                                                               addr504:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                  break loop7;
                                                                                                               }
                                                                                                               addr504:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push((_loc4_ = this.§-1§(_loc3_)).target);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!4§,this.§,!$§,this.§ b§,this.§@<§));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr504);
                                                                                                               }
                                                                                                               §§goto(addr493);
                                                                                                            }
                                                                                                            addr474:
                                                                                                         }
                                                                                                         addr507:
                                                                                                         §§push(this.§,!$§.length - 1);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_ = int(§§pop());
                                                                                                            addr514:
                                                                                                            loop15:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr570:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  addr571:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr512:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         if(_loc11_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr570);
                                                                                                      }
                                                                                                      addr552:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_ - 1);
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr552);
                                                                                                      }
                                                                                                      §§goto(addr571);
                                                                                                   }
                                                                                                   addr543:
                                                                                                }
                                                                                                §§goto(addr507);
                                                                                             }
                                                                                          }
                                                                                          break loop7;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr507);
                                                                                 }
                                                                                 §§goto(addr571);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc3_ = (_loc7_ = this.§1!&§.pop())[0] as int;
                                                                                 §§push(Boolean(_loc4_ = this.§-1§(_loc3_)));
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(_loc4_.phase == §>;§.§+S§);
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr281:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            addr300:
                                                                                                            §§pop();
                                                                                                            if(_loc11_ && param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr311:
                                                                                                            if(_loc4_.target)
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §]E§.push({
                                                                                                                     "touch":_loc4_,
                                                                                                                     "target":_loc4_.target
                                                                                                                  });
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr331:
                                                                                                                  §9!N§.push(_loc3_);
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr331);
                                                                                                            }
                                                                                                            this.§@!8§.apply(this,_loc7_);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                           }
                                                                           §§goto(addr543);
                                                                        }
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                            }
                                                            §§goto(addr438);
                                                         }
                                                         §§goto(addr430);
                                                      }
                                                      else
                                                      {
                                                         _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                         §§push(_loc5_.phase);
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(§>;§.§7!=§);
                                                            if(!(_loc11_ && _loc2_))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        addr192:
                                                                        §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           addr200:
                                                                           if(_loc5_.phase != §>;§.§"%§)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc5_.§-!A§(§>;§.§0!9§);
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(§§pop())
                                                {
                                                   _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                   §§goto(addr474);
                                                   §§goto(addr504);
                                                }
                                                §§goto(addr506);
                                             }
                                             §§goto(addr457);
                                          }
                                          §§goto(addr380);
                                       }
                                       while(true)
                                       {
                                          this.§,!$§.splice(_loc2_,1);
                                          if(!(_loc11_ && param1))
                                          {
                                             break;
                                          }
                                          addr575:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§5!"§);
                                             if(_loc10_ || _loc2_)
                                             {
                                                §§push(§§pop() + 0.00001);
                                             }
                                             §§pop().§5!"§ = §§pop();
                                             if(_loc11_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr438);
                                       addr531:
                                    }
                                    §§goto(addr595);
                                 }
                              }
                              else
                              {
                                 §§push(this.§7h§);
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    §§push(§§pop() - this.§-%§[_loc2_].timestamp);
                                    if(_loc10_ || param1)
                                    {
                                       if(§§pop() > §+j§)
                                       {
                                          if(_loc10_)
                                          {
                                             this.§-%§.splice(_loc2_,1);
                                             if(_loc10_)
                                             {
                                                addr117:
                                                §§push(_loc2_ - 1);
                                                if(!_loc11_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr552);
                                             }
                                             §§goto(addr575);
                                          }
                                          §§goto(addr514);
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                              }
                              §§goto(addr512);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc10_)
                              {
                                 §§goto(addr575);
                              }
                              addr595:
                              return;
                           }
                           if(this.§,!$§[_loc2_].phase == §>;§.§1!@§)
                           {
                              if(!(_loc11_ && param1))
                              {
                                 §§goto(addr531);
                              }
                              §§goto(addr575);
                           }
                           §§goto(addr438);
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr127);
               }
            }
            §§goto(addr82);
         }
         §§goto(addr54);
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§1!&§.unshift(arguments);
         §§push(Boolean(this.§@<§));
         if(_loc6_)
         {
            §§push(§§pop());
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     §§push(this.§?I§);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr47);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr47:
               §§goto(addr58);
            }
            addr58:
            if(§§pop())
            {
               if(_loc6_)
               {
                  addr61:
                  §§pop();
                  §§push(param1 == 0);
               }
            }
            if(§§pop())
            {
               this.§ U§.§%!$§(param3,param4,this.§ b§);
               if(!_loc7_)
               {
                  this.§1!&§.unshift([1,param2,this.§ U§.§-!3§,this.§ U§.§7k§]);
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      private function §@!8§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§7+§;
         if((_loc6_ = this.§-1§(param1)) == null)
         {
            if(!_loc8_)
            {
               _loc6_ = new §7+§(param1,param3,param4,param2,null);
               if(_loc7_)
               {
                  this.§3!B§(_loc6_);
                  addr46:
                  _loc6_.setPosition(param3,param4);
                  _loc6_.§-!A§(param2);
                  if(_loc7_)
                  {
                     §§push(_loc6_);
                     §§push(this.§7h§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + this.§5!"§);
                     }
                     §§pop().§2y§(§§pop());
                  }
                  §§push(param2);
                  if(_loc7_ || param2)
                  {
                     §§push(§>;§.§+S§);
                     if(_loc7_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc8_)
                        {
                           if(!§§pop())
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr93);
                              }
                           }
                           §§goto(addr112);
                        }
                        addr93:
                        §§pop();
                        §§push(param2);
                        if(_loc7_)
                        {
                           addr97:
                           §§push(§>;§.§7!=§);
                           if(!_loc8_)
                           {
                              addr112:
                              if(§§pop() == §§pop())
                              {
                                 _loc6_.§'^§(this.§]!M§.hitTest(_loc5_,true));
                                 if(!(_loc8_ && param3))
                                 {
                                    §§goto(addr127);
                                 }
                                 §§goto(addr138);
                              }
                              addr127:
                              §§goto(addr130);
                           }
                           addr130:
                           §§goto(addr128);
                        }
                        addr128:
                        if(param2 == §>;§.§7!=§)
                        {
                           if(!(_loc8_ && param1))
                           {
                              addr138:
                              this.§7!>§(_loc6_);
                           }
                        }
                        return;
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr97);
               }
               §§goto(addr46);
            }
            §§goto(addr127);
         }
         §§goto(addr46);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§7+§ = null;
         var _loc4_:§7+§ = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(param1.keyCode);
            if(!(_loc6_ && _loc2_))
            {
               §§push(17);
               if(_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(param1.keyCode);
                           if(!_loc6_)
                           {
                              §§push(15);
                              if(_loc5_ || param1)
                              {
                                 addr68:
                                 §§push(§§pop() == §§pop());
                                 if(!_loc6_)
                                 {
                                    addr71:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          addr79:
                                          §§push(this.§@<§);
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc5_ || _loc2_)
                                             {
                                                _loc2_ = §§pop();
                                                addr131:
                                                if(!_loc6_)
                                                {
                                                   this.§@<§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                   §§push(this.§?I§);
                                                }
                                                this.§ U§.§#q§(this.§]!M§.stageWidth / 2,this.§]!M§.stageHeight / 2);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   _loc3_ = this.§-1§(0);
                                                   _loc4_ = this.§-1§(1);
                                                   if(_loc3_)
                                                   {
                                                      this.§ U§.§%!$§(_loc3_.globalX,_loc3_.globalY);
                                                   }
                                                   §§push(Boolean(_loc2_));
                                                   §§push(Boolean(_loc2_));
                                                   if(_loc5_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(Boolean(_loc4_));
                                                         if(_loc5_)
                                                         {
                                                            addr198:
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     §§push(_loc4_.phase);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(§>;§.§1!@§);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           addr224:
                                                                           §§push(§§pop() != §§pop());
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              addr232:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    this.§1!&§.unshift([1,§>;§.§1!@§,_loc4_.globalX,_loc4_.globalY]);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr271:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc3_.phase);
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                addr290:
                                                                                                §§push(§>;§.§7!=§);
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   addr300:
                                                                                                   if(§§pop() == §§pop() || _loc3_.phase == §>;§.§"%§)
                                                                                                   {
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr316:
                                                                                                         this.§1!&§.unshift([1,§>;§.§7!=§,this.§ U§.§-!3§,this.§ U§.§7k§]);
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            addr372:
                                                                                                            return;
                                                                                                            addr360:
                                                                                                            addr346:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.§1!&§.unshift([1,§>;§.§+S§,this.§ U§.§-!3§,this.§ U§.§7k§]);
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr307);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr360);
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(Boolean(this.§@<§));
                                                                                 §§push(Boolean(this.§@<§));
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    addr260:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          addr268:
                                                                                          §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr271);
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       §§goto(addr300);
                                                                                    }
                                                                                    §§goto(addr271);
                                                                                 }
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                else
                                                {
                                                   addr365:
                                                   this.§ b§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                   §§goto(addr372);
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   addr109:
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      addr114:
                                                      §§push(_loc2_ == this.§@<§);
                                                      if(!_loc6_)
                                                      {
                                                         addr117:
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr119:
                                                      §§push(this.§ U§);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§pop().visible = this.§@<§;
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr114);
                                             }
                                             §§goto(addr117);
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr131);
                                    }
                                    else
                                    {
                                       addr364:
                                       if(param1.keyCode == 16)
                                       {
                                          §§goto(addr365);
                                       }
                                    }
                                    §§goto(addr372);
                                 }
                                 §§goto(addr117);
                              }
                           }
                           §§goto(addr364);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr109);
               }
               §§goto(addr68);
            }
            §§goto(addr364);
         }
         §§goto(addr79);
      }
      
      private function §7!>§(param1:§7+§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§7+§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§7+§ = null;
         §§push(§>=§);
         if(_loc9_ || param1)
         {
            §§push(§§pop() * §>=§);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§-%§)
         {
            if(_loc9_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc9_ || _loc3_)
                  {
                     _loc5_ = §§pop();
                     addr98:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr100:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr98);
            }
            §§goto(addr100);
         }
         if(!_loc8_)
         {
            if(_loc2_)
            {
               if(!(_loc8_ && _loc2_))
               {
                  param1.§]!4§(_loc2_.§?[§ + 1);
                  if(_loc9_)
                  {
                     this.§-%§.splice(this.§-%§.indexOf(_loc2_),1);
                     if(_loc8_)
                     {
                     }
                  }
               }
               §§goto(addr158);
            }
            else
            {
               param1.§]!4§(1);
               if(_loc9_ || _loc2_)
               {
                  §§goto(addr158);
               }
            }
            §§goto(addr158);
         }
         addr158:
         this.§-%§.push(param1.clone());
      }
      
      private function §3!B§(param1:§7+§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§,!$§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr95);
               }
               if(this.§,!$§[_loc2_].id == param1.id)
               {
                  if(!_loc3_)
                  {
                     this.§,!$§.splice(_loc2_,1);
                     if(_loc3_ && _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               _loc2_ = §§pop();
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            this.§,!$§.push(param1);
            addr95:
            return;
         }
      }
      
      private function §-1§(param1:int) : §7+§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7+§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§,!$§)
         {
            if(!(_loc5_ && _loc3_))
            {
               if(_loc2_.id == param1)
               {
                  if(!_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §?I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§ U§ == null);
         if(!(_loc2_ && _loc1_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function set §?I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§?I§ != param1)
            {
               return;
            }
         }
      }
   }
}
