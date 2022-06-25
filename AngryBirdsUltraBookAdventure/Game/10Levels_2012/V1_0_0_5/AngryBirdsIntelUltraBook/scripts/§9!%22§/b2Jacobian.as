package §9!"§
{
   import §>H§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §@"§:b2Vec2;
      
      public var §<#§:Number;
      
      public var §7!A§:b2Vec2;
      
      public var §?!8§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@"§ = new b2Vec2();
            do
            {
               this.§7!A§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §`!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§@"§.§`!5§();
            loop0:
            while(true)
            {
               this.§<#§ = 0;
               while(true)
               {
                  this.§7!A§.§`!5§();
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§?!8§ = 0;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§@"§.SetV(param1);
            while(true)
            {
               this.§<#§ = param2;
               loop1:
               while(!(_loc5_ && param3))
               {
                  while(true)
                  {
                     this.§7!A§.SetV(param3);
                     while(!_loc5_)
                     {
                        this.§?!8§ = param4;
                        if(_loc6_ || param2)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §8!^§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§@"§.x);
         if(!(_loc5_ && this))
         {
            §§push(param1.x);
            if(_loc6_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(this.§@"§.y);
                  if(_loc6_ || param3)
                  {
                     §§push(param1.y);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr64:
                              §§push(this.§<#§);
                              if(!(_loc5_ && param3))
                              {
                                 §§push(param2);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param3))
                                    {
                                       addr99:
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || param3)
                                       {
                                          addr107:
                                          §§push(this.§7!A§.x);
                                          if(_loc6_)
                                          {
                                             §§push(param3.x);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr116);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr166);
                                 }
                                 addr116:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr119:
                                    §§push(this.§7!A§.y);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * param3.y);
                                       if(_loc6_ || param2)
                                       {
                                          addr144:
                                          §§push(§§pop() + §§pop());
                                          if(_loc6_)
                                          {
                                             §§goto(addr147);
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 addr147:
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || param1)
                                 {
                                    addr155:
                                    §§push(this.§?!8§);
                                    if(_loc6_ || this)
                                    {
                                       addr166:
                                       §§push(§§pop() + §§pop() * param4);
                                    }
                                    §§goto(addr166);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr119);
               }
               §§goto(addr64);
            }
            §§goto(addr99);
         }
         §§goto(addr107);
      }
   }
}
