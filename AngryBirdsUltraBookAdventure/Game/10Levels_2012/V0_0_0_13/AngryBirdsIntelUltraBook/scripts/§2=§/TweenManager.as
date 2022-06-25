package §2=§
{
   public class TweenManager
   {
      
      public static const §[u§:String = "linear";
      
      public static const § !V§:String = "sine_in";
      
      public static const §-!g§:String = "sine_out";
      
      public static const §&T§:String = "quad_out";
      
      public static const §5!@§:String = "quad_in";
      
      public static const §0D§:String = "bounce_out";
      
      public static const §#Z§:String = "bounce_in";
      
      public static const §7x§:String = "circular_out";
      
      public static const §package§:String = "circular_in";
      
      private static var sInstance:TweenManager;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[u§ = "linear";
            loop0:
            while(true)
            {
               § !V§ = "sine_in";
               loop1:
               while(true)
               {
                  §-!g§ = "sine_out";
                  while(true)
                  {
                     §&T§ = "quad_out";
                     while(!_loc1_)
                     {
                        §5!@§ = "quad_in";
                        while(true)
                        {
                           §0D§ = "bounce_out";
                           continue loop1;
                        }
                        if(!(_loc1_ && TweenManager))
                        {
                           return;
                           addr39:
                        }
                     }
                     continue loop0;
                     addr61:
                     if(!(_loc2_ || TweenManager))
                     {
                        continue;
                     }
                     §package§ = "circular_in";
                     addr68:
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           while(!_loc1_)
                           {
                              §7x§ = "circular_out";
                              while(_loc2_ || TweenManager)
                              {
                                 §§goto(addr61);
                                 §§goto(addr68);
                              }
                              continue loop1;
                           }
                           §§goto(addr102);
                           addr73:
                        }
                        §§goto(addr32);
                     }
                     §§goto(addr44);
                  }
               }
            }
         }
         while(true)
         {
            §#Z§ = "bounce_in";
            §§goto(addr73);
         }
         §§goto(addr39);
      }
      
      private var §`G§:Vector.<§4x§>;
      
      private var §"!&§:Boolean;
      
      private var §+j§:Boolean = true;
      
      public function TweenManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`G§ = new Vector.<§4x§>();
            do
            {
               super();
            }
            while(_loc1_);
            
         }
      }
      
      public static function get §8!X§() : TweenManager
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && TweenManager))
         {
            §§push(sInstance);
            if(!(_loc1_ && TweenManager))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     sInstance = new TweenManager();
                     addr51:
                     §§push(sInstance);
                  }
               }
               §§goto(addr51);
            }
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function set §8!,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+j§ = param1;
         }
      }
      
      public function §8!?§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4x§ = null;
         var _loc1_:* = int(this.§`G§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`G§[_loc1_];
            if(!_loc3_)
            {
               if(_loc2_.§2!_§)
               {
                  while(true)
                  {
                     this.§`G§.splice(_loc1_,1);
                     addr94:
                     while(true)
                     {
                        addr80:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr84:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr88);
                     }
                     §§goto(addr80);
                  }
               }
               continue;
            }
            §§goto(addr94);
         }
      }
      
      public function §8m§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §!T§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:SimpleTween = new SimpleTween(param1,param2,param3,param4,param5);
         if(_loc8_)
         {
            _loc6_.§8!,§ = this.§+j§;
            do
            {
               this.§`G§.push(_loc6_);
            }
            while(!_loc8_);
            
         }
         return _loc6_;
      }
      
      public function §`!6§(... rest) : §!T§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§=N§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§`G§.indexOf(_loc2_);
               if(_loc7_)
               {
                  this.§`G§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new SimpleTweenContainer(rest,true);
         if(_loc7_)
         {
            _loc3_.§8!,§ = this.§+j§;
            do
            {
               this.§`G§.push(_loc3_);
            }
            while(!(_loc7_ || _loc3_));
            
         }
         return _loc3_;
      }
      
      public function §[!D§(... rest) : §!T§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§=N§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_)
            {
               _loc4_ = this.§`G§.indexOf(_loc2_);
               if(_loc7_ || rest)
               {
                  this.§`G§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new SimpleTweenContainer(rest,false);
         if(_loc7_)
         {
            _loc3_.§8!,§ = this.§+j§;
            do
            {
               this.§`G§.push(_loc3_);
            }
            while(_loc8_ && this);
            
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!&§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§"!&§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:§4x§ = null;
         if(_loc5_)
         {
            if(this.§"!&§)
            {
               if(!_loc6_)
               {
                  §§goto(addr28);
               }
            }
            §§push(0);
            if(_loc5_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(_loc2_ < this.§`G§.length)
            {
               §§push(false);
               if(_loc5_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc3_ = §§pop();
               if(!_loc5_)
               {
                  break;
               }
               _loc4_ = this.§`G§[_loc2_];
               if(!_loc6_)
               {
                  _loc4_.update(param1);
                  loop1:
                  while(true)
                  {
                     if(_loc4_.isCompleted)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           this.§`G§.splice(_loc2_,1);
                           addr160:
                           while(true)
                           {
                              _loc4_.dispose();
                              loop5:
                              while(true)
                              {
                                 addr118:
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr120:
                                    addr127:
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§§pop() - 1);
                                       if(!_loc6_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       addr124:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr125:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop3;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           addr160:
                        }
                        §§goto(addr160);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc5_)
                              {
                                 addr87:
                                 §§push(int(§§pop()));
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc6_ && param1))
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr87);
                        §§goto(addr127);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr160);
            }
            return;
         }
         addr28:
      }
   }
}
