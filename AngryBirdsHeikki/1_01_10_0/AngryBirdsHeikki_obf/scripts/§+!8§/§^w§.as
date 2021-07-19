package §+!8§
{
   import §3!R§.b2Body;
   import §^P§.b2Settings;
   
   public class §^w§
   {
      
      public static const §&!!§:String = "max";
      
      public static const §,"§:String = "average";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!!§ = "max";
         }
         do
         {
            §,"§ = "average";
         }
         while(_loc2_ && §^w§);
         
      }
      
      private var §+! §:Number;
      
      private var §`p§:uint;
      
      private var §;G§:Number;
      
      private var §?!C§:Number;
      
      private var §9!?§:Vector.<Number>;
      
      private var §+-§:Vector.<Number>;
      
      private var §5T§:Vector.<Number>;
      
      private var §3!W§:int = 0;
      
      private var §&!N§:Function;
      
      public function §^w§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§9!?§ = new Vector.<Number>();
               addr61:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               this.§&!N§ = this.§9_§;
               addr68:
               if(_loc3_)
               {
                  addr30:
                  if(_loc3_)
                  {
                     addr32:
                     if(!(_loc3_ || param1))
                     {
                        while(!_loc4_)
                        {
                           this.§5T§ = new Vector.<Number>();
                           while(true)
                           {
                              this.§!!>§ = param2;
                              while(true)
                              {
                                 this.limitMultiplier = param1;
                                 addr44:
                                 while(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr61);
                                    §§goto(addr68);
                                 }
                              }
                              §§goto(addr30);
                           }
                           §§goto(addr32);
                        }
                        while(true)
                        {
                           this.§+-§ = new Vector.<Number>();
                           §§goto(addr89);
                        }
                        addr89:
                        addr109:
                     }
                     return;
                  }
                  §§goto(addr81);
               }
               §§goto(addr44);
            }
         }
         §§goto(addr109);
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+! § = param1;
            while(true)
            {
               §§push(this);
               §§push(b2Settings.b2_linearSleepTolerance);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§+! §);
               }
               §§pop().§;G§ = §§pop();
               while(!_loc3_)
               {
                  §§push(this);
                  §§push(b2Settings.b2_angularSleepTolerance);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() * this.§+! §);
                  }
                  §§pop().§?!C§ = §§pop();
                  if(!_loc3_)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§+! §;
      }
      
      public function set §!!>§(param1:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(!(_loc5_ && _loc3_))
         {
            this.§`p§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§`p§);
               loop1:
               while(§§pop() >= this.§9!?§.length)
               {
                  §§push(this.§`p§);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() > this.§9!?§.length)
                     {
                        if(!(_loc5_ && this))
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§5T§.splice(0,_loc2_);
                                          addr122:
                                          while(!(_loc4_ || this))
                                          {
                                             break loop1;
                                          }
                                          break loop0;
                                       }
                                    }
                                    loop3:
                                    while(_loc5_)
                                    {
                                       while(true)
                                       {
                                          this.§9!?§.splice(0,_loc2_);
                                          continue loop3;
                                       }
                                    }
                                    this.§+-§.splice(0,_loc2_);
                                 }
                                 continue loop0;
                              }
                              _loc3_ = this.§9!?§.length;
                              addr28:
                              if(_loc3_ >= this.§`p§)
                              {
                                 if(!_loc4_)
                                 {
                                    addr41:
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr28);
                                          }
                                          this.§+-§.push(0);
                                          addr67:
                                       }
                                       this.§5T§.push(0);
                                    }
                                    _loc3_++;
                                    §§goto(addr41);
                                 }
                                 break loop0;
                              }
                              this.§9!?§.push(0);
                              §§goto(addr67);
                              addr115:
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr115);
                     }
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(this.§9!?§.length - this.§`p§);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  §§goto(addr182);
               }
            }
            return;
         }
         §§goto(addr145);
      }
      
      public function get §!!>§() : uint
      {
         return this.§`p§;
      }
      
      public function §;B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.§3!W§);
               if(_loc1_ || _loc1_)
               {
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc2_ && this))
                     {
                        if(§§pop() >= this.§9!?§.length)
                        {
                           addr56:
                           §§push(0);
                           if(!_loc1_)
                           {
                           }
                        }
                        else
                        {
                           §§push(this.§3!W§);
                           if(_loc1_ || _loc1_)
                           {
                              addr80:
                              §§push(§§pop() + 1);
                           }
                        }
                        §§goto(addr82);
                     }
                     addr82:
                     §§pop().§3!W§ = §§pop();
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr80);
               }
               §§goto(addr82);
            }
            §§goto(addr56);
         }
         §§goto(addr82);
      }
      
      public function § !U§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!?§[this.§3!W§] = param1.GetLinearVelocity().x;
         }
         do
         {
            this.§+-§[this.§3!W§] = param1.GetLinearVelocity().y;
            do
            {
               this.§5T§[this.§3!W§] = param1.§4^§();
            }
            while(!(_loc2_ || _loc3_));
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §<!=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Math.abs(this.§&!N§(this.§9!?§)) < this.§;G§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc1_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(Math.abs(this.§&!N§(this.§5T§)) < this.§?!C§);
                                    addr50:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(_loc1_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop0;
                                    addr71:
                                    if(_loc1_ || this)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          §§goto(addr86);
                                       }
                                       break loop6;
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    break loop6;
                                 }
                                 addr135:
                              }
                           }
                           while(true)
                           {
                              §§push(Math.abs(this.§&!N§(this.§+-§)) < this.§;G§);
                              continue loop0;
                           }
                        }
                        loop9:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr71);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr19:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc2_ && _loc1_)
                                       {
                                          break loop9;
                                       }
                                       §§goto(addr28);
                                    }
                                 }
                                 addr87:
                              }
                              §§goto(addr50);
                           }
                           §§goto(addr19);
                        }
                        addr86:
                        return false;
                     }
                     continue;
                     addr105:
                  }
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §8i§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_)
         {
            §§push(§&!!§);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        addr63:
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr88:
                        }
                     }
                     else
                     {
                        addr70:
                        §§push(1);
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr93);
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr69);
            }
            addr69:
            if(§,"§ === _loc2_)
            {
               §§goto(addr70);
            }
            else
            {
               §§push(2);
            }
            addr93:
            switch(§§pop())
            {
               case 0:
                  this.§&!N§ = this.§3!T§;
                  if(!_loc3_)
                  {
                     break;
                  }
                  break;
               case 1:
               default:
                  this.§&!N§ = this.§9_§;
                  if(_loc4_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr63);
      }
      
      private function §9_§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        if(_loc5_ || this)
                        {
                           addr62:
                           §§push(§§pop() / param1.length);
                           if(!_loc4_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr99:
                           §§push(Number(§§pop() + param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || param1)
                           {
                              addr77:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                              addr77:
                           }
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr78);
               }
               else
               {
                  §§push(_loc2_);
               }
               §§goto(addr99);
            }
            §§goto(addr77);
         }
         return §§pop();
      }
      
      private function §3!T§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:* = int(param1.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && this))
            {
               if(!_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     if(!(_loc4_ && this))
                     {
                        if(!(_loc4_ && this))
                        {
                           §§push(_loc2_);
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr103:
                           §§push(Number(param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                     }
                  }
                  else if(param1[_loc3_] > _loc2_)
                  {
                     §§goto(addr103);
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
