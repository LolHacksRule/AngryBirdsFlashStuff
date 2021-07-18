package §-!&§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §^U§
   {
      
      public static const §`!7§:String = "max";
      
      public static const §&3§:String = "average";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §^U§))
         {
            §`!7§ = "max";
            do
            {
               §&3§ = "average";
            }
            while(!_loc1_);
            
         }
      }
      
      private var §<h§:Number;
      
      private var §8!1§:uint;
      
      private var §,!>§:Number;
      
      private var §?X§:Number;
      
      private var §2`§:Vector.<Number>;
      
      private var §]"§:Vector.<Number>;
      
      private var §45§:Vector.<Number>;
      
      private var §2j§:int = 0;
      
      private var §#!4§:Function;
      
      public function §^U§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            this.§2`§ = new Vector.<Number>();
            this.§]"§ = new Vector.<Number>();
         }
         this.§45§ = new Vector.<Number>();
         do
         {
            this.§7!G§ = param2;
            this.limitMultiplier = param1;
            do
            {
               this.§#!4§ = this.§]@§;
            }
            while(!_loc4_);
            
         }
         while(_loc3_);
         
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§<h§ = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() * this.§<h§);
               }
               §§pop().§,!>§ = §§pop();
               while(!_loc3_)
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(_loc2_)
                  {
                     §§push(§§pop() * this.§<h§);
                  }
                  §§pop().§?X§ = §§pop();
                  if(_loc2_ || param1)
                  {
                     return;
                     addr65:
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§<h§;
      }
      
      public function set §7!G§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(_loc4_ || _loc2_)
         {
            this.§8!1§ = param1;
            §§push(this.§8!1§);
            while(§§pop() >= this.§2`§.length)
            {
               §§push(this.§8!1§);
               if(!_loc5_)
               {
                  if(§§pop() > this.§2`§.length)
                  {
                     if(!_loc5_)
                     {
                        _loc3_ = this.§2`§.length;
                     }
                     if(_loc5_ && _loc2_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc3_ >= this.§8!1§)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    this.§45§.push(0);
                                    addr87:
                                    while(true)
                                    {
                                       this.§]"§.push(0);
                                       continue loop2;
                                    }
                                 }
                              }
                              while(!(_loc4_ || this))
                              {
                              }
                              _loc3_++;
                           }
                           continue;
                        }
                        this.§2`§.push(0);
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr44);
               }
            }
         }
         §§push(this.§2`§.length - this.§8!1§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         _loc2_ = §§pop();
         this.§2`§.splice(0,_loc2_);
         this.§]"§.splice(0,_loc2_);
         this.§45§.splice(0,_loc2_);
         addr44:
      }
      
      public function get §7!G§() : uint
      {
         return this.§8!1§;
      }
      
      public function §9!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§2j§);
               if(!_loc2_)
               {
                  §§push(1);
                  if(_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop() >= this.§2`§.length)
                        {
                           addr71:
                           §§push(0);
                           if(_loc2_)
                           {
                           }
                        }
                        else
                        {
                           §§push(this.§2j§);
                           if(_loc1_)
                           {
                              addr80:
                              §§push(§§pop() + 1);
                           }
                        }
                        §§goto(addr82);
                     }
                     addr82:
                     §§pop().§2j§ = §§pop();
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr80);
               }
               §§goto(addr82);
            }
            §§goto(addr71);
         }
         §§goto(addr82);
      }
      
      public function §-5§(param1:b2Body) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§2`§[this.§2j§] = param1.GetLinearVelocity().x;
            while(true)
            {
               this.§]"§[this.§2j§] = param1.GetLinearVelocity().y;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§45§[this.§2j§] = param1.GetAngularVelocity();
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
         §§goto(addr71);
      }
      
      public function §0n§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(Math.abs(this.§#!4§(this.§2`§)) < this.§,!>§);
            if(!_loc1_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr119:
                        while(true)
                        {
                           §§push(Math.abs(this.§#!4§(this.§]"§)) < this.§,!>§);
                        }
                     }
                     addr118:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr70);
      }
      
      public function §,n§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_ || _loc3_)
         {
            §§push(§`!7§);
            if(_loc4_ || param1)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        addr78:
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr93:
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(1);
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§goto(addr84);
                  }
               }
               §§goto(addr84);
            }
            addr84:
            if(§&3§ === _loc2_)
            {
               §§goto(addr85);
            }
            else
            {
               §§push(2);
            }
            addr98:
            switch(§§pop())
            {
               case 0:
                  this.§#!4§ = this.§=q§;
                  if(_loc4_)
                  {
                     break;
                  }
                  addr34:
                  break;
               case 1:
               default:
                  this.§#!4§ = this.§]@§;
                  if(_loc4_)
                  {
                     §§goto(addr34);
                  }
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §]@§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:int = param1.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc2_);
                        if(!(_loc5_ && this))
                        {
                           if(_loc4_ || this)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() / param1.length);
                                 break;
                              }
                              addr103:
                              §§push(Number(§§pop() + param1[_loc3_]));
                           }
                           _loc2_ = §§pop();
                           addr98:
                           _loc3_--;
                           addr97:
                           continue;
                           addr109:
                        }
                        break;
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr103);
               }
               §§goto(addr97);
            }
            §§goto(addr98);
         }
         return §§pop();
      }
      
      private function §=q§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc2_))
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(_loc4_ || _loc2_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr92:
                           §§push(Number(param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                     }
                  }
                  else if(param1[_loc3_] > _loc2_)
                  {
                     §§goto(addr92);
                  }
                  §§push(_loc3_);
               }
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return §§pop();
      }
   }
}
