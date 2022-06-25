package §=I§
{
   import §=`§.§6!I§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §`!N§ extends §?!t§
   {
       
      
      private var §]X§:String = "";
      
      private var §3L§:Number = 1.0;
      
      private var §&!P§:Number = 1.0;
      
      public function §`!N§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
         }
         while(true)
         {
            this.§]X§ = param3;
            while(_loc6_)
            {
               this.§3L§ = param4;
               do
               {
                  this.§&!P§ = param5;
               }
               while(_loc7_);
               
               if(_loc6_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && this))
                  {
                     addr42:
                     §§push(Number(this.time + duration));
                     if(!_loc5_)
                     {
                        addr49:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr52:
                           §§push(param1);
                           if(!(_loc5_ && this))
                           {
                              addr60:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    addr65:
                                    if(_loc4_ = param2.getChildByName(this.§]X§))
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§3L§);
                                          if(_loc6_ || param3)
                                          {
                                             §§push(this.§&!P§);
                                             if(_loc6_)
                                             {
                                                §§push(this.§3L§);
                                                if(_loc6_ || param3)
                                                {
                                                   addr115:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§]!Q§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr119:
                                                      §§push(_loc4_);
                                                      §§push(this.§3L§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§&!P§);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(this.§3L§);
                                                            if(!_loc5_)
                                                            {
                                                               addr154:
                                                               addr155:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§push(this.§]!Q§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr164:
                                                                     §§push(false);
                                                                     if(_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr168:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr164);
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr65);
               }
               §§goto(addr52);
            }
            §§goto(addr49);
         }
         §§goto(addr42);
      }
      
      private function §]!Q§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(duration <= 0)
            {
               if(!_loc3_)
               {
                  §§goto(addr24);
               }
            }
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - this.time);
               if(_loc4_ || this)
               {
                  §§push(§§pop() / duration);
                  if(_loc4_ || _loc2_)
                  {
                  }
                  addr54:
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     loop0:
                     while(true)
                     {
                        §§push(2);
                        addr157:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr160:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       while(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       return §§pop();
                                    }
                                    addr151:
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr145);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr54);
         }
         addr24:
         return 1;
      }
      
      override public function clone() : §?!t§
      {
         return new §`!N§(time,duration,this.§]X§,this.§3L§,this.§&!P§);
      }
   }
}
