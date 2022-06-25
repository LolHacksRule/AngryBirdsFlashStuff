package §&p§
{
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §8>§ extends §,K§
   {
      
      public static const §9!#§:Number = 1024;
      
      public static const §0i§:Number = 658;
      
      public static const §=R§:Number = 55;
      
      public static const §@[§:String = "cubic_in_out";
      
      public static const §@!3§:String = "sin_in_out";
      
      public static const §<Q§:String = "none";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!#§ = 1024;
            if(_loc2_ || _loc1_)
            {
               §0i§ = 658;
               if(_loc2_)
               {
                  §=R§ = 55;
                  §@[§ = "cubic_in_out";
                  §@!3§ = "sin_in_out";
               }
            }
         }
      }
      
      private var §3-§:String;
      
      private var §-`§:Number;
      
      private var §4J§:Number;
      
      private var §[s§:Number;
      
      private var §8!&§:Number;
      
      private var §]H§:Boolean = true;
      
      private var §<"§:String = "cubic_in_out";
      
      public function §8>§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            if(!_loc7_)
            {
               this.§3-§ = param3;
               if(!(_loc7_ && param3))
               {
                  this.§-`§ = param4;
                  if(_loc8_)
                  {
                     this.§4J§ = param5;
                     if(!_loc8_)
                     {
                     }
                  }
               }
               §§goto(addr58);
            }
            this.§<"§ = param6;
         }
         addr58:
      }
      
      public function set §5?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]H§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && param2))
                     {
                        param1 = §§pop();
                        if(_loc5_)
                        {
                        }
                        addr70:
                        if(_loc4_ = param2.getChildByName(this.§3-§))
                        {
                           if(_loc6_ || param1)
                           {
                              if(_loc4_.name == §=?§.§!!-§)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    if(this.§]H§)
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§?!C§());
                                       if(!_loc5_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() * this.§4H§(param1));
                                          }
                                       }
                                       §§pop().x = §§pop();
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§?!C§());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * this.§4H§(param1));
                                       }
                                       §§pop().y = §§pop();
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.x);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() - this.§-`§);
                                 }
                                 §§pop().x = §§pop();
                                 if(!(_loc5_ && param3))
                                 {
                                    §§push(_loc4_);
                                    §§push(_loc4_.y);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - this.§4J§);
                                    }
                                    §§pop().y = §§pop();
                                    addr175:
                                    if(param1 >= this.time + duration)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(false);
                                          if(_loc6_ || this)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr197:
                                          §§push(true);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr175);
                           }
                        }
                        §§goto(addr175);
                     }
                     addr65:
                     if(§§pop() > this.time)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr70);
               }
               §§push(param1);
               if(_loc6_ || param3)
               {
                  §§goto(addr65);
               }
               §§goto(addr175);
            }
            §§goto(addr65);
         }
         §§goto(addr70);
      }
      
      private function §4H§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               addr29:
               §§push(§§pop() / duration);
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§<"§;
            if(!_loc5_)
            {
               §§push(§@[§);
               if(!(_loc5_ && this))
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           addr174:
                           §§push(0);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr181:
                           §§push(1);
                           if(_loc5_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr194);
                     }
                     else
                     {
                        §§goto(addr180);
                     }
                  }
                  §§goto(addr180);
               }
               addr180:
               if(§@!3§ === _loc3_)
               {
                  §§goto(addr181);
               }
               else
               {
                  §§push(2);
               }
               addr194:
               switch(§§pop())
               {
                  case 0:
                     §§push(_loc2_);
                     §§push(2);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           _loc2_ = Number(§§pop());
                           §§push(_loc2_);
                           §§push(1);
                           if(_loc4_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(Math.pow(_loc2_,3) / 2);
                                    if(_loc4_ || this)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr79:
                                    §§push(_loc2_);
                                    §§push(2);
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr98:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc4_ || param1))
                                       {
                                          break;
                                       }
                                       _loc2_ = Number(§§pop());
                                       return (Math.pow(_loc2_,3) + 2) / 2;
                                    }
                                    else
                                    {
                                       §§goto(addr134);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr79);
                           }
                        }
                        else
                        {
                           addr133:
                           §§push(2);
                        }
                        addr134:
                        return §§pop() / §§pop();
                     }
                     §§goto(addr98);
                  case 1:
                     §§push(Math.cos(Math.PI * _loc2_) - 1);
                     if(!(_loc5_ && this))
                     {
                        §§push(-§§pop());
                     }
                     §§goto(addr133);
               }
               return _loc2_;
            }
            §§goto(addr174);
         }
         §§goto(addr29);
      }
      
      protected function §?!C§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]H§)
            {
               if(!_loc2_)
               {
                  addr33:
                  §§push(this.§[s§);
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr68);
               }
               else
               {
                  addr69:
                  §§push(this.§8!&§);
                  if(!_loc2_)
                  {
                     §§goto(addr73);
                  }
               }
               addr75:
               §§push(§9!#§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc1_ || this)
                  {
                     addr68:
                     return §§pop();
                  }
                  addr73:
                  §§push(§0i§);
               }
               return §§pop() - §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr33);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[s§ = param1;
            if(!_loc4_)
            {
               this.§8!&§ = param2;
            }
         }
      }
      
      override public function clone() : §,K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8>§ = new §8>§(time,duration,this.§3-§,this.§-`§,this.§4J§,this.§<"§);
         if(_loc2_)
         {
            _loc1_.§[s§ = this.§[s§;
            if(!(_loc3_ && this))
            {
               _loc1_.§8!&§ = this.§8!&§;
               if(_loc2_)
               {
                  addr69:
                  _loc1_.§]H§ = this.§]H§;
               }
               return _loc1_;
            }
         }
         §§goto(addr69);
      }
   }
}
