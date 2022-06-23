package §8u§
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §0a§
   {
      
      public static const §1t§:String = "max";
      
      public static const §^o§:String = "average";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1t§ = "max";
            if(!(_loc1_ && _loc1_))
            {
               addr44:
               §^o§ = "average";
            }
            return;
         }
         §§goto(addr44);
      }
      
      private var §#!A§:Number;
      
      private var §2!!§:uint;
      
      private var § !3§:Number;
      
      private var §%<§:Number;
      
      private var §^!3§:Vector.<Number>;
      
      private var §'! §:Vector.<Number>;
      
      private var §`>§:Vector.<Number>;
      
      private var §0N§:int = 0;
      
      private var §]!-§:Function;
      
      public function §0a§(param1:Number = 5, param2:uint = 10)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(!(_loc4_ && this))
         {
            this.§^!3§ = new Vector.<Number>();
         }
         this.§'! § = new Vector.<Number>();
         this.§`>§ = new Vector.<Number>();
         this.§ w§ = param2;
         this.limitMultiplier = param1;
         this.§]!-§ = this.§@2§;
      }
      
      public function set limitMultiplier(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#!A§ = param1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr53);
            }
            §§goto(addr69);
         }
         addr53:
         §§push(this);
         §§push(b2Settings.b2_linearSleepTolerance);
         if(!(_loc3_ && this))
         {
            §§push(§§pop() * this.§#!A§);
         }
         §§pop().§ !3§ = §§pop();
         if(!_loc3_)
         {
            addr69:
            §§push(this);
            §§push(b2Settings.b2_angularSleepTolerance);
            if(_loc2_)
            {
               §§push(§§pop() * this.§#!A§);
            }
            §§pop().§%<§ = §§pop();
         }
      }
      
      public function get limitMultiplier() : Number
      {
         return this.§#!A§;
      }
      
      public function set § w§(param1:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            this.§2!!§ = param1;
            if(!(_loc4_ && param1))
            {
               §§push(this.§2!!§);
               if(_loc5_)
               {
                  if(§§pop() < this.§^!3§.length)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§push(this.§^!3§.length - this.§2!!§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           addr75:
                           this.§^!3§.splice(0,_loc2_);
                           this.§'! §.splice(0,_loc2_);
                           addr85:
                           this.§`>§.splice(0,_loc2_);
                           if(_loc4_ && this)
                           {
                              addr106:
                              _loc3_ = this.§^!3§.length;
                              for(; _loc3_ < this.§2!!§; _loc3_++,if(_loc4_)
                              {
                                 break;
                              })
                              {
                                 this.§^!3§.push(0);
                                 if(!(_loc4_ && this))
                                 {
                                    this.§'! §.push(0);
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                                 this.§`>§.push(0);
                                 if(_loc4_ && param1)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr75);
                  }
                  else
                  {
                     addr100:
                     if(this.§2!!§ > this.§^!3§.length)
                     {
                        if(_loc4_)
                        {
                        }
                        §§goto(addr106);
                     }
                  }
                  return;
               }
               §§goto(addr100);
            }
         }
         §§goto(addr75);
      }
      
      public function get § w§() : uint
      {
         return this.§2!!§;
      }
      
      public function §-O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(this.§0N§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(1);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_)
                     {
                        if(§§pop() >= this.§^!3§.length)
                        {
                           addr66:
                           §§push(0);
                           if(!(_loc1_ || this))
                           {
                              addr84:
                              §§push(int(§§pop() + 1));
                           }
                        }
                        else
                        {
                           §§push(this.§0N§);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr84);
                           }
                        }
                        §§pop().§0N§ = §§pop();
                        §§goto(addr88);
                     }
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr66);
         }
         addr88:
      }
      
      public function §[!>§(param1:b2Body) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!3§[this.§0N§] = param1.GetLinearVelocity().x;
            if(_loc2_)
            {
               this.§'! §[this.§0N§] = param1.GetLinearVelocity().y;
               if(!_loc3_)
               {
                  addr48:
                  this.§`>§[this.§0N§] = param1.GetAngularVelocity();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §#[§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Math.abs(this.§]!-§(this.§^!3§)) < this.§ !3§);
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        addr71:
                        §§push(Math.abs(this.§]!-§(this.§'! §)) < this.§ !3§);
                        if(Math.abs(this.§]!-§(this.§'! §)) < this.§ !3§)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 addr92:
                                 if(Math.abs(this.§]!-§(this.§`>§)) < this.§%<§)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§goto(addr96);
                                    }
                                 }
                              }
                              return true;
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr92);
                     }
                     addr96:
                     return false;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §!s§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || _loc3_)
         {
            §§push(§1t§);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr104:
                        §§push(1);
                        if(_loc4_ && param1)
                        {
                        }
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     addr102:
                     §§push(§^o§);
                     §§push(_loc2_);
                  }
                  §§goto(addr104);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr104);
               }
               else
               {
                  §§push(2);
               }
               addr117:
               switch(§§pop())
               {
                  case 0:
                     this.§]!-§ = this.§0!3§;
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     break;
                  case 1:
                  default:
                     this.§]!-§ = this.§@2§;
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr104);
      }
      
      private function §@2§(param1:Vector.<Number>) : Number
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
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop() + param1[_loc3_]));
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(_loc3_);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc4_ && param1))
                           {
                              _loc3_ = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 break;
                              }
                              addr92:
                              §§push(_loc2_);
                              if(_loc4_ && this)
                              {
                              }
                              §§goto(addr103);
                           }
                        }
                        continue;
                     }
                     §§push(§§pop() / param1.length);
                  }
                  addr103:
                  return §§pop();
               }
               §§goto(addr92);
            }
         }
      }
      
      private function §0!3§(param1:Vector.<Number>) : Number
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
                  if(_loc5_ || _loc2_)
                  {
                     §§push(Number(param1[_loc3_]));
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        addr68:
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc5_ || _loc2_))
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
                     addr91:
                  }
                  continue loop0;
               }
               §§goto(addr68);
            }
            §§goto(addr91);
         }
      }
   }
}
