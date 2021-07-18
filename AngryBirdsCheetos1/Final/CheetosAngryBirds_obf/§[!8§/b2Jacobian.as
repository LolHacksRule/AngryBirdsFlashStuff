package §[!8§
{
   import §0!G§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §<%§:b2Vec2;
      
      public var §@<§:Number;
      
      public var §#'§:b2Vec2;
      
      public var §&!O§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§<%§ = new b2Vec2();
            do
            {
               this.§#'§ = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc1_ && this);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §3a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<%§.§3a§();
         }
         loop0:
         while(true)
         {
            this.§@<§ = 0;
            while(true)
            {
               this.§#'§.§3a§();
               while(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     this.§&!O§ = 0;
                     if(_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§<%§.SetV(param1);
            loop0:
            do
            {
               this.§@<§ = param2;
               while(true)
               {
                  this.§#'§.SetV(param3);
                  while(_loc6_)
                  {
                     this.§&!O§ = param4;
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc6_);
            
         }
      }
      
      public function §,I§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§<%§.x);
         if(!(_loc6_ && param3))
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(this.§<%§.y);
                  if(_loc5_ || this)
                  {
                     §§push(param1.y);
                     if(_loc5_ || param3)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              addr63:
                              §§push(this.§@<§);
                              if(_loc5_ || this)
                              {
                                 addr82:
                                 §§push(param2);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       addr93:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          addr96:
                                          §§push(this.§#'§.x);
                                          if(_loc5_)
                                          {
                                             §§push(param3.x);
                                             if(!(_loc6_ && param2))
                                             {
                                                addr110:
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_)
                                                {
                                                   addr113:
                                                   §§push(this.§#'§.y);
                                                   if(_loc5_ || param2)
                                                   {
                                                      addr123:
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc5_)
                                                      {
                                                         addr128:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr155);
                                                      }
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr128);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr96);
                        }
                        addr136:
                        §§push(§§pop() + §§pop());
                        if(_loc5_)
                        {
                           addr149:
                           §§push(this.§&!O§);
                           if(_loc5_)
                           {
                              addr155:
                              §§push(§§pop() + §§pop() * param4);
                           }
                           §§goto(addr155);
                        }
                        return §§pop();
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr93);
               }
               §§goto(addr149);
            }
            §§goto(addr82);
         }
         §§goto(addr63);
      }
   }
}
