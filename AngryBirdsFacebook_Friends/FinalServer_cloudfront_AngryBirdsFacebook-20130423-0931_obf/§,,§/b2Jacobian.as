package §,,§
{
   import §6!^§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §`5§:b2Vec2;
      
      public var §,"N§:Number;
      
      public var §7"M§:b2Vec2;
      
      public var §;!M§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`5§ = new b2Vec2();
            while(true)
            {
               this.§7"M§ = new b2Vec2();
               while(_loc1_)
               {
                  super();
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §%y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`5§.§%y§();
            loop0:
            do
            {
               this.§,"N§ = 0;
               while(true)
               {
                  this.§7"M§.§%y§();
                  while(_loc1_)
                  {
                     this.§;!M§ = 0;
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§`5§.SetV(param1);
            loop0:
            while(true)
            {
               this.§,"N§ = param2;
               loop1:
               do
               {
                  this.§7"M§.SetV(param3);
                  while(!_loc6_)
                  {
                     this.§;!M§ = param4;
                     if(_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc6_);
               
            }
         }
      }
      
      public function §5!m§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§`5§.x);
         if(_loc6_)
         {
            §§push(param1.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || this)
               {
                  §§push(this.§`5§.y);
                  if(_loc6_)
                  {
                     addr44:
                     §§push(param1.y);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_ || param2)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr74:
                              §§push(this.§,"N§);
                              if(_loc6_)
                              {
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr89);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr149);
                              }
                              addr89:
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 addr92:
                                 §§push(this.§7"M§.x);
                                 if(!_loc5_)
                                 {
                                    addr97:
                                    §§push(param3.x);
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(this.§7"M§.y);
                                          if(_loc5_)
                                          {
                                          }
                                          addr129:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr137);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§push(§§pop() * param3.y);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr129);
                                    }
                                    §§goto(addr149);
                                 }
                                 addr137:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                 }
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr149);
               }
               addr152:
               §§push(this.§;!M§);
               if(_loc6_ || param2)
               {
                  addr149:
                  §§push(§§pop() * param4);
               }
               return §§pop() + §§pop();
            }
            §§goto(addr44);
         }
         §§goto(addr74);
      }
   }
}
