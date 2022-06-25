package §^!A§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §8!J§
   {
      
      public static const §9!=§:String = "max";
      
      public static const §^e§:String = "average";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!=§ = "max";
            if(!(_loc1_ && _loc2_))
            {
               addr29:
               §^e§ = "average";
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §>L§:Number;
      
      private var §2P§:uint;
      
      private var §78§:Number;
      
      private var §94§:Number;
      
      private var §6!%§:Vector.<Number>;
      
      private var §#!8§:Vector.<Number>;
      
      private var §[x§:Vector.<Number>;
      
      private var §=s§:int = 0;
      
      private var §!!$§:Function;
      
      public function §8!J§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            this.§6!%§ = new Vector.<Number>();
            this.§#!8§ = new Vector.<Number>();
            if(!(_loc4_ && param1))
            {
               §§goto(addr64);
            }
            §§goto(addr77);
         }
         addr64:
         this.§[x§ = new Vector.<Number>();
         if(!(_loc4_ && this))
         {
            addr77:
            this.§`t§ = param2;
            this.limitMultiplier = param1;
         }
         this.§!!$§ = this.§2B§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§>L§ = param1;
            if(_loc3_ || _loc2_)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * this.§>L§);
               }
               §§pop().§78§ = §§pop();
               if(!_loc2_)
               {
                  addr70:
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() * this.§>L§);
                  }
                  §§pop().§94§ = §§pop();
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§>L§;
      }
      
      public function set §`t§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         this.§2P§ = param1;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§2P§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() < this.§6!%§.length)
               {
                  §§push(this.§6!%§.length - this.§2P§);
                  if(_loc4_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  this.§6!%§.splice(0,_loc2_);
                  this.§#!8§.splice(0,_loc2_);
                  if(_loc4_)
                  {
                     this.§[x§.splice(0,_loc2_);
                     addr85:
                  }
                  else
                  {
                     addr97:
                     while(_loc3_ < this.§2P§)
                     {
                        this.§6!%§.push(0);
                        if(!_loc4_)
                        {
                           break;
                        }
                        this.§#!8§.push(0);
                        if(!_loc5_)
                        {
                           this.§[x§.push(0);
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        _loc3_++;
                        if(!(_loc4_ || _loc3_))
                        {
                           break;
                        }
                     }
                  }
               }
               else
               {
                  addr88:
                  if(this.§2P§ > this.§6!%§.length)
                  {
                     _loc3_ = this.§6!%§.length;
                     §§goto(addr97);
                  }
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr85);
      }
      
      public function get §`t§() : uint
      {
         return this.§2P§;
      }
      
      public function §^x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            if(_loc2_ || _loc2_)
            {
               §§push(this.§=s§);
               if(!_loc1_)
               {
                  §§push(1);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc1_ && this))
                     {
                        if(§§pop() >= this.§6!%§.length)
                        {
                           addr72:
                           §§push(0);
                           if(!_loc2_)
                           {
                           }
                        }
                        else
                        {
                           §§push(this.§=s§);
                           if(!_loc1_)
                           {
                              addr81:
                              §§push(§§pop() + 1);
                           }
                        }
                        §§goto(addr83);
                     }
                     addr83:
                     §§pop().§=s§ = §§pop();
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr81);
               }
               §§goto(addr83);
            }
            §§goto(addr72);
         }
         §§goto(addr83);
      }
      
      public function get(param1:b2Body) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§6!%§[this.§=s§] = param1.GetLinearVelocity().x;
            if(!_loc2_)
            {
               §§goto(addr54);
            }
            §§goto(addr69);
         }
         addr54:
         this.§#!8§[this.§=s§] = param1.GetLinearVelocity().y;
         if(!(_loc2_ && param1))
         {
            addr69:
            this.§[x§[this.§=s§] = param1.GetAngularVelocity();
         }
      }
      
      public function §30§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Math.abs(this.§!!$§(this.§6!%§)) < this.§78§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     addr44:
                     §§pop();
                     if(_loc2_)
                     {
                        §§push(Math.abs(this.§!!$§(this.§#!8§)) < this.§78§);
                        if(!(_loc1_ && _loc1_))
                        {
                           addr73:
                           if(§§pop())
                           {
                              §§pop();
                              if(!(_loc1_ && this))
                              {
                                 §§push(Math.abs(this.§!!$§(this.§[x§)) < this.§94§);
                                 if(!(_loc1_ && this))
                                 {
                                    addr109:
                                    if(§§pop())
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr117:
                                          §§push(false);
                                          if(_loc1_ && this)
                                          {
                                             §§goto(addr127);
                                          }
                                       }
                                       else
                                       {
                                          addr126:
                                          addr127:
                                          return §§pop();
                                          §§push(true);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr126);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr44);
         }
         §§goto(addr117);
      }
      
      public function §#!-§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(!_loc3_)
         {
            §§push(§9!=§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr83:
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr90:
                        §§push(1);
                        if(_loc4_ || _loc2_)
                        {
                        }
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr89);
            }
            addr89:
            if(§^e§ === _loc2_)
            {
               §§goto(addr90);
            }
            else
            {
               §§push(2);
            }
            addr103:
            switch(§§pop())
            {
               case 0:
                  this.§!!$§ = this.§,!C§;
                  if(_loc4_)
                  {
                     break;
                  }
                  addr49:
                  break;
               case 1:
               default:
                  this.§!!$§ = this.§2B§;
                  if(_loc4_ || param1)
                  {
                     §§goto(addr49);
                  }
            }
            return;
         }
         §§goto(addr83);
      }
      
      private function §2B§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(Number(§§pop() + param1[_loc3_]));
                     if(!(_loc4_ && param1))
                     {
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() - 1);
                           if(_loc5_)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 break;
                              }
                              addr87:
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr93);
                           }
                        }
                        continue;
                     }
                     §§push(§§pop() / param1.length);
                  }
                  addr93:
                  return §§pop();
               }
               §§goto(addr87);
            }
         }
      }
      
      private function §,!C§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               if(param1[_loc3_] > _loc2_)
               {
                  if(_loc4_)
                  {
                     addr81:
                     break;
                  }
                  §§push(Number(param1[_loc3_]));
                  if(_loc4_ && param1)
                  {
                     return §§pop();
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     addr68:
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - 1);
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               §§goto(addr68);
            }
            §§goto(addr81);
         }
      }
   }
}
