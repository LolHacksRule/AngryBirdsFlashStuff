package §@L§
{
   public class §'!+§
   {
      
      private static const §@,§:Number = 1.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §@,§ = 1;
         }
      }
      
      private var §>3§:Number = 1.0;
      
      private var §0u§:Number = 0.0;
      
      private var §9n§:Number = 0.0;
      
      private var §<^§:Number = 0.0;
      
      private var §+!o§:Number = 0.0;
      
      private var §"!_§:Number = 1.0;
      
      public function §'!+§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§>3§ = param4;
               §§goto(addr93);
            }
         }
         addr93:
         while(true)
         {
            this.§0u§ = param2;
            do
            {
               this.§9n§ = param1;
               do
               {
                  this.§<^§ = param3;
                  do
                  {
                     this.update(0);
                  }
                  while(_loc5_ && param2);
                  
               }
               while(_loc5_ && param3);
               
            }
            while(_loc5_);
            
            if(_loc6_)
            {
               if(_loc6_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get speed() : Number
      {
         return this.§"!_§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§+!o§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§+!o§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§+!o§);
               loop1:
               while(true)
               {
                  §§push(this.§9n§);
                  loop2:
                  while(§§pop() >= §§pop())
                  {
                     §§push(this.§+!o§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§9n§);
                        addr237:
                        while(!(_loc3_ && _loc2_))
                        {
                           §§push(this.§0u§);
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr247:
                              while(§§pop() >= §§pop())
                              {
                                 §§push(this.§+!o§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 addr225:
                                 §§push(Number(§§pop()));
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 _loc2_ = §§pop();
                                 §§push(this);
                                 §§push(this.§>3§);
                                 if(!_loc3_)
                                 {
                                    §§push(§@,§);
                                    if(_loc4_ || this)
                                    {
                                       §§push(this.§>3§);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc4_ || this)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr114:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr119:
                                                   §§push(§§pop() / this.§<^§);
                                                }
                                                §§pop().§"!_§ = §§pop() + §§pop();
                                                if(_loc4_)
                                                {
                                                   §§goto(addr22);
                                                }
                                                break;
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr114);
                              }
                              this.§"!_§ = this.§>3§;
                              addr252:
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              §§goto(addr22);
                           }
                        }
                        continue loop2;
                     }
                  }
                  §§push(this);
                  §§push(§@,§);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(this.§>3§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§@,§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc4_)
                        {
                           §§push(this.§+!o§);
                           if(_loc4_)
                           {
                              addr295:
                              §§push(§§pop() * §§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(this.§9n§);
                              }
                              §§push(§§pop() + §§pop());
                              continue loop0;
                           }
                        }
                        §§goto(addr295);
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§goto(addr295);
               }
            }
         }
         addr22:
         §§push(true);
         if(_loc4_ || param1)
         {
            return §§pop();
         }
         addr36:
         return §§pop();
      }
   }
}
