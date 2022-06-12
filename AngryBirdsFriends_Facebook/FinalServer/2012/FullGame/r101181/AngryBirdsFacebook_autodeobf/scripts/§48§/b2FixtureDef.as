package §48§
{
   import §<!`§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §6"&§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §9!V§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.filter = new b2FilterData();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  loop2:
                  while(true)
                  {
                     this.§6"&§ = null;
                     loop3:
                     while(true)
                     {
                        this.friction = 0.2;
                        while(true)
                        {
                           this.restitution = 0;
                           continue loop3;
                           addr103:
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           §§push(this.filter);
                           loop10:
                           for(; _loc2_; while(true)
                           {
                              §§push(this.filter);
                              if(_loc1_)
                              {
                                 continue loop10;
                              }
                              §§push(0);
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    §§pop().§^]§ = §§pop();
                                    while(!(_loc1_ && _loc1_))
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr76:
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                this.§9!V§ = false;
                                                if(_loc2_ || _loc1_)
                                                {
                                                   return;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          addr115:
                                          while(true)
                                          {
                                             §§push(this.filter);
                                             break loop10;
                                             §§goto(addr76);
                                          }
                                       }
                                       while(_loc2_)
                                       {
                                          §§goto(addr103);
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr93);
                                 }
                                 while(true)
                                 {
                                    §§pop().§>!t§ = §§pop();
                                    §§goto(addr101);
                                 }
                                 addr100:
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                              §§goto(addr93);
                           })
                           {
                              §§push(65535);
                              while(true)
                              {
                                 §§pop().§"R§ = §§pop();
                                 addr93:
                                 while(_loc2_)
                                 {
                                    continue loop10;
                                 }
                                 continue loop2;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr100);
                           }
                        }
                     }
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.density = 0;
               §§goto(addr115);
            }
         }
         §§goto(addr95);
      }
   }
}
